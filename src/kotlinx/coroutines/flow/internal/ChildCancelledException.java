package kotlinx.coroutines.flow.internal;

import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class ChildCancelledException extends CancellationException {
    public ChildCancelledException() {
        super("Child of the scoped flow was cancelled");
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
