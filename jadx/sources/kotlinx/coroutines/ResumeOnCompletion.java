package kotlinx.coroutines;

import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
final class ResumeOnCompletion extends JobNode {
    private final Continuation continuation;

    @Override // kotlinx.coroutines.JobNode
    public boolean getOnCancelling() {
        return false;
    }

    public ResumeOnCompletion(Continuation continuation) {
        this.continuation = continuation;
    }

    @Override // kotlinx.coroutines.JobNode
    public void invoke(Throwable th) {
        Continuation continuation = this.continuation;
        Result.Companion companion = Result.Companion;
        continuation.resumeWith(Result.m3604constructorimpl(Unit.INSTANCE));
    }
}
