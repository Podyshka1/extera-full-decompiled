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
public final class CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ List $captureSignal;
    final /* synthetic */ boolean $lock3ARequired$inlined;
    int label;
    final /* synthetic */ CapturePipelineImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1(List list, Continuation continuation, boolean z, CapturePipelineImpl capturePipelineImpl) {
        super(2, continuation);
        this.$captureSignal = list;
        this.$lock3ARequired$inlined = z;
        this.this$0 = capturePipelineImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1(this.$captureSignal, continuation, this.$lock3ARequired$inlined, this.this$0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0071, code lost:
    
        if (r8.unlockAf(r5, r7) == r0) goto L26;
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
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#defaultNoFlashCapture: Unlocking 3A done");
            }
            return Unit.INSTANCE;
        }
        ResultKt.throwOnFailure(obj);
        Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal done");
        }
        if (this.$lock3ARequired$inlined) {
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#defaultNoFlashCapture: Unlocking 3A");
            }
            CapturePipelineImpl capturePipelineImpl = this.this$0;
            long j = CapturePipelineKt.CHECK_3A_TIMEOUT_IN_NS;
            this.label = 2;
        }
        return Unit.INSTANCE;
    }
}
