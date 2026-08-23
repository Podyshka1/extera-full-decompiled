package androidx.camera.camera2.pipe.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes3.dex */
final class GraphSessionLock$asyncUndispatched$result$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function2 $block;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GraphSessionLock$asyncUndispatched$result$1(Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        GraphSessionLock$asyncUndispatched$result$1 graphSessionLock$asyncUndispatched$result$1 = new GraphSessionLock$asyncUndispatched$result$1(this.$block, continuation);
        graphSessionLock$asyncUndispatched$result$1.L$0 = obj;
        return graphSessionLock$asyncUndispatched$result$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((GraphSessionLock$asyncUndispatched$result$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
        CoroutineScopeKt.ensureActive(coroutineScope);
        Function2 function2 = this.$block;
        this.label = 1;
        Object objInvoke = function2.invoke(coroutineScope, this);
        return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
    }
}
