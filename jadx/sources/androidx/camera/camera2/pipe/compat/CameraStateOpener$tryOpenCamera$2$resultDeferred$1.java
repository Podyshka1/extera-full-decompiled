package androidx.camera.camera2.pipe.compat;

import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes3.dex */
final class CameraStateOpener$tryOpenCamera$2$resultDeferred$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ AndroidCameraState $cameraState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CameraStateOpener$tryOpenCamera$2$resultDeferred$1(AndroidCameraState androidCameraState, Continuation continuation) {
        super(2, continuation);
        this.$cameraState = androidCameraState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CameraStateOpener$tryOpenCamera$2$resultDeferred$1(this.$cameraState, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((CameraStateOpener$tryOpenCamera$2$resultDeferred$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            StateFlow state = this.$cameraState.getState();
            CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 = new CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1(null);
            this.label = 1;
            obj = FlowKt.first(state, cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        CameraState cameraState = (CameraState) obj;
        if (cameraState instanceof CameraStateOpen) {
            return new OpenCameraResult(this.$cameraState, null, 2, null);
        }
        if (cameraState instanceof CameraStateClosing) {
            this.$cameraState.close();
            return new OpenCameraResult(null, ((CameraStateClosing) cameraState).m1846getCameraErrorCodemVEW8x0(), 1, null);
        }
        if (cameraState instanceof CameraStateClosed) {
            this.$cameraState.close();
            return new OpenCameraResult(null, ((CameraStateClosed) cameraState).m1845getCameraErrorCodemVEW8x0(), 1, null);
        }
        if (!(cameraState instanceof CameraStateUnopened)) {
            throw new NoWhenBranchMatchedException();
        }
        this.$cameraState.close();
        throw new IllegalStateException("Unexpected CameraState: " + cameraState);
    }
}
