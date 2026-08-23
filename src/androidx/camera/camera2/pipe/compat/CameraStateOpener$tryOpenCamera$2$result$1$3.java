package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.core.Log;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$result$1$3", m766f = "RetryingCameraStateOpener.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
@SourceDebugExtension({"SMAP\nRetryingCameraStateOpener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,665:1\n50#2,2:666\n82#2,2:668\n*S KotlinDebug\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3\n*L\n338#1:666,2\n341#1:668,2\n*E\n"})
public final class CameraStateOpener$tryOpenCamera$2$result$1$3 extends SuspendLambda implements Function1<Continuation<? super OpenCameraResult>, Object> {
    final /* synthetic */ Ref.ObjectRef<Deferred<OpenCameraResult>> $cameraOpenDeferred;
    final /* synthetic */ AndroidCameraState $cameraState;
    final /* synthetic */ Ref.ObjectRef<Job> $timeoutJob;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$2$result$1$3(Ref.ObjectRef<Job> objectRef, Ref.ObjectRef<Deferred<OpenCameraResult>> objectRef2, AndroidCameraState androidCameraState, Continuation<? super CameraStateOpener$tryOpenCamera$2$result$1$3> continuation) {
        super(1, continuation);
        this.$timeoutJob = objectRef;
        this.$cameraOpenDeferred = objectRef2;
        this.$cameraState = androidCameraState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new CameraStateOpener$tryOpenCamera$2$result$1$3(this.$timeoutJob, this.$cameraOpenDeferred, this.$cameraState, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super OpenCameraResult> continuation) {
        return ((CameraStateOpener$tryOpenCamera$2$result$1$3) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
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
        return new OpenCameraResult(null, CameraError.m1156boximpl(CameraError.INSTANCE.m1173getERROR_CAMERA_OPEN_TIMEOUTv7Vf74A()), 1, null);
    }
}
