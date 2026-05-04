package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.compat.VirtualCamera;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
final class Camera2CameraController$detachSessionAndCamera$job$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ VirtualCamera $camera;
    final /* synthetic */ CaptureSessionState $session;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Camera2CameraController$detachSessionAndCamera$job$1(CaptureSessionState captureSessionState, VirtualCamera virtualCamera, Continuation continuation) {
        super(2, continuation);
        this.$session = captureSessionState;
        this.$camera = virtualCamera;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new Camera2CameraController$detachSessionAndCamera$job$1(this.$session, this.$camera, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((Camera2CameraController$detachSessionAndCamera$job$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        CaptureSessionState captureSessionState = this.$session;
        if (captureSessionState != null) {
            captureSessionState.shutdown();
        }
        VirtualCamera virtualCamera = this.$camera;
        if (virtualCamera != null) {
            VirtualCamera.CC.m1868disconnectTPqeGZw$default(virtualCamera, null, 1, null);
        }
        return Unit.INSTANCE;
    }
}
