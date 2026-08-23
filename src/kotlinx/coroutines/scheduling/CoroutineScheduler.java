package kotlinx.coroutines.scheduling;

import java.io.Closeable;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.AbstractTimeSourceKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.ResizableAtomicArray;
import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: loaded from: classes.dex */
public final class CoroutineScheduler implements Executor, Closeable {
    private volatile /* synthetic */ int _isTerminated$volatile;
    private volatile /* synthetic */ long controlState$volatile;
    public final int corePoolSize;
    public final GlobalQueue globalBlockingQueue;
    public final GlobalQueue globalCpuQueue;
    public final long idleWorkerKeepAliveNs;
    public final int maxPoolSize;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;
    public final String schedulerName;
    public final ResizableAtomicArray workers;
    public static final Companion Companion = new Companion(null);
    private static final /* synthetic */ AtomicLongFieldUpdater parkedWorkersStack$volatile$FU = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack$volatile");
    private static final /* synthetic */ AtomicLongFieldUpdater controlState$volatile$FU = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState$volatile");
    private static final /* synthetic */ AtomicIntegerFieldUpdater _isTerminated$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated$volatile");
    public static final Symbol NOT_IN_STACK = new Symbol("NOT_IN_STACK");

    /* JADX INFO: loaded from: classes5.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WorkerState.values().length];
            try {
                iArr[WorkerState.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkerState.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkerState.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkerState.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicLongFieldUpdater getControlState$volatile$FU() {
        return controlState$volatile$FU;
    }

    private final boolean addToGlobalQueue(Task task) {
        if (task.taskContext) {
            return this.globalBlockingQueue.addLast(task);
        }
        return this.globalCpuQueue.addLast(task);
    }

    public CoroutineScheduler(int i, int i2, long j, String str) {
        this.corePoolSize = i;
        this.maxPoolSize = i2;
        this.idleWorkerKeepAliveNs = j;
        this.schedulerName = str;
        if (i < 1) {
            throw new IllegalArgumentException(("Core pool size " + i + " should be at least 1").toString());
        }
        if (i2 < i) {
            throw new IllegalArgumentException(("Max pool size " + i2 + " should be greater than or equals to core pool size " + i).toString());
        }
        if (i2 > 2097150) {
            throw new IllegalArgumentException(("Max pool size " + i2 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j + " must be positive").toString());
        }
        this.globalCpuQueue = new GlobalQueue();
        this.globalBlockingQueue = new GlobalQueue();
        this.workers = new ResizableAtomicArray((i + 1) * 2);
        this.controlState$volatile = ((long) i) << 42;
    }

    public final void parkedWorkersStackTopUpdate(Worker worker, int i, int i2) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = parkedWorkersStack$volatile$FU;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            int iParkedWorkersStackNextIndex = (int) (2097151 & j);
            long j2 = (2097152 + j) & (-2097152);
            if (iParkedWorkersStackNextIndex == i) {
                iParkedWorkersStackNextIndex = i2 == 0 ? parkedWorkersStackNextIndex(worker) : i2;
            }
            if (iParkedWorkersStackNextIndex >= 0) {
                if (parkedWorkersStack$volatile$FU.compareAndSet(this, j, j2 | ((long) iParkedWorkersStackNextIndex))) {
                    return;
                }
            }
        }
    }

    public final boolean parkedWorkersStackPush(Worker worker) {
        long j;
        int indexInArray;
        if (worker.getNextParkedWorker() != NOT_IN_STACK) {
            return false;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = parkedWorkersStack$volatile$FU;
        do {
            j = atomicLongFieldUpdater.get(this);
            indexInArray = worker.getIndexInArray();
            worker.setNextParkedWorker(this.workers.get((int) (2097151 & j)));
        } while (!parkedWorkersStack$volatile$FU.compareAndSet(this, j, ((2097152 + j) & (-2097152)) | ((long) indexInArray)));
        return true;
    }

    private final Worker parkedWorkersStackPop() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = parkedWorkersStack$volatile$FU;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            Worker worker = (Worker) this.workers.get((int) (2097151 & j));
            if (worker == null) {
                return null;
            }
            long j2 = (2097152 + j) & (-2097152);
            int iParkedWorkersStackNextIndex = parkedWorkersStackNextIndex(worker);
            if (iParkedWorkersStackNextIndex >= 0 && parkedWorkersStack$volatile$FU.compareAndSet(this, j, ((long) iParkedWorkersStackNextIndex) | j2)) {
                worker.setNextParkedWorker(NOT_IN_STACK);
                return worker;
            }
        }
    }

    private final int parkedWorkersStackNextIndex(Worker worker) {
        Object nextParkedWorker = worker.getNextParkedWorker();
        while (nextParkedWorker != NOT_IN_STACK) {
            if (nextParkedWorker == null) {
                return 0;
            }
            Worker worker2 = (Worker) nextParkedWorker;
            int indexInArray = worker2.getIndexInArray();
            if (indexInArray != 0) {
                return indexInArray;
            }
            nextParkedWorker = worker2.getNextParkedWorker();
        }
        return -1;
    }

    public final boolean isTerminated() {
        return _isTerminated$volatile$FU.get(this) == 1;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        dispatch$default(this, runnable, false, false, 6, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        shutdown(10000L);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void shutdown(long j) throws InterruptedException {
        int i;
        Task taskFindTask;
        if (_isTerminated$volatile$FU.compareAndSet(this, 0, 1)) {
            Worker workerCurrentWorker = currentWorker();
            synchronized (this.workers) {
                i = (int) (getControlState$volatile$FU().get(this) & 2097151);
            }
            if (1 <= i) {
                int i2 = 1;
                while (true) {
                    Object obj = this.workers.get(i2);
                    Intrinsics.checkNotNull(obj);
                    Worker worker = (Worker) obj;
                    if (worker != workerCurrentWorker) {
                        while (worker.getState() != Thread.State.TERMINATED) {
                            LockSupport.unpark(worker);
                            worker.join(j);
                        }
                        worker.localQueue.offloadAllWorkTo(this.globalBlockingQueue);
                    }
                    if (i2 == i) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            this.globalBlockingQueue.close();
            this.globalCpuQueue.close();
            while (true) {
                if (workerCurrentWorker != null) {
                    taskFindTask = workerCurrentWorker.findTask(true);
                    if (taskFindTask != null) {
                        continue;
                    }
                } else {
                    taskFindTask = (Task) this.globalCpuQueue.removeFirstOrNull();
                    if (taskFindTask == null && (taskFindTask = (Task) this.globalBlockingQueue.removeFirstOrNull()) == null) {
                        break;
                    }
                }
                runSafely(taskFindTask);
            }
            if (workerCurrentWorker != null) {
                workerCurrentWorker.tryReleaseCpu(WorkerState.TERMINATED);
            }
            parkedWorkersStack$volatile$FU.set(this, 0L);
            controlState$volatile$FU.set(this, 0L);
        }
    }

    public static /* synthetic */ void dispatch$default(CoroutineScheduler coroutineScheduler, Runnable runnable, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        coroutineScheduler.dispatch(runnable, z, z2);
    }

