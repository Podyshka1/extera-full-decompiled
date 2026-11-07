package okhttp3.internal.concurrent;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticBUOutline1;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u00014B\u0019\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00132\b\b\u0002\u0010%\u001a\u00020&J&\u0010\"\u001a\u00020#2\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010%\u001a\u00020&2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020&0(J0\u0010)\u001a\u00020#2\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010%\u001a\u00020&2\b\b\u0002\u0010*\u001a\u00020\r2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020#0(J\u0006\u0010+\u001a\u00020,J%\u0010-\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u00132\u0006\u0010%\u001a\u00020&2\u0006\u0010.\u001a\u00020\rH\u0000¢\u0006\u0002\b/J\u0006\u00100\u001a\u00020#J\u0006\u0010\f\u001a\u00020#J\r\u00101\u001a\u00020\rH\u0000¢\u0006\u0002\b2J\b\u00103\u001a\u00020\u0005H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00130\u0019X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u000f\"\u0004\b\u001e\u0010\u0011R\u0017\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00130 8F¢\u0006\u0006\u001a\u0004\b!\u0010\u001b¨\u00065"}, d2 = {"Lokhttp3/internal/concurrent/TaskQueue;", _UrlKt.FRAGMENT_ENCODE_SET, "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "name", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lokhttp3/internal/concurrent/TaskRunner;Ljava/lang/String;)V", "getTaskRunner$okhttp", "()Lokhttp3/internal/concurrent/TaskRunner;", "getName$okhttp", "()Ljava/lang/String;", "shutdown", _UrlKt.FRAGMENT_ENCODE_SET, "getShutdown$okhttp", "()Z", "setShutdown$okhttp", "(Z)V", "activeTask", "Lokhttp3/internal/concurrent/Task;", "getActiveTask$okhttp", "()Lokhttp3/internal/concurrent/Task;", "setActiveTask$okhttp", "(Lokhttp3/internal/concurrent/Task;)V", "futureTasks", _UrlKt.FRAGMENT_ENCODE_SET, "getFutureTasks$okhttp", "()Ljava/util/List;", "cancelActiveTask", "getCancelActiveTask$okhttp", "setCancelActiveTask$okhttp", "scheduledTasks", _UrlKt.FRAGMENT_ENCODE_SET, "getScheduledTasks", "schedule", _UrlKt.FRAGMENT_ENCODE_SET, "task", "delayNanos", _UrlKt.FRAGMENT_ENCODE_SET, "block", "Lkotlin/Function0;", "execute", "cancelable", "idleLatch", "Ljava/util/concurrent/CountDownLatch;", "scheduleAndDecide", "recurrence", "scheduleAndDecide$okhttp", "cancelAll", "cancelAllAndDecide", "cancelAllAndDecide$okhttp", "toString", "AwaitIdleTask", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 3 TaskLogger.kt\nokhttp3/internal/concurrent/TaskLoggerKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,241:1\n63#2:242\n63#2:243\n63#2:252\n49#2,4:268\n63#2:272\n49#2,4:273\n63#2:277\n26#3,4:244\n26#3,4:248\n26#3,4:253\n26#3,4:257\n26#3,4:278\n360#4,7:261\n*S KotlinDebug\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n*L\n48#1:242\n64#1:243\n122#1:252\n202#1:268,4\n204#1:272\n212#1:273,4\n214#1:277\n67#1:244,4\n70#1:248,4\n173#1:253,4\n179#1:257,4\n231#1:278,4\n188#1:261,7\n*E\n"})
public final class TaskQueue {
    private Task activeTask;
    private boolean cancelActiveTask;
    private final List<Task> futureTasks = new ArrayList();
    private final String name;
    private boolean shutdown;
    private final TaskRunner taskRunner;

    public TaskQueue(TaskRunner taskRunner, String str) {
        this.taskRunner = taskRunner;
        this.name = str;
    }

    /* JADX INFO: renamed from: getTaskRunner$okhttp, reason: from getter */
    public final TaskRunner getTaskRunner() {
        return this.taskRunner;
    }

    /* JADX INFO: renamed from: getName$okhttp, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: getShutdown$okhttp, reason: from getter */
    public final boolean getShutdown() {
        return this.shutdown;
    }

    public final void setShutdown$okhttp(boolean z) {
        this.shutdown = z;
    }

    /* JADX INFO: renamed from: getActiveTask$okhttp, reason: from getter */
    public final Task getActiveTask() {
        return this.activeTask;
    }

    public final void setActiveTask$okhttp(Task task) {
        this.activeTask = task;
    }

    public final List<Task> getFutureTasks$okhttp() {
        return this.futureTasks;
    }

    /* JADX INFO: renamed from: getCancelActiveTask$okhttp, reason: from getter */
    public final boolean getCancelActiveTask() {
        return this.cancelActiveTask;
    }

    public final void setCancelActiveTask$okhttp(boolean z) {
        this.cancelActiveTask = z;
    }

    public final List<Task> getScheduledTasks() {
        List<Task> list;
        synchronized (this.taskRunner) {
            list = CollectionsKt.toList(this.futureTasks);
        }
        return list;
    }

    public static /* synthetic */ void schedule$default(TaskQueue taskQueue, Task task, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        taskQueue.schedule(task, j);
    }

    public final void schedule(Task task, long delayNanos) {
        synchronized (this.taskRunner) {
            if (this.shutdown) {
                boolean cancelable = task.getCancelable();
                TaskRunner taskRunner = this.taskRunner;
                if (cancelable) {
                    Logger logger = taskRunner.getLogger();
                    if (logger.isLoggable(Level.FINE)) {
                        TaskLoggerKt.log(logger, task, this, "schedule canceled (queue is shutdown)");
                    }
                    return;
                } else {
                    Logger logger2 = taskRunner.getLogger();
                    if (logger2.isLoggable(Level.FINE)) {
                        TaskLoggerKt.log(logger2, task, this, "schedule failed (queue is shutdown)");
                    }
                    throw new RejectedExecutionException();
                }
            }
            if (scheduleAndDecide$okhttp(task, delayNanos, false)) {
                this.taskRunner.kickCoordinator$okhttp(this);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public static /* synthetic */ void schedule$default(TaskQueue taskQueue, String str, long j, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        taskQueue.schedule(str, j, function0);
    }

    public final void schedule(String name, long delayNanos, final Function0<Long> block) {
        schedule(new Task(name) { // from class: okhttp3.internal.concurrent.TaskQueue.schedule.2
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                return block.invoke().longValue();
            }
        }, delayNanos);
    }

    public static /* synthetic */ void execute$default(TaskQueue taskQueue, String str, long j, boolean z, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        long j2 = j;
        if ((i & 4) != 0) {
            z = true;
        }
        taskQueue.execute(str, j2, z, function0);
    }

    public final void execute(String name, long delayNanos, boolean cancelable, final Function0<Unit> block) {
        schedule(new Task(name, cancelable) { // from class: okhttp3.internal.concurrent.TaskQueue.execute.1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                block.invoke();
                return -1L;
            }
        }, delayNanos);
    }

    public final CountDownLatch idleLatch() {
        synchronized (this.taskRunner) {
            if (this.activeTask == null && this.futureTasks.isEmpty()) {
                return new CountDownLatch(0);
            }
            Task task = this.activeTask;
            if (task instanceof AwaitIdleTask) {
                return ((AwaitIdleTask) task).getLatch();
            }
            for (Task task2 : this.futureTasks) {
                if (task2 instanceof AwaitIdleTask) {
                    return ((AwaitIdleTask) task2).getLatch();
                }
            }
            AwaitIdleTask awaitIdleTask = new AwaitIdleTask();
            if (scheduleAndDecide$okhttp(awaitIdleTask, 0L, false)) {
                this.taskRunner.kickCoordinator$okhttp(this);
            }
            return awaitIdleTask.getLatch();
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;", "Lokhttp3/internal/concurrent/Task;", "<init>", "()V", "latch", "Ljava/util/concurrent/CountDownLatch;", "getLatch", "()Ljava/util/concurrent/CountDownLatch;", "runOnce", _UrlKt.FRAGMENT_ENCODE_SET, "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class AwaitIdleTask extends Task {
        private final CountDownLatch latch;

        public AwaitIdleTask() {
            super(_UtilJvmKt.okHttpName + " awaitIdle", false);
            this.latch = new CountDownLatch(1);
        }

        public final CountDownLatch getLatch() {
            return this.latch;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long runOnce() {
            this.latch.countDown();
            return -1L;
        }
    }

    public final boolean scheduleAndDecide$okhttp(Task task, long delayNanos, boolean recurrence) {
        String str;
        task.initQueue$okhttp(this);
        long jNanoTime = this.taskRunner.getBackend().nanoTime();
        long j = jNanoTime + delayNanos;
        int iIndexOf = this.futureTasks.indexOf(task);
        if (iIndexOf != -1) {
            if (task.getNextExecuteNanoTime() <= j) {
                Logger logger = this.taskRunner.getLogger();
                if (logger.isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(logger, task, this, "already scheduled");
                }
                return false;
            }
            this.futureTasks.remove(iIndexOf);
        }
        task.setNextExecuteNanoTime$okhttp(j);
        Logger logger2 = this.taskRunner.getLogger();
        if (logger2.isLoggable(Level.FINE)) {
            if (recurrence) {
                str = "run again after " + TaskLoggerKt.formatDuration(j - jNanoTime);
            } else {
                str = "scheduled after " + TaskLoggerKt.formatDuration(j - jNanoTime);
            }
            TaskLoggerKt.log(logger2, task, this, str);
        }
        Iterator<Task> it = this.futureTasks.iterator();
        int size = 0;
        while (true) {
            if (!it.hasNext()) {
                size = -1;
                break;
            }
            if (it.next().getNextExecuteNanoTime() - jNanoTime > delayNanos) {
                break;
            }
            size++;
        }
        if (size == -1) {
            size = this.futureTasks.size();
        }
        this.futureTasks.add(size, task);
        return size == 0;
    }

    public final void cancelAll() {
        TaskRunner taskRunner = this.taskRunner;
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(taskRunner)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline1.m909m(Thread.currentThread().getName(), " MUST NOT hold lock on ", taskRunner);
            return;
        }
        synchronized (this.taskRunner) {
            try {
                if (cancelAllAndDecide$okhttp()) {
                    this.taskRunner.kickCoordinator$okhttp(this);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void shutdown() {
        TaskRunner taskRunner = this.taskRunner;
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(taskRunner)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline1.m909m(Thread.currentThread().getName(), " MUST NOT hold lock on ", taskRunner);
            return;
        }
        synchronized (this.taskRunner) {
            try {
                this.shutdown = true;
                if (cancelAllAndDecide$okhttp()) {
                    this.taskRunner.kickCoordinator$okhttp(this);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean cancelAllAndDecide$okhttp() {
        Task task = this.activeTask;
        if (task != null && task.getCancelable()) {
            this.cancelActiveTask = true;
        }
        boolean z = false;
        for (int size = this.futureTasks.size() - 1; -1 < size; size--) {
            if (this.futureTasks.get(size).getCancelable()) {
                Logger logger = this.taskRunner.getLogger();
                Task task2 = this.futureTasks.get(size);
                if (logger.isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(logger, task2, this, "canceled");
                }
                this.futureTasks.remove(size);
                z = true;
            }
        }
        return z;
    }

    public String toString() {
        return this.name;
    }
}
