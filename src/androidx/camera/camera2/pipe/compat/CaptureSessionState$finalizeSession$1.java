package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.core.Log;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes3.dex */
final class CaptureSessionState$finalizeSession$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ long $delayMs;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ CaptureSessionState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CaptureSessionState$finalizeSession$1(long j, CaptureSessionState captureSessionState, Continuation continuation) {
        super(2, continuation);
        this.$delayMs = j;
        this.this$0 = captureSessionState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        CaptureSessionState$finalizeSession$1 captureSessionState$finalizeSession$1 = new CaptureSessionState$finalizeSession$1(this.$delayMs, this.this$0, continuation);
        captureSessionState$finalizeSession$1.L$0 = obj;
        return captureSessionState$finalizeSession$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((CaptureSessionState$finalizeSession$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            Log log = Log.INSTANCE;
            long j = this.$delayMs;
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "Finalizing " + coroutineScope + " in " + j + " ms");
            }
            long j2 = this.$delayMs;
            this.label = 1;
            if (DelayKt.delay(j2, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        this.this$0.finalizeSession$camera_camera2_pipe(0L);
        return Unit.INSTANCE;
    }
}
