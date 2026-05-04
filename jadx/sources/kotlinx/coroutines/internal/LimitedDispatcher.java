package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.DefaultExecutorKt;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;

/* JADX INFO: loaded from: classes.dex */
public final class LimitedDispatcher extends CoroutineDispatcher implements Delay {
    private static final /* synthetic */ AtomicIntegerFieldUpdater runningWorkers$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(LimitedDispatcher.class, "runningWorkers$volatile");
    private final /* synthetic */ Delay $$delegate_0;
    private final CoroutineDispatcher dispatcher;
    private final String name;
    private final int parallelism;
    private final LockFreeTaskQueue queue;
    private volatile /* synthetic */ int runningWorkers$volatile;
    private final Object workerAllocationLock;

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicIntegerFieldUpdater getRunningWorkers$volatile$FU() {
        return runningWorkers$volatile$FU;
    }

    @Override // kotlinx.coroutines.Delay
    public DisposableHandle invokeOnTimeout(long j, Runnable runnable, CoroutineContext coroutineContext) {
        return this.$$delegate_0.invokeOnTimeout(j, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.Delay
    public void scheduleResumeAfterDelay(long j, CancellableContinuation cancellableContinuation) {
        this.$$delegate_0.scheduleResumeAfterDelay(j, cancellableContinuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LimitedDispatcher(CoroutineDispatcher coroutineDispatcher, int i, String str) {
        Delay delay = coroutineDispatcher instanceof Delay ? (Delay) coroutineDispatcher : null;
        this.$$delegate_0 = delay == null ? DefaultExecutorKt.getDefaultDelay() : delay;
        this.dispatcher = coroutineDispatcher;
        this.parallelism = i;
        this.name = str;
        this.queue = new LockFreeTaskQueue(false);
        this.workerAllocationLock = new Object();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public CoroutineDispatcher limitedParallelism(int i, String str) {
        LimitedDispatcherKt.checkParallelism(i);
        return i >= this.parallelism ? LimitedDispatcherKt.namedOrThis(this, str) : super.limitedParallelism(i, str);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableObtainTaskOrDeallocateWorker;
        this.queue.addLast(runnable);
        if (runningWorkers$volatile$FU.get(this) >= this.parallelism || !tryAllocateWorker() || (runnableObtainTaskOrDeallocateWorker = obtainTaskOrDeallocateWorker()) == null) {
            return;
        }
        try {
            DispatchedContinuationKt.safeDispatch(this.dispatcher, this, new Worker(runnableObtainTaskOrDeallocateWorker));
        } catch (Throwable th) {
            runningWorkers$volatile$FU.decrementAndGet(this);
            throw th;
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableObtainTaskOrDeallocateWorker;
        this.queue.addLast(runnable);
        if (runningWorkers$volatile$FU.get(this) >= this.parallelism || !tryAllocateWorker() || (runnableObtainTaskOrDeallocateWorker = obtainTaskOrDeallocateWorker()) == null) {
            return;
        }
        try {
            this.dispatcher.dispatchYield(this, new Worker(runnableObtainTaskOrDeallocateWorker));
        } catch (Throwable th) {
            runningWorkers$volatile$FU.decrementAndGet(this);
            throw th;
        }
    }

    private final boolean tryAllocateWorker() {
        synchronized (this.workerAllocationLock) {
            if (runningWorkers$volatile$FU.get(this) >= this.parallelism) {
                return false;
            }
            runningWorkers$volatile$FU.incrementAndGet(this);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Runnable obtainTaskOrDeallocateWorker() {
        while (true) {
            Runnable runnable = (Runnable) this.queue.removeFirstOrNull();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.workerAllocationLock) {
                runningWorkers$volatile$FU.decrementAndGet(this);
                if (this.queue.getSize() == 0) {
                    return null;
                }
                runningWorkers$volatile$FU.incrementAndGet(this);
            }
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        String str = this.name;
        if (str != null) {
            return str;
        }
        return this.dispatcher + ".limitedParallelism(" + this.parallelism + ')';
    }

    private final class Worker implements Runnable {
        private Runnable currentTask;

        public Worker(Runnable runnable) {
            this.currentTask = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = 0;
            while (true) {
                try {
                    this.currentTask.run();
                } catch (Throwable th) {
                    CoroutineExceptionHandlerKt.handleCoroutineException(EmptyCoroutineContext.INSTANCE, th);
                }
                Runnable runnableObtainTaskOrDeallocateWorker = LimitedDispatcher.this.obtainTaskOrDeallocateWorker();
                if (runnableObtainTaskOrDeallocateWorker == null) {
                    return;
                }
                try {
                    this.currentTask = runnableObtainTaskOrDeallocateWorker;
                    i++;
                    if (i >= 16 && DispatchedContinuationKt.safeIsDispatchNeeded(LimitedDispatcher.this.dispatcher, LimitedDispatcher.this)) {
                        DispatchedContinuationKt.safeDispatch(LimitedDispatcher.this.dispatcher, LimitedDispatcher.this, this);
                        return;
                    }
                } catch (Throwable th2) {
                    Object obj = LimitedDispatcher.this.workerAllocationLock;
                    LimitedDispatcher limitedDispatcher = LimitedDispatcher.this;
                    synchronized (obj) {
                        LimitedDispatcher.getRunningWorkers$volatile$FU().decrementAndGet(limitedDispatcher);
                        throw th2;
                    }
                }
            }
        }
    }
}
