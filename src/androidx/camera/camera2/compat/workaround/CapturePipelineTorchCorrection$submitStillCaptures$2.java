package androidx.camera.camera2.compat.workaround;

import android.util.Log;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.core.Logger;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
final class CapturePipelineTorchCorrection$submitStillCaptures$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ List $deferredResults;
    int label;
    final /* synthetic */ CapturePipelineTorchCorrection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CapturePipelineTorchCorrection$submitStillCaptures$2(List list, CapturePipelineTorchCorrection capturePipelineTorchCorrection, Continuation continuation) {
        super(2, continuation);
        this.$deferredResults = list;
        this.this$0 = capturePipelineTorchCorrection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CapturePipelineTorchCorrection$submitStillCaptures$2(this.$deferredResults, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((CapturePipelineTorchCorrection$submitStillCaptures$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007f, code lost:
    
        if (r12.join(r11) != r0) goto L24;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            List list = this.$deferredResults;
            this.label = 1;
            if (AwaitKt.joinAll(list, this) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            ResultKt.throwOnFailure(obj);
        } else {
            if (i != 2) {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "Re-enable Torch to correct the Torch state, done");
                }
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            Deferred deferredM1452setTorchAsyncOup_wC0$camera_camera2$default = TorchControl.m1452setTorchAsyncOup_wC0$camera_camera2$default(this.this$0.torchControl, TorchControl.TorchMode.Companion.m1464getUSED_AS_FLASHIRs_R8(), false, false, 6, null);
            this.label = 3;
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Re-enable Torch to correct the Torch state");
        }
        Deferred deferredM1452setTorchAsyncOup_wC0$camera_camera2$default2 = TorchControl.m1452setTorchAsyncOup_wC0$camera_camera2$default(this.this$0.torchControl, TorchControl.TorchMode.Companion.m1462getOFFIRs_R8(), false, false, 6, null);
        this.label = 2;
        if (deferredM1452setTorchAsyncOup_wC0$camera_camera2$default2.join(this) != coroutine_suspended) {
            Deferred deferredM1452setTorchAsyncOup_wC0$camera_camera2$default3 = TorchControl.m1452setTorchAsyncOup_wC0$camera_camera2$default(this.this$0.torchControl, TorchControl.TorchMode.Companion.m1464getUSED_AS_FLASHIRs_R8(), false, false, 6, null);
            this.label = 3;
        }
        return coroutine_suspended;
    }
}
