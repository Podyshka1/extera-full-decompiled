package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Log;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;", "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1", m873f = "RetryingCameraStateOpener.kt", m874i = {}, m875l = {280}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
@SourceDebugExtension({"SMAP\nRetryingCameraStateOpener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,665:1\n75#2,2:666\n*S KotlinDebug\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1\n*L\n282#1:666,2\n*E\n"})
public final class CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super OpenCameraResult>, Object> {
    final /* synthetic */ String $cameraId;
    final /* synthetic */ AndroidCameraState $cameraState;
    int label;
    final /* synthetic */ CameraStateOpener this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1(CameraStateOpener cameraStateOpener, String str, AndroidCameraState androidCameraState, Continuation<? super CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1> continuation) {
        super(2, continuation);
        this.this$0 = cameraStateOpener;
        this.$cameraId = str;
        this.$cameraState = androidCameraState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1(this.this$0, this.$cameraId, this.$cameraState, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super OpenCameraResult> continuation) {
        return ((CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v7 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CameraOpener cameraOpener = this.this$0.cameraOpener;
                String str = this.$cameraId;
                AndroidCameraState androidCameraState = this.$cameraState;
                this.label = 1;
                Object objMo1507openCameraRzXb1QE = cameraOpener.mo1507openCameraRzXb1QE(str, androidCameraState, this);
                this = objMo1507openCameraRzXb1QE;
                if (objMo1507openCameraRzXb1QE == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                this = this;
            }
        } catch (Exception e) {
            Log log = Log.INSTANCE;
            String str2 = this.$cameraId;
            if (log.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to open " + ((Object) CameraId.m1303toStringimpl(str2)), e);
            }
            this.$cameraState.closeWith$camera_camera2_pipe(e);
            new OpenCameraResult(null, CameraError.m1246boximpl(CameraError.INSTANCE.m1256fromPVuDhNw$camera_camera2_pipe(e)), 1, null);
        }
        return null;
    }
}
