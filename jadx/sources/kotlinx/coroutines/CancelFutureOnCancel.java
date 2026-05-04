package kotlinx.coroutines;

import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes5.dex */
final class CancelFutureOnCancel implements CancelHandler {
    private final Future future;

    public CancelFutureOnCancel(Future future) {
        this.future = future;
    }

    @Override // kotlinx.coroutines.CancelHandler
    public void invoke(Throwable th) {
        this.future.cancel(false);
    }

    public String toString() {
        return "CancelFutureOnCancel[" + this.future + ']';
    }
}
