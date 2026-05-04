package androidx.camera.camera2.pipe.core;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes3.dex */
final class PruningProcessingQueue$processingLoop$2$1$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ Ref$ObjectRef $processDeferred;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PruningProcessingQueue$processingLoop$2$1$2(Ref$ObjectRef ref$ObjectRef, Continuation continuation) {
        super(2, continuation);
        this.$processDeferred = ref$ObjectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PruningProcessingQueue$processingLoop$2$1$2(this.$processDeferred, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Unit unit, Continuation continuation) {
        return ((PruningProcessingQueue$processingLoop$2$1$2) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        this.$processDeferred.element = null;
        return Unit.INSTANCE;
    }
}
