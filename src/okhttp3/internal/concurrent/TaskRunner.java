package okhttp3.internal.concurrent;

import de.robv.android.xposed.callbacks.XCallback;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: loaded from: classes.dex */
public final class TaskRunner implements Lockable {
    public static final Companion Companion = new Companion(null);
    public static final TaskRunner INSTANCE;
    private static final Logger logger;
    private final Backend backend;
    private final List<TaskQueue> busyQueues;
    private boolean coordinatorWaiting;
    private long coordinatorWakeUpAt;
    private int executeCallCount;
    private final Logger logger$1;
    private int nextQueueName;
    private final List<TaskQueue> readyQueues;
    private int runCallCount;
    private final Runnable runnable;

    public interface Backend {
        void coordinatorNotify(TaskRunner taskRunner);

        void coordinatorWait(TaskRunner taskRunner, long j);

        <T> BlockingQueue<T> decorate(BlockingQueue<T> blockingQueue);

        void execute(TaskRunner taskRunner, Runnable runnable);

        long nanoTime();
    }

    public static final class RealBackend implements Backend {
        private final ThreadPoolExecutor executor;

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public <T> BlockingQueue<T> decorate(BlockingQueue<T> queue) {
            Intrinsics.checkNotNullParameter(queue, "queue");
            return queue;
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void coordinatorNotify(TaskRunner taskRunner) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            taskRunner.notify();
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void coordinatorWait(TaskRunner taskRunner, long j) throws InterruptedException {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(taskRunner)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + taskRunner);
            }
            if (j > 0) {
                long j2 = j / 1000000;
                long j3 = j - (1000000 * j2);
                if (j2 > 0 || j > 0) {
                    taskRunner.wait(j2, (int) j3);
                }
            }
        }

        public RealBackend(ThreadFactory threadFactory) {
            Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
            this.executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
        }

        public final ThreadPoolExecutor getExecutor() {
            return this.executor;
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public long nanoTime() {
            return System.nanoTime();
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void execute(TaskRunner taskRunner, Runnable runnable) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            this.executor.execute(runnable);
        }

        public final void shutdown() {
            this.executor.shutdown();
        }
    }

