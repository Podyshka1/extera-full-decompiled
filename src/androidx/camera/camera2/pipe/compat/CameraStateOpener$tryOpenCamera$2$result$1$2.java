package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Log;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes3.dex */
final class CameraStateOpener$tryOpenCamera$2$result$1$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ String $cameraId;
    final /* synthetic */ Ref$ObjectRef $resultDeferred;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CameraStateOpener$tryOpenCamera$2$result$1$2(Ref$ObjectRef ref$ObjectRef, String str, Continuation continuation) {
        super(2, continuation);
        this.$resultDeferred = ref$ObjectRef;
        this.$cameraId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        CameraStateOpener$tryOpenCamera$2$result$1$2 cameraStateOpener$tryOpenCamera$2$result$1$2 = new CameraStateOpener$tryOpenCamera$2$result$1$2(this.$resultDeferred, this.$cameraId, continuation);
        cameraStateOpener$tryOpenCamera$2$result$1$2.L$0 = obj;
        return cameraStateOpener$tryOpenCamera$2$result$1$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(OpenCameraResult openCameraResult, Continuation continuation) {
        return ((CameraStateOpener$tryOpenCamera$2$result$1$2) create(openCameraResult, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        OpenCameraResult openCameraResult = (OpenCameraResult) this.L$0;
        Log log = Log.INSTANCE;
        String str = this.$cameraId;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "tryOpenCamera: " + ((Object) CameraId.m1607toStringimpl(str)) + " opened");
        }
        this.$resultDeferred.element = null;
        return openCameraResult;
    }
}
