package kotlinx.coroutines;

import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: loaded from: classes.dex */
final class ResumeAwaitOnCompletion extends JobNode {
    private final CancellableContinuationImpl continuation;

    @Override // kotlinx.coroutines.JobNode
    public boolean getOnCancelling() {
        return false;
    }

    public ResumeAwaitOnCompletion(CancellableContinuationImpl cancellableContinuationImpl) {
        this.continuation = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.JobNode
    public void invoke(Throwable th) {
        Object state$kotlinx_coroutines_core = getJob().getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
            Result.Companion companion = Result.Companion;
            cancellableContinuationImpl.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(((CompletedExceptionally) state$kotlinx_coroutines_core).cause)));
        } else {
            CancellableContinuationImpl cancellableContinuationImpl2 = this.continuation;
            Result.Companion companion2 = Result.Companion;
            cancellableContinuationImpl2.resumeWith(Result.m3604constructorimpl(JobSupportKt.unboxState(state$kotlinx_coroutines_core)));
        }
    }
}
