package androidx.work.impl;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;

/* JADX INFO: loaded from: classes4.dex */
final class ToContinuation implements Runnable {
    private final CancellableContinuation continuation;
    private final ListenableFuture futureToObserve;

    public ToContinuation(ListenableFuture futureToObserve, CancellableContinuation continuation) {
        Intrinsics.checkNotNullParameter(futureToObserve, "futureToObserve");
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        this.futureToObserve = futureToObserve;
        this.continuation = continuation;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.futureToObserve.isCancelled()) {
            CancellableContinuation.DefaultImpls.cancel$default(this.continuation, null, 1, null);
            return;
        }
        try {
            CancellableContinuation cancellableContinuation = this.continuation;
            Result.Companion companion = Result.Companion;
            cancellableContinuation.resumeWith(Result.m3604constructorimpl(WorkerWrapperKt.getUninterruptibly(this.futureToObserve)));
        } catch (ExecutionException e) {
            CancellableContinuation cancellableContinuation2 = this.continuation;
            Result.Companion companion2 = Result.Companion;
            cancellableContinuation2.resumeWith(Result.m3604constructorimpl(ResultKt.createFailure(WorkerWrapperKt.nonNullCause(e))));
        }
    }
}
