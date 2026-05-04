package okhttp3.internal.concurrent;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: loaded from: classes.dex */
public final class TaskQueue {
    private Task activeTask;
    private boolean cancelActiveTask;
    private final List<Task> futureTasks;
    private final String name;
    private boolean shutdown;
    private final TaskRunner taskRunner;

    public TaskQueue(TaskRunner taskRunner, String name) {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(name, "name");
        this.taskRunner = taskRunner;
        this.name = name;
        this.futureTasks = new ArrayList();
    }

    public final TaskRunner getTaskRunner$okhttp() {
        return this.taskRunner;
    }

    public final String getName$okhttp() {
        return this.name;
    }

    public final boolean getShutdown$okhttp() {
        return this.shutdown;
    }

    public final void setShutdown$okhttp(boolean z) {
        this.shutdown = z;
    }

    public final Task getActiveTask$okhttp() {
        return this.activeTask;
    }

    public final void setActiveTask$okhttp(Task task) {
        this.activeTask = task;
    }

    public final List<Task> getFutureTasks$okhttp() {
        return this.futureTasks;
    }

    public final boolean getCancelActiveTask$okhttp() {
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

    public final void schedule(Task task, long j) {
        Intrinsics.checkNotNullParameter(task, "task");
        synchronized (this.taskRunner) {
            if (this.shutdown) {
                if (task.getCancelable()) {
                    Logger logger$okhttp = this.taskRunner.getLogger$okhttp();
                    if (logger$okhttp.isLoggable(Level.FINE)) {
                        TaskLoggerKt.log(logger$okhttp, task, this, "schedule canceled (queue is shutdown)");
                    }
                    return;
                } else {
                    Logger logger$okhttp2 = this.taskRunner.getLogger$okhttp();
                    if (logger$okhttp2.isLoggable(Level.FINE)) {
                        TaskLoggerKt.log(logger$okhttp2, task, this, "schedule failed (queue is shutdown)");
                    }
                    throw new RejectedExecutionException();
                }
            }
            if (scheduleAndDecide$okhttp(task, j, false)) {
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

    public final void schedule(String name, long j, final Function0<Long> block) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(block, "block");
        schedule(new Task(name) { // from class: okhttp3.internal.concurrent.TaskQueue.schedule.2
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                return block.invoke().longValue();
            }
        }, j);
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

    public final void execute(String name, long j, boolean z, final Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(block, "block");
        schedule(new Task(name, z) { // from class: okhttp3.internal.concurrent.TaskQueue.execute.1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                block.invoke();
                return -1L;
            }
        }, j);
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
    private static final class AwaitIdleTask extends Task {
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

    public final boolean scheduleAndDecide$okhttp(Task task, long j, boolean z) {
        String str;
        Intrinsics.checkNotNullParameter(task, "task");
        task.initQueue$okhttp(this);
        long jNanoTime = this.taskRunner.getBackend().nanoTime();
        long j2 = jNanoTime + j;
        int iIndexOf = this.futureTasks.indexOf(task);
        if (iIndexOf != -1) {
            if (task.getNextExecuteNanoTime$okhttp() <= j2) {
                Logger logger$okhttp = this.taskRunner.getLogger$okhttp();
                if (logger$okhttp.isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(logger$okhttp, task, this, "already scheduled");
                }
                return false;
            }
            this.futureTasks.remove(iIndexOf);
        }
        task.setNextExecuteNanoTime$okhttp(j2);
        Logger logger$okhttp2 = this.taskRunner.getLogger$okhttp();
        if (logger$okhttp2.isLoggable(Level.FINE)) {
            if (z) {
                str = "run again after " + TaskLoggerKt.formatDuration(j2 - jNanoTime);
            } else {
                str = "scheduled after " + TaskLoggerKt.formatDuration(j2 - jNanoTime);
            }
            TaskLoggerKt.log(logger$okhttp2, task, this, str);
        }
        Iterator<Task> it = this.futureTasks.iterator();
        int size = 0;
        while (true) {
            if (!it.hasNext()) {
                size = -1;
                break;
            }
            if (it.next().getNextExecuteNanoTime$okhttp() - jNanoTime > j) {
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
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + taskRunner);
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
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + taskRunner);
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
        if (task != null) {
            Intrinsics.checkNotNull(task);
            if (task.getCancelable()) {
                this.cancelActiveTask = true;
            }
        }
        boolean z = false;
        for (int size = this.futureTasks.size() - 1; -1 < size; size--) {
            if (this.futureTasks.get(size).getCancelable()) {
                Logger logger$okhttp = this.taskRunner.getLogger$okhttp();
                Task task2 = this.futureTasks.get(size);
                if (logger$okhttp.isLoggable(Level.FINE)) {
                    TaskLoggerKt.log(logger$okhttp, task2, this, "canceled");
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
