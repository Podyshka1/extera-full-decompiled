package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class DispatchException extends Exception {
    private final Throwable cause;

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    public DispatchException(Throwable th, CoroutineDispatcher coroutineDispatcher, CoroutineContext coroutineContext) {
        super("Coroutine dispatcher " + coroutineDispatcher + " threw an exception, context = " + coroutineContext, th);
        this.cause = th;
    }
}
