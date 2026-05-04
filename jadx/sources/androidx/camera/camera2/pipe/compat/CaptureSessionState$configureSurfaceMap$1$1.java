package androidx.camera.camera2.pipe.compat;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
final class CaptureSessionState$configureSurfaceMap$1$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ CaptureSessionState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CaptureSessionState$configureSurfaceMap$1$1(CaptureSessionState captureSessionState, Continuation continuation) {
        super(2, continuation);
        this.this$0 = captureSessionState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CaptureSessionState$configureSurfaceMap$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((CaptureSessionState$configureSurfaceMap$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        CaptureSessionState.finalizeOutputsIfAvailable$default(this.this$0, false, 1, null);
        return Unit.INSTANCE;
    }
}
