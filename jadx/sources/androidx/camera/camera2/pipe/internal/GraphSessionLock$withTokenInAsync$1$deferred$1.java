package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.core.Token;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
final class GraphSessionLock$withTokenInAsync$1$deferred$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function2 $action;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GraphSessionLock$withTokenInAsync$1$deferred$1(Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.$action = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        GraphSessionLock$withTokenInAsync$1$deferred$1 graphSessionLock$withTokenInAsync$1$deferred$1 = new GraphSessionLock$withTokenInAsync$1$deferred$1(this.$action, continuation);
        graphSessionLock$withTokenInAsync$1$deferred$1.L$0 = obj;
        return graphSessionLock$withTokenInAsync$1$deferred$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Token token, Continuation continuation) {
        return ((GraphSessionLock$withTokenInAsync$1$deferred$1) create(token, continuation)).invokeSuspend(Unit.INSTANCE);
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
        Token token = (Token) this.L$0;
        Function2 function2 = this.$action;
        this.label = 1;
        Object objInvoke = function2.invoke(token, this);
        return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
    }
}
