package kotlinx.coroutines;

import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class TimeoutCancellationException extends CancellationException {
    public final transient Job coroutine;

    public TimeoutCancellationException(String str, Job job) {
        super(str);
        this.coroutine = job;
    }

    public TimeoutCancellationException(String str) {
        this(str, null);
    }
}
