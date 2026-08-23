package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.core.Log;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes3.dex */
final class CameraStateOpener$tryOpenCamera$2$result$1$4 extends SuspendLambda implements Function1 {
    final /* synthetic */ Ref$ObjectRef $cameraOpenCancelJob;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CameraStateOpener$tryOpenCamera$2$result$1$4(Ref$ObjectRef ref$ObjectRef, Continuation continuation) {
        super(1, continuation);
        this.$cameraOpenCancelJob = ref$ObjectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new CameraStateOpener$tryOpenCamera$2$result$1$4(this.$cameraOpenCancelJob, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation continuation) {
        return ((CameraStateOpener$tryOpenCamera$2$result$1$4) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "tryOpenCamera: Camera open cancelled");
            }
            this.$cameraOpenCancelJob.element = null;
            return new OpenCameraResult(null, CameraError.m1550boximpl(CameraError.Companion.m1567getERROR_CAMERA_OPEN_TIMEOUTv7Vf74A()), 1, null);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
