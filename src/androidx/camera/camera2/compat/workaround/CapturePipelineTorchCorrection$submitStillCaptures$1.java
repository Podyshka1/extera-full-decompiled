package androidx.camera.camera2.compat.workaround;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
final class CapturePipelineTorchCorrection$submitStillCaptures$1 extends ContinuationImpl {
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CapturePipelineTorchCorrection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CapturePipelineTorchCorrection$submitStillCaptures$1(CapturePipelineTorchCorrection capturePipelineTorchCorrection, Continuation continuation) {
        super(continuation);
        this.this$0 = capturePipelineTorchCorrection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo1413submitStillCapturesBvXKQx0(null, 0, null, 0, 0, 0, this);
    }
}
