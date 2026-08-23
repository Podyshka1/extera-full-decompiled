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
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2", m766f = "RetryingCameraStateOpener.kt", m767i = {1}, m768l = {497, 503}, m769m = "invokeSuspend", m770n = {"androidCameraState"}, m771s = {"L$0"}, m772v = 1)
@SourceDebugExtension({"SMAP\nRetryingCameraStateOpener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,665:1\n82#2,2:666\n59#2,2:668\n82#2,2:670\n*S KotlinDebug\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2\n*L\n499#1:666,2\n505#1:668,2\n508#1:670,2\n*E\n"})
public final class RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AwaitOpenCameraResult>, Object> {
    final /* synthetic */ Camera2DeviceCloser $camera2DeviceCloser;
    final /* synthetic */ String $cameraId;
    Object L$0;
    int label;
    final /* synthetic */ RetryingCameraStateOpenerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2(RetryingCameraStateOpenerImpl retryingCameraStateOpenerImpl, String str, Camera2DeviceCloser camera2DeviceCloser, Continuation<? super RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2> continuation) {
        super(2, continuation);
        this.this$0 = retryingCameraStateOpenerImpl;
        this.$cameraId = str;
        this.$camera2DeviceCloser = camera2DeviceCloser;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2(this.this$0, this.$cameraId, this.$camera2DeviceCloser, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super AwaitOpenCameraResult> continuation) {
        return ((RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0080, code lost:
    
        if (r1 == r7) goto L22;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object objM1455openCameraWithRetryaeCOTgg$default;
        AndroidCameraState cameraState;
        Object objFirst;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            RetryingCameraStateOpenerImpl retryingCameraStateOpenerImpl = this.this$0;
            String str = this.$cameraId;
            Camera2DeviceCloser camera2DeviceCloser = this.$camera2DeviceCloser;
            this.label = 1;
            objM1455openCameraWithRetryaeCOTgg$default = RetryingCameraStateOpener.m1455openCameraWithRetryaeCOTgg$default(retryingCameraStateOpenerImpl, str, camera2DeviceCloser, null, this, 4, null);
            if (objM1455openCameraWithRetryaeCOTgg$default != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            cameraState = (AndroidCameraState) this.L$0;
            ResultKt.throwOnFailure(obj);
            objFirst = obj;
            CameraState cameraState2 = (CameraState) objFirst;
            if (cameraState2 instanceof CameraStateOpen) {
                Log log = Log.INSTANCE;
                String str2 = this.$cameraId;
                if (log.getINFO_LOGGABLE()) {
                    android.util.Log.i("CXCP", ((Object) CameraId.m1213toStringimpl(str2)) + " opened successfully.");
                }
                return new AwaitOpenCameraResult(((CameraStateOpen) cameraState2).getCameraDevice(), cameraState);
            }
            Log log2 = Log.INSTANCE;
            String str3 = this.$cameraId;
            if (log2.getERROR_LOGGABLE()) {
                android.util.Log.e("CXCP", "Failed to open " + ((Object) CameraId.m1213toStringimpl(str3)) + '!');
            }
            return new AwaitOpenCameraResult(null, null);
        }
        ResultKt.throwOnFailure(obj);
        objM1455openCameraWithRetryaeCOTgg$default = obj;
        cameraState = ((OpenCameraResult) objM1455openCameraWithRetryaeCOTgg$default).getCameraState();
        if (cameraState == null) {
            Log log3 = Log.INSTANCE;
            String str4 = this.$cameraId;
            if (log3.getERROR_LOGGABLE()) {
                android.util.Log.e("CXCP", "Failed to open " + ((Object) CameraId.m1213toStringimpl(str4)) + '!');
            }
            return new AwaitOpenCameraResult(null, null);
        }
        StateFlow<CameraState> state = cameraState.getState();
        C0220xd8ef133c c0220xd8ef133c = new C0220xd8ef133c(null);
        this.L$0 = cameraState;
        this.label = 2;
        objFirst = FlowKt.first(state, c0220xd8ef133c, this);
    }
}
