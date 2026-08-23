package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public interface Delay {
    DisposableHandle invokeOnTimeout(long j, Runnable runnable, CoroutineContext coroutineContext);

    void scheduleResumeAfterDelay(long j, CancellableContinuation cancellableContinuation);

    /* JADX INFO: loaded from: classes5.dex */
    public static final class DefaultImpls {
        public static DisposableHandle invokeOnTimeout(Delay delay, long j, Runnable runnable, CoroutineContext coroutineContext) {
            return DefaultExecutorKt.getDefaultDelay().invokeOnTimeout(j, runnable, coroutineContext);
        }
    }
}
