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
import kotlinx.coroutines.Job;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$result$1$4", m766f = "RetryingCameraStateOpener.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
@SourceDebugExtension({"SMAP\nRetryingCameraStateOpener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,665:1\n50#2,2:666\n*S KotlinDebug\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4\n*L\n352#1:666,2\n*E\n"})
public final class CameraStateOpener$tryOpenCamera$2$result$1$4 extends SuspendLambda implements Function1<Continuation<? super OpenCameraResult>, Object> {
    final /* synthetic */ Ref.ObjectRef<Job> $cameraOpenCancelJob;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$2$result$1$4(Ref.ObjectRef<Job> objectRef, Continuation<? super CameraStateOpener$tryOpenCamera$2$result$1$4> continuation) {
        super(1, continuation);
        this.$cameraOpenCancelJob = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new CameraStateOpener$tryOpenCamera$2$result$1$4(this.$cameraOpenCancelJob, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super OpenCameraResult> continuation) {
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
            return new OpenCameraResult(null, CameraError.m1156boximpl(CameraError.INSTANCE.m1173getERROR_CAMERA_OPEN_TIMEOUTv7Vf74A()), 1, null);
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