    public final void dispatch(Runnable runnable, boolean z, boolean z2) {
        AbstractTimeSourceKt.access$getTimeSource$p();
        Task taskCreateTask = createTask(runnable, z);
        boolean z3 = taskCreateTask.taskContext;
        long jAddAndGet = z3 ? controlState$volatile$FU.addAndGet(this, 2097152L) : 0L;
        Task taskSubmitToLocalQueue = submitToLocalQueue(currentWorker(), taskCreateTask, z2);
        if (taskSubmitToLocalQueue != null && !addToGlobalQueue(taskSubmitToLocalQueue)) {
            throw new RejectedExecutionException(this.schedulerName + " was terminated");
        }
        if (z3) {
            signalBlockingWork(jAddAndGet);
        } else {
            signalCpuWork();
        }
    }

    public final Task createTask(Runnable runnable, boolean z) {
        long jNanoTime = TasksKt.schedulerTimeSource.nanoTime();
        if (runnable instanceof Task) {
            Task task = (Task) runnable;
            task.submissionTime = jNanoTime;
            task.taskContext = z;
            return task;
        }
        return TasksKt.asTask(runnable, jNanoTime, z);
    }

    private final void signalBlockingWork(long j) {
        if (tryUnpark() || tryCreateWorker(j)) {
            return;
        }
        tryUnpark();
    }

