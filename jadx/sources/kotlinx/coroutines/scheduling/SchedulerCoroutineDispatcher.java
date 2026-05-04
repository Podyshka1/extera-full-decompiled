package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;

/* JADX INFO: loaded from: classes.dex */
public abstract class SchedulerCoroutineDispatcher extends ExecutorCoroutineDispatcher {
    private final int corePoolSize;
    private CoroutineScheduler coroutineScheduler = createScheduler();
    private final long idleWorkerKeepAliveNs;
    private final int maxPoolSize;
    private final String schedulerName;

    public SchedulerCoroutineDispatcher(int i, int i2, long j, String str) {
        this.corePoolSize = i;
        this.maxPoolSize = i2;
        this.idleWorkerKeepAliveNs = j;
        this.schedulerName = str;
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    public Executor getExecutor() {
        return this.coroutineScheduler;
    }

    private final CoroutineScheduler createScheduler() {
        return new CoroutineScheduler(this.corePoolSize, this.maxPoolSize, this.idleWorkerKeepAliveNs, this.schedulerName);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        CoroutineScheduler.dispatch$default(this.coroutineScheduler, runnable, false, false, 6, null);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        CoroutineScheduler.dispatch$default(this.coroutineScheduler, runnable, false, true, 2, null);
    }

    public final void dispatchWithContext$kotlinx_coroutines_core(Runnable runnable, boolean z, boolean z2) {
        this.coroutineScheduler.dispatch(runnable, z, z2);
    }
}
