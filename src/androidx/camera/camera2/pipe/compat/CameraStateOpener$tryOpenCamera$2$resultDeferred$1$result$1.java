package androidx.camera.camera2.pipe.compat;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "it", "Landroidx/camera/camera2/pipe/compat/CameraState;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1", m873f = "RetryingCameraStateOpener.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
public final class CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 extends SuspendLambda implements Function2<CameraState, Continuation<? super Boolean>, Object> {
    /* synthetic */ Object L$0;
    int label;

    public CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1(Continuation<? super CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 = new CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1(continuation);
        cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1.L$0 = obj;
        return cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CameraState cameraState, Continuation<? super Boolean> continuation) {
        return ((CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1) create(cameraState, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(!(((CameraState) this.L$0) instanceof CameraStateUnopened));
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