    public TaskRunner(Backend backend, Logger logger2) {
        Intrinsics.checkNotNullParameter(backend, "backend");
        Intrinsics.checkNotNullParameter(logger2, "logger");
        this.backend = backend;
        this.logger$1 = logger2;
        this.nextQueueName = XCallback.PRIORITY_HIGHEST;
        this.busyQueues = new ArrayList();
        this.readyQueues = new ArrayList();
        this.runnable = new Runnable() { // from class: okhttp3.internal.concurrent.TaskRunner$runnable$1
            @Override // java.lang.Runnable
            public void run() {
                Task taskAwaitTaskToRun;
                long jNanoTime;
                Task taskAwaitTaskToRun2;
                TaskRunner taskRunner = this.this$0;
                synchronized (taskRunner) {
                    taskRunner.runCallCount++;
                    taskAwaitTaskToRun = taskRunner.awaitTaskToRun();
                }
                if (taskAwaitTaskToRun == null) {
                    return;
                }
                Thread threadCurrentThread = Thread.currentThread();
                String name = threadCurrentThread.getName();
                while (true) {
                    try {
                        threadCurrentThread.setName(taskAwaitTaskToRun.getName());
                        Logger logger$okhttp = this.this$0.getLogger$okhttp();
                        TaskQueue queue$okhttp = taskAwaitTaskToRun.getQueue$okhttp();
                        Intrinsics.checkNotNull(queue$okhttp);
                        boolean zIsLoggable = logger$okhttp.isLoggable(Level.FINE);
                        if (zIsLoggable) {
                            jNanoTime = queue$okhttp.getTaskRunner$okhttp().getBackend().nanoTime();
                            TaskLoggerKt.log(logger$okhttp, taskAwaitTaskToRun, queue$okhttp, "starting");
                        } else {
                            jNanoTime = -1;
                        }
                        try {
                            long jRunOnce = taskAwaitTaskToRun.runOnce();
                            if (zIsLoggable) {
                                TaskLoggerKt.log(logger$okhttp, taskAwaitTaskToRun, queue$okhttp, "finished run in " + TaskLoggerKt.formatDuration(queue$okhttp.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime));
                            }
                            TaskRunner taskRunner2 = this.this$0;
                            synchronized (taskRunner2) {
                                taskRunner2.afterRun(taskAwaitTaskToRun, jRunOnce, true);
                                taskAwaitTaskToRun2 = taskRunner2.awaitTaskToRun();
                            }
                            if (taskAwaitTaskToRun2 == null) {
                                return;
                            } else {
                                taskAwaitTaskToRun = taskAwaitTaskToRun2;
                            }
                        } catch (Throwable th) {
                            if (zIsLoggable) {
                                TaskLoggerKt.log(logger$okhttp, taskAwaitTaskToRun, queue$okhttp, "failed a run in " + TaskLoggerKt.formatDuration(queue$okhttp.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime));
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        try {
                            TaskRunner taskRunner3 = this.this$0;
                            synchronized (taskRunner3) {
                                taskRunner3.afterRun(taskAwaitTaskToRun, -1L, false);
                                Unit unit = Unit.INSTANCE;
                                if (!(th2 instanceof InterruptedException)) {
                                    throw th2;
                                }
                                Thread.currentThread().interrupt();
                                return;
                            }
                        } finally {
                            threadCurrentThread.setName(name);
                        }
                    }
                }
            }
        };
    }

    public final Backend getBackend() {
        return this.backend;
    }

    public /* synthetic */ TaskRunner(Backend backend, Logger logger2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(backend, (i & 2) != 0 ? logger : logger2);
    }

    public final Logger getLogger$okhttp() {
        return this.logger$1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void afterRun(Task task, long j, boolean z) {
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        TaskQueue queue$okhttp = task.getQueue$okhttp();
        Intrinsics.checkNotNull(queue$okhttp);
        if (queue$okhttp.getActiveTask$okhttp() != task) {
            throw new IllegalStateException("Check failed.");
        }
        boolean cancelActiveTask$okhttp = queue$okhttp.getCancelActiveTask$okhttp();
        queue$okhttp.setCancelActiveTask$okhttp(false);
        queue$okhttp.setActiveTask$okhttp(null);
        this.busyQueues.remove(queue$okhttp);
        if (j != -1 && !cancelActiveTask$okhttp && !queue$okhttp.getShutdown$okhttp()) {
            queue$okhttp.scheduleAndDecide$okhttp(task, j, true);
        }
        if (queue$okhttp.getFutureTasks$okhttp().isEmpty()) {
            return;
        }
        this.readyQueues.add(queue$okhttp);
        if (z) {
            return;
        }
        startAnotherThread();
    }

    private final void beforeRun(Task task) {
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        task.setNextExecuteNanoTime$okhttp(-1L);
        TaskQueue queue$okhttp = task.getQueue$okhttp();
        Intrinsics.checkNotNull(queue$okhttp);
        queue$okhttp.getFutureTasks$okhttp().remove(task);
        this.readyQueues.remove(queue$okhttp);
        queue$okhttp.setActiveTask$okhttp(task);
        this.busyQueues.add(queue$okhttp);
    }

    private final void startAnotherThread() {
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        int i = this.executeCallCount;
        if (i > this.runCallCount) {
            return;
        }
        this.executeCallCount = i + 1;
        this.backend.execute(this, this.runnable);
    }

    public final Task awaitTaskToRun() {
        boolean z;
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        while (!this.readyQueues.isEmpty()) {
            long jNanoTime = this.backend.nanoTime();
            Iterator<TaskQueue> it = this.readyQueues.iterator();
            long jMin = Long.MAX_VALUE;
            Task task = null;
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                Task task2 = it.next().getFutureTasks$okhttp().get(0);
                long jMax = Math.max(0L, task2.getNextExecuteNanoTime$okhttp() - jNanoTime);
                if (jMax > 0) {
                    jMin = Math.min(jMax, jMin);
                } else {
                    if (task != null) {
                        z = true;
                        break;
                    }
                    task = task2;
                }
            }
            if (task != null) {
                beforeRun(task);
                if (z || (!this.coordinatorWaiting && !this.readyQueues.isEmpty())) {
                    startAnotherThread();
                }
                return task;
            }
            if (this.coordinatorWaiting) {
                if (jMin < this.coordinatorWakeUpAt - jNanoTime) {
                    this.backend.coordinatorNotify(this);
                }
                return null;
            }
            this.coordinatorWaiting = true;
            this.coordinatorWakeUpAt = jNanoTime + jMin;
            try {
                try {
                    this.backend.coordinatorWait(this, jMin);
                } catch (InterruptedException unused) {
                    cancelAll();
                }
            } finally {
                this.coordinatorWaiting = false;
            }
        }
        return null;
    }

    public final void cancelAll() {
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        int size = this.busyQueues.size();
        while (true) {
            size--;
            if (-1 >= size) {
                break;
            } else {
                this.busyQueues.get(size).cancelAllAndDecide$okhttp();
            }
        }
        for (int size2 = this.readyQueues.size() - 1; -1 < size2; size2--) {
            TaskQueue taskQueue = this.readyQueues.get(size2);
            taskQueue.cancelAllAndDecide$okhttp();
            if (taskQueue.getFutureTasks$okhttp().isEmpty()) {
                this.readyQueues.remove(size2);
            }
        }
    }

    public final void kickCoordinator$okhttp(TaskQueue taskQueue) {
        Intrinsics.checkNotNullParameter(taskQueue, "taskQueue");
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        if (taskQueue.getActiveTask$okhttp() == null) {
            if (!taskQueue.getFutureTasks$okhttp().isEmpty()) {
                _UtilCommonKt.addIfAbsent(this.readyQueues, taskQueue);
            } else {
                this.readyQueues.remove(taskQueue);
            }
        }
        if (this.coordinatorWaiting) {
            this.backend.coordinatorNotify(this);
        } else {
            startAnotherThread();
        }
    }

    public final List<TaskQueue> activeQueues() {
        List<TaskQueue> listPlus;
        synchronized (this) {
            listPlus = CollectionsKt.plus((Collection) this.busyQueues, (Iterable) this.readyQueues);
        }
        return listPlus;
    }

    public final TaskQueue newQueue() {
        int i;
        synchronized (this) {
            i = this.nextQueueName;
            this.nextQueueName = i + 1;
        }
        StringBuilder sb = new StringBuilder();
        sb.append('Q');
        sb.append(i);
        return new TaskQueue(this, sb.toString());
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Logger getLogger() {
            return TaskRunner.logger;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Logger logger2 = Logger.getLogger(TaskRunner.class.getName());
        Intrinsics.checkNotNullExpressionValue(logger2, "getLogger(...)");
        logger = logger2;
        INSTANCE = new TaskRunner(new RealBackend(_UtilJvmKt.threadFactory(_UtilJvmKt.okHttpName + " TaskRunner", true)), 0 == true ? 1 : 0, 2, 0 == true ? 1 : 0);
    }
}
