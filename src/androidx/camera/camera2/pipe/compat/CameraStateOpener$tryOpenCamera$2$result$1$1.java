package androidx.camera.camera2.pipe.compat;

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
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Deferred;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;", "it"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$result$1$1", m873f = "RetryingCameraStateOpener.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
@SourceDebugExtension({"SMAP\nRetryingCameraStateOpener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$1\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,665:1\n50#2,2:666\n*S KotlinDebug\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$1\n*L\n326#1:666,2\n*E\n"})
public final class CameraStateOpener$tryOpenCamera$2$result$1$1 extends SuspendLambda implements Function2<OpenCameraResult, Continuation<? super OpenCameraResult>, Object> {
    final /* synthetic */ String $cameraId;
    final /* synthetic */ Ref.ObjectRef<Deferred<OpenCameraResult>> $cameraOpenDeferred;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$2$result$1$1(Ref.ObjectRef<Deferred<OpenCameraResult>> objectRef, String str, Continuation<? super CameraStateOpener$tryOpenCamera$2$result$1$1> continuation) {
        super(2, continuation);
        this.$cameraOpenDeferred = objectRef;
        this.$cameraId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CameraStateOpener$tryOpenCamera$2$result$1$1 cameraStateOpener$tryOpenCamera$2$result$1$1 = new CameraStateOpener$tryOpenCamera$2$result$1$1(this.$cameraOpenDeferred, this.$cameraId, continuation);
        cameraStateOpener$tryOpenCamera$2$result$1$1.L$0 = obj;
        return cameraStateOpener$tryOpenCamera$2$result$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(OpenCameraResult openCameraResult, Continuation<? super OpenCameraResult> continuation) {
        return ((CameraStateOpener$tryOpenCamera$2$result$1$1) create(openCameraResult, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        OpenCameraResult openCameraResult = (OpenCameraResult) this.L$0;
        Log log = Log.INSTANCE;
        String str = this.$cameraId;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "tryOpenCamera: openCamera() for " + ((Object) CameraId.m1303toStringimpl(str)) + " returned");
        }
        this.$cameraOpenDeferred.element = null;
        return openCameraResult;
    }
}
