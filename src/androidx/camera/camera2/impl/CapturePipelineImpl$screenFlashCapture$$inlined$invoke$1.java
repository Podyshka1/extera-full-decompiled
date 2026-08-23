package androidx.camera.camera2.impl;

import android.util.Log;
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

/* JADX INFO: loaded from: classes3.dex */
public final class CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ int $captureMode$inlined;
    final /* synthetic */ List $captureSignal;
    int label;
    final /* synthetic */ CapturePipelineImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1(List list, Continuation continuation, CapturePipelineImpl capturePipelineImpl, int i) {
        super(2, continuation);
        this.$captureSignal = list;
        this.this$0 = capturePipelineImpl;
        this.$captureMode$inlined = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1(this.$captureSignal, continuation, this.this$0, this.$captureMode$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005c, code lost:
    
        if (r6.invokeScreenFlashPostCaptureTasks(r1, r5) == r0) goto L21;
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
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal");
            }
            List list = this.$captureSignal;
            this.label = 1;
            if (AwaitKt.joinAll(list, this) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        ResultKt.throwOnFailure(obj);
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal done");
        }
        CapturePipelineImpl capturePipelineImpl = this.this$0;
        int i2 = this.$captureMode$inlined;
        this.label = 2;
    }
}