    public final void signalCpuWork() {
        if (tryUnpark() || tryCreateWorker$default(this, 0L, 1, null)) {
            return;
        }
        tryUnpark();
    }

    static /* synthetic */ boolean tryCreateWorker$default(CoroutineScheduler coroutineScheduler, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = controlState$volatile$FU.get(coroutineScheduler);
        }
        return coroutineScheduler.tryCreateWorker(j);
    }

    private final boolean tryCreateWorker(long j) {
        if (RangesKt.coerceAtLeast(((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21)), 0) < this.corePoolSize) {
            int iCreateNewWorker = createNewWorker();
            if (iCreateNewWorker == 1 && this.corePoolSize > 1) {
                createNewWorker();
            }
            if (iCreateNewWorker > 0) {
                return true;
            }
        }
        return false;
    }

    private final boolean tryUnpark() {
        Worker workerParkedWorkersStackPop;
        do {
            workerParkedWorkersStackPop = parkedWorkersStackPop();
            if (workerParkedWorkersStackPop == null) {
                return false;
            }
        } while (!Worker.workerCtl$volatile$FU.compareAndSet(workerParkedWorkersStackPop, -1, 0));
        LockSupport.unpark(workerParkedWorkersStackPop);
        return true;
    }

    private final int createNewWorker() {
        synchronized (this.workers) {
            try {
                if (isTerminated()) {
                    return -1;
                }
                long j = controlState$volatile$FU.get(this);
                int i = (int) (j & 2097151);
                int iCoerceAtLeast = RangesKt.coerceAtLeast(i - ((int) ((j & 4398044413952L) >> 21)), 0);
                if (iCoerceAtLeast >= this.corePoolSize) {
                    return 0;
                }
                if (i >= this.maxPoolSize) {
                    return 0;
                }
                int i2 = ((int) (getControlState$volatile$FU().get(this) & 2097151)) + 1;
                if (i2 <= 0 || this.workers.get(i2) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                Worker worker = new Worker(this, i2);
                this.workers.setSynchronized(i2, worker);
                if (i2 != ((int) (2097151 & controlState$volatile$FU.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i3 = iCoerceAtLeast + 1;
                worker.start();
                return i3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final Task submitToLocalQueue(Worker worker, Task task, boolean z) {
        WorkerState workerState;
        if (worker == null || (workerState = worker.state) == WorkerState.TERMINATED) {
            return task;
        }
        if (!task.taskContext && workerState == WorkerState.BLOCKING) {
            return task;
        }
        worker.mayHaveLocalTasks = true;
        return worker.localQueue.add(task, z);
    }

    private final Worker currentWorker() {
        Thread threadCurrentThread = Thread.currentThread();
        Worker worker = threadCurrentThread instanceof Worker ? (Worker) threadCurrentThread : null;
        if (worker == null || !Intrinsics.areEqual(CoroutineScheduler.this, this)) {
            return null;
        }
        return worker;
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int iCurrentLength = this.workers.currentLength();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < iCurrentLength; i6++) {
            Worker worker = (Worker) this.workers.get(i6);
            if (worker != null) {
                int size$kotlinx_coroutines_core = worker.localQueue.getSize$kotlinx_coroutines_core();
                int i7 = WhenMappings.$EnumSwitchMapping$0[worker.state.ordinal()];
                if (i7 == 1) {
                    i3++;
                } else if (i7 == 2) {
                    i2++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(size$kotlinx_coroutines_core);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i7 == 3) {
                    i++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(size$kotlinx_coroutines_core);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i7 == 4) {
                    i4++;
                    if (size$kotlinx_coroutines_core > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(size$kotlinx_coroutines_core);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else {
                    if (i7 != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    i5++;
                }
            }
        }
        long j = controlState$volatile$FU.get(this);
        return this.schedulerName + '@' + DebugStringsKt.getHexAddress(this) + "[Pool Size {core = " + this.corePoolSize + ", max = " + this.maxPoolSize + "}, Worker States {CPU = " + i + ", blocking = " + i2 + ", parked = " + i3 + ", dormant = " + i4 + ", terminated = " + i5 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.globalCpuQueue.getSize() + ", global blocking queue size = " + this.globalBlockingQueue.getSize() + ", Control State {created workers= " + ((int) (2097151 & j)) + ", blocking tasks = " + ((int) ((4398044413952L & j) >> 21)) + ", CPUs acquired = " + (this.corePoolSize - ((int) ((9223367638808264704L & j) >> 42))) + "}]";
    }

    public final void runSafely(Task task) {
        try {
            task.run();
        } catch (Throwable th) {
            try {
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
            } finally {
                AbstractTimeSourceKt.access$getTimeSource$p();
            }
        }
    }

    public final class Worker extends Thread {
        private static final /* synthetic */ AtomicIntegerFieldUpdater workerCtl$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl$volatile");
        private volatile int indexInArray;
        public final WorkQueue localQueue;
        public boolean mayHaveLocalTasks;
        private long minDelayUntilStealableTaskNs;
        private volatile Object nextParkedWorker;
        private int rngState;
        public WorkerState state;
        private final Ref$ObjectRef stolenTask;
        private long terminationDeadline;
        private volatile /* synthetic */ int workerCtl$volatile;

        private Worker() {
            setDaemon(true);
            setContextClassLoader(CoroutineScheduler.this.getClass().getClassLoader());
            this.localQueue = new WorkQueue();
            this.stolenTask = new Ref$ObjectRef();
            this.state = WorkerState.DORMANT;
            this.nextParkedWorker = CoroutineScheduler.NOT_IN_STACK;
            int iNanoTime = (int) System.nanoTime();
            this.rngState = iNanoTime == 0 ? 42 : iNanoTime;
        }

        public final int getIndexInArray() {
            return this.indexInArray;
        }

        public final void setIndexInArray(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.schedulerName);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        public Worker(CoroutineScheduler coroutineScheduler, int i) {
            this();
            setIndexInArray(i);
        }

        public final Object getNextParkedWorker() {
            return this.nextParkedWorker;
        }

        public final void setNextParkedWorker(Object obj) {
            this.nextParkedWorker = obj;
        }

        private final boolean tryAcquireCpuPermit() {
            long j;
            if (this.state == WorkerState.CPU_ACQUIRED) {
                return true;
            }
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            AtomicLongFieldUpdater controlState$volatile$FU = CoroutineScheduler.getControlState$volatile$FU();
            do {
                j = controlState$volatile$FU.get(coroutineScheduler);
                if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                    return false;
                }
            } while (!CoroutineScheduler.getControlState$volatile$FU().compareAndSet(coroutineScheduler, j, j - 4398046511104L));
            this.state = WorkerState.CPU_ACQUIRED;
            return true;
        }

        public final boolean tryReleaseCpu(WorkerState workerState) {
            WorkerState workerState2 = this.state;
            boolean z = workerState2 == WorkerState.CPU_ACQUIRED;
            if (z) {
                CoroutineScheduler.getControlState$volatile$FU().addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState2 != workerState) {
                this.state = workerState;
            }
            return z;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            runWorker();
        }

        private final void runWorker() {
            loop0: while (true) {
                boolean z = false;
                while (!CoroutineScheduler.this.isTerminated() && this.state != WorkerState.TERMINATED) {
                    Task taskFindTask = findTask(this.mayHaveLocalTasks);
                    if (taskFindTask != null) {
                        this.minDelayUntilStealableTaskNs = 0L;
                        executeTask(taskFindTask);
                    } else {
                        this.mayHaveLocalTasks = false;
                        if (this.minDelayUntilStealableTaskNs == 0) {
                            tryPark();
                        } else if (z) {
                            tryReleaseCpu(WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.minDelayUntilStealableTaskNs);
                            this.minDelayUntilStealableTaskNs = 0L;
                        } else {
                            z = true;
                        }
                    }
                }
                break loop0;
            }
            tryReleaseCpu(WorkerState.TERMINATED);
        }

        private final void tryPark() {
            if (!inStack()) {
                CoroutineScheduler.this.parkedWorkersStackPush(this);
                return;
            }
            workerCtl$volatile$FU.set(this, -1);
            while (inStack() && workerCtl$volatile$FU.get(this) == -1 && !CoroutineScheduler.this.isTerminated() && this.state != WorkerState.TERMINATED) {
                tryReleaseCpu(WorkerState.PARKING);
                Thread.interrupted();
                park();
            }
        }

        private final boolean inStack() {
            return this.nextParkedWorker != CoroutineScheduler.NOT_IN_STACK;
        }

        private final void executeTask(Task task) {
            this.terminationDeadline = 0L;
            if (this.state == WorkerState.PARKING) {
                this.state = WorkerState.BLOCKING;
            }
            if (task.taskContext) {
                if (tryReleaseCpu(WorkerState.BLOCKING)) {
                    CoroutineScheduler.this.signalCpuWork();
                }
                CoroutineScheduler.this.runSafely(task);
                CoroutineScheduler.getControlState$volatile$FU().addAndGet(CoroutineScheduler.this, -2097152L);
                if (this.state != WorkerState.TERMINATED) {
                    this.state = WorkerState.DORMANT;
                    return;
                }
                return;
            }
            CoroutineScheduler.this.runSafely(task);
        }

        public final int nextInt(int i) {
            int i2 = this.rngState;
            int i3 = i2 ^ (i2 << 13);
            int i4 = i3 ^ (i3 >> 17);
            int i5 = i4 ^ (i4 << 5);
            this.rngState = i5;
            int i6 = i - 1;
            return (i6 & i) == 0 ? i5 & i6 : (i5 & Integer.MAX_VALUE) % i;
        }

        private final void park() {
            if (this.terminationDeadline == 0) {
                this.terminationDeadline = System.nanoTime() + CoroutineScheduler.this.idleWorkerKeepAliveNs;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.idleWorkerKeepAliveNs);
            if (System.nanoTime() - this.terminationDeadline >= 0) {
                this.terminationDeadline = 0L;
                tryTerminateWorker();
            }
        }

        private final void tryTerminateWorker() {
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            synchronized (coroutineScheduler.workers) {
                try {
                    if (coroutineScheduler.isTerminated()) {
                        return;
                    }
                    if (((int) (CoroutineScheduler.getControlState$volatile$FU().get(coroutineScheduler) & 2097151)) <= coroutineScheduler.corePoolSize) {
                        return;
                    }
                    if (workerCtl$volatile$FU.compareAndSet(this, -1, 1)) {
                        int i = this.indexInArray;
                        setIndexInArray(0);
                        coroutineScheduler.parkedWorkersStackTopUpdate(this, i, 0);
                        int andDecrement = (int) (2097151 & CoroutineScheduler.getControlState$volatile$FU().getAndDecrement(coroutineScheduler));
                        if (andDecrement != i) {
                            Object obj = coroutineScheduler.workers.get(andDecrement);
                            Intrinsics.checkNotNull(obj);
                            Worker worker = (Worker) obj;
                            coroutineScheduler.workers.setSynchronized(i, worker);
                            worker.setIndexInArray(i);
                            coroutineScheduler.parkedWorkersStackTopUpdate(worker, andDecrement, i);
                        }
                        coroutineScheduler.workers.setSynchronized(andDecrement, null);
                        Unit unit = Unit.INSTANCE;
                        this.state = WorkerState.TERMINATED;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final Task findTask(boolean z) {
            return tryAcquireCpuPermit() ? findAnyTask(z) : findBlockingTask();
        }

        private final Task findBlockingTask() {
            Task taskPollBlocking = this.localQueue.pollBlocking();
            if (taskPollBlocking != null) {
                return taskPollBlocking;
            }
            Task task = (Task) CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            return task == null ? trySteal(1) : task;
        }

        private final Task findAnyTask(boolean z) {
            Task taskPollGlobalQueues;
            Task taskPollGlobalQueues2;
            if (z) {
                boolean z2 = nextInt(CoroutineScheduler.this.corePoolSize * 2) == 0;
                if (z2 && (taskPollGlobalQueues2 = pollGlobalQueues()) != null) {
                    return taskPollGlobalQueues2;
                }
                Task taskPoll = this.localQueue.poll();
                if (taskPoll != null) {
                    return taskPoll;
                }
                if (!z2 && (taskPollGlobalQueues = pollGlobalQueues()) != null) {
                    return taskPollGlobalQueues;
                }
            } else {
                Task taskPollGlobalQueues3 = pollGlobalQueues();
                if (taskPollGlobalQueues3 != null) {
                    return taskPollGlobalQueues3;
                }
            }
            return trySteal(3);
        }

        private final Task pollGlobalQueues() {
            if (nextInt(2) == 0) {
                Task task = (Task) CoroutineScheduler.this.globalCpuQueue.removeFirstOrNull();
                return task != null ? task : (Task) CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            }
            Task task2 = (Task) CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            return task2 != null ? task2 : (Task) CoroutineScheduler.this.globalCpuQueue.removeFirstOrNull();
        }

        private final Task trySteal(int i) {
            int i2 = (int) (CoroutineScheduler.getControlState$volatile$FU().get(CoroutineScheduler.this) & 2097151);
            if (i2 < 2) {
                return null;
            }
            int iNextInt = nextInt(i2);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            long jMin = Long.MAX_VALUE;
            for (int i3 = 0; i3 < i2; i3++) {
                iNextInt++;
                if (iNextInt > i2) {
                    iNextInt = 1;
                }
                Worker worker = (Worker) coroutineScheduler.workers.get(iNextInt);
                if (worker != null && worker != this) {
                    long jTrySteal = worker.localQueue.trySteal(i, this.stolenTask);
                    if (jTrySteal == -1) {
                        Ref$ObjectRef ref$ObjectRef = this.stolenTask;
                        Task task = (Task) ref$ObjectRef.element;
                        ref$ObjectRef.element = null;
                        return task;
                    }
                    if (jTrySteal > 0) {
                        jMin = Math.min(jMin, jTrySteal);
                    }
                }
            }
            if (jMin == Long.MAX_VALUE) {
                jMin = 0;
            }
            this.minDelayUntilStealableTaskNs = jMin;
            return null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class WorkerState {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ WorkerState[] $VALUES;
        public static final WorkerState CPU_ACQUIRED = new WorkerState("CPU_ACQUIRED", 0);
        public static final WorkerState BLOCKING = new WorkerState("BLOCKING", 1);
        public static final WorkerState PARKING = new WorkerState("PARKING", 2);
        public static final WorkerState DORMANT = new WorkerState("DORMANT", 3);
        public static final WorkerState TERMINATED = new WorkerState("TERMINATED", 4);

        private static final /* synthetic */ WorkerState[] $values() {
            return new WorkerState[]{CPU_ACQUIRED, BLOCKING, PARKING, DORMANT, TERMINATED};
        }

        private WorkerState(String str, int i) {
        }

        static {
            WorkerState[] workerStateArr$values = $values();
            $VALUES = workerStateArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(workerStateArr$values);
        }

        public static WorkerState valueOf(String str) {
            return (WorkerState) Enum.valueOf(WorkerState.class, str);
        }

        public static WorkerState[] values() {
            return (WorkerState[]) $VALUES.clone();
        }
    }
}
