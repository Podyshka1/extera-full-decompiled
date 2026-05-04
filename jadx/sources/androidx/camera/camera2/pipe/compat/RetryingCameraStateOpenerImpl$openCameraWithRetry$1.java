package androidx.camera.camera2.pipe.compat;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
final class RetryingCameraStateOpenerImpl$openCameraWithRetry$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ RetryingCameraStateOpenerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RetryingCameraStateOpenerImpl$openCameraWithRetry$1(RetryingCameraStateOpenerImpl retryingCameraStateOpenerImpl, Continuation continuation) {
        super(continuation);
        this.this$0 = retryingCameraStateOpenerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo1859openCameraWithRetryaeCOTgg(null, null, null, this);
    }
}
