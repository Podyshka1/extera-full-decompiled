package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Log;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
final class CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ String $cameraId;
    final /* synthetic */ AndroidCameraState $cameraState;
    int label;
    final /* synthetic */ CameraStateOpener this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1(CameraStateOpener cameraStateOpener, String str, AndroidCameraState androidCameraState, Continuation continuation) {
        super(2, continuation);
        this.this$0 = cameraStateOpener;
        this.$cameraId = str;
        this.$cameraState = androidCameraState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1(this.this$0, this.$cameraId, this.$cameraState, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CameraOpener cameraOpener = this.this$0.cameraOpener;
                String str = this.$cameraId;
                AndroidCameraState androidCameraState = this.$cameraState;
                this.label = 1;
                if (cameraOpener.mo1821openCameraRzXb1QE(str, androidCameraState, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (Exception e) {
            Log log = Log.INSTANCE;
            String str2 = this.$cameraId;
            if (log.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to open " + ((Object) CameraId.m1607toStringimpl(str2)), e);
            }
            this.$cameraState.closeWith$camera_camera2_pipe(e);
            new OpenCameraResult(null, CameraError.m1550boximpl(CameraError.Companion.m1560fromPVuDhNw$camera_camera2_pipe(e)), 1, null);
        }
        return null;
    }
}
