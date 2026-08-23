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
final class CameraStateOpener$tryOpenCamera$2$result$1$3 extends SuspendLambda implements Function1 {
    final /* synthetic */ Ref$ObjectRef $cameraOpenDeferred;
    final /* synthetic */ AndroidCameraState $cameraState;
    final /* synthetic */ Ref$ObjectRef $timeoutJob;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CameraStateOpener$tryOpenCamera$2$result$1$3(Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2, AndroidCameraState androidCameraState, Continuation continuation) {
        super(1, continuation);
        this.$timeoutJob = ref$ObjectRef;
        this.$cameraOpenDeferred = ref$ObjectRef2;
        this.$cameraState = androidCameraState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new CameraStateOpener$tryOpenCamera$2$result$1$3(this.$timeoutJob, this.$cameraOpenDeferred, this.$cameraState, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation continuation) {
        return ((CameraStateOpener$tryOpenCamera$2$result$1$3) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "tryOpenCamera: 3000ms elapsed");
        }
        this.$timeoutJob.element = null;
        if (this.$cameraOpenDeferred.element == null) {
            return null;
        }
        if (log.getERROR_LOGGABLE()) {
            android.util.Log.e("CXCP", "tryOpenCamera: openCamera() timed out");
        }
        this.$cameraState.close();
        return new OpenCameraResult(null, CameraError.m1550boximpl(CameraError.Companion.m1567getERROR_CAMERA_OPEN_TIMEOUTv7Vf74A()), 1, null);
    }
}
