package androidx.camera.camera2.pipe.compat;

import com.android.dx.DexMaker$$ExternalSyntheticBUOutline0;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;", "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$resultDeferred$1", m873f = "RetryingCameraStateOpener.kt", m874i = {}, m875l = {291}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
public final class CameraStateOpener$tryOpenCamera$2$resultDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super OpenCameraResult>, Object> {
    final /* synthetic */ AndroidCameraState $cameraState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$2$resultDeferred$1(AndroidCameraState androidCameraState, Continuation<? super CameraStateOpener$tryOpenCamera$2$resultDeferred$1> continuation) {
        super(2, continuation);
        this.$cameraState = androidCameraState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CameraStateOpener$tryOpenCamera$2$resultDeferred$1(this.$cameraState, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super OpenCameraResult> continuation) {
        return ((CameraStateOpener$tryOpenCamera$2$resultDeferred$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            StateFlow<CameraState> state = this.$cameraState.getState();
            CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 = new CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1(null);
            this.label = 1;
            obj = FlowKt.first(state, cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        CameraState cameraState = (CameraState) obj;
        if (cameraState instanceof CameraStateOpen) {
            return new OpenCameraResult(this.$cameraState, null, 2, null);
        }
        if (cameraState instanceof CameraStateClosing) {
            this.$cameraState.close();
            return new OpenCameraResult(null, ((CameraStateClosing) cameraState).getCameraErrorCode(), 1, null);
        }
        if (cameraState instanceof CameraStateClosed) {
            this.$cameraState.close();
            return new OpenCameraResult(null, ((CameraStateClosed) cameraState).getCameraErrorCode(), 1, null);
        }
        if (!(cameraState instanceof CameraStateUnopened)) {
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
            return null;
        }
        this.$cameraState.close();
        DexMaker$$ExternalSyntheticBUOutline0.m220m("Unexpected CameraState: ", cameraState);
        return null;
    }
}
