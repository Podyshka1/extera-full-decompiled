package androidx.core.os;

import android.p000os.OutcomeReceiver;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes4.dex */
final class ContinuationOutcomeReceiver extends AtomicBoolean implements OutcomeReceiver {
    private final Continuation continuation;

    public ContinuationOutcomeReceiver(Continuation continuation) {
        super(false);
        this.continuation = continuation;
    }

    public void onResult(Object obj) {
        if (compareAndSet(false, true)) {
            this.continuation.resumeWith(Result.m3604constructorimpl(obj));
        }
    }

    public void onError(Throwable th) {
        if (compareAndSet(false, true)) {
            Continuation continuation = this.continuation;
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(th)));
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "ContinuationOutcomeReceiver(outcomeReceived = " + get() + ')';
    }
}
