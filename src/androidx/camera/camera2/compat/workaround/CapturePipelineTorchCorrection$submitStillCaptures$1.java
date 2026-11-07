package androidx.camera.camera2.compat.workaround;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m920c = "androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection", m921f = "CapturePipelineTorchCorrection.kt", m922i = {0}, m923l = {75}, m924m = "submitStillCaptures-BvXKQx0", m925n = {"needCorrectTorchState"}, m926s = {"Z$0"}, m927v = 1)
public final class CapturePipelineTorchCorrection$submitStillCaptures$1 extends ContinuationImpl {
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CapturePipelineTorchCorrection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CapturePipelineTorchCorrection$submitStillCaptures$1(CapturePipelineTorchCorrection capturePipelineTorchCorrection, Continuation<? super CapturePipelineTorchCorrection$submitStillCaptures$1> continuation) {
        super(continuation);
        this.this$0 = capturePipelineTorchCorrection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo1157submitStillCapturesBvXKQx0(null, 0, null, 0, 0, 0, this);
    }
}
