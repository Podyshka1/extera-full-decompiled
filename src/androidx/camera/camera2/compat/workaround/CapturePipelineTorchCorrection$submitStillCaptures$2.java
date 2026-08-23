package androidx.camera.camera2.compat.workaround;

import android.util.Log;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.core.Logger;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection$submitStillCaptures$2", m766f = "CapturePipelineTorchCorrection.kt", m767i = {}, m768l = {86, 88, 89}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
@SourceDebugExtension({"SMAP\nCapturePipelineTorchCorrection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CapturePipelineTorchCorrection.kt\nandroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,131:1\n85#2,4:132\n85#2,4:136\n*S KotlinDebug\n*F\n+ 1 CapturePipelineTorchCorrection.kt\nandroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2\n*L\n87#1:132,4\n90#1:136,4\n*E\n"})
public final class CapturePipelineTorchCorrection$submitStillCaptures$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<Deferred<Void>> $deferredResults;
    int label;
    final /* synthetic */ CapturePipelineTorchCorrection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CapturePipelineTorchCorrection$submitStillCaptures$2(List<? extends Deferred<Void>> list, CapturePipelineTorchCorrection capturePipelineTorchCorrection, Continuation<? super CapturePipelineTorchCorrection$submitStillCaptures$2> continuation) {
        super(2, continuation);
        this.$deferredResults = list;
        this.this$0 = capturePipelineTorchCorrection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CapturePipelineTorchCorrection$submitStillCaptures$2(this.$deferredResults, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CapturePipelineTorchCorrection$submitStillCaptures$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007e, code lost:
    
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
            List<Deferred<Void>> list = this.$deferredResults;
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "Re-enable Torch to correct the Torch state, done");
                }
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            Deferred deferredM1058setTorchAsyncOup_wC0$camera_camera2$default = TorchControl.m1058setTorchAsyncOup_wC0$camera_camera2$default(this.this$0.torchControl, TorchControl.TorchMode.INSTANCE.m1070getUSED_AS_FLASHIRs_R8(), false, false, 6, null);
            this.label = 3;
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Re-enable Torch to correct the Torch state");
        }
        Deferred deferredM1058setTorchAsyncOup_wC0$camera_camera2$default2 = TorchControl.m1058setTorchAsyncOup_wC0$camera_camera2$default(this.this$0.torchControl, TorchControl.TorchMode.INSTANCE.m1068getOFFIRs_R8(), false, false, 6, null);
        this.label = 2;
        if (deferredM1058setTorchAsyncOup_wC0$camera_camera2$default2.join(this) != coroutine_suspended) {
            Deferred deferredM1058setTorchAsyncOup_wC0$camera_camera2$default3 = TorchControl.m1058setTorchAsyncOup_wC0$camera_camera2$default(this.this$0.torchControl, TorchControl.TorchMode.INSTANCE.m1070getUSED_AS_FLASHIRs_R8(), false, false, 6, null);
            this.label = 3;
        }
        return coroutine_suspended;
    }
}
