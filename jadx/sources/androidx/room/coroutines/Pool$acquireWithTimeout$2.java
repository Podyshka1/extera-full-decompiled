package androidx.room.coroutines;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
final class Pool$acquireWithTimeout$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ Ref$ObjectRef $connection;
    Object L$0;
    int label;
    final /* synthetic */ Pool this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Pool$acquireWithTimeout$2(Ref$ObjectRef ref$ObjectRef, Pool pool, Continuation continuation) {
        super(2, continuation);
        this.$connection = ref$ObjectRef;
        this.this$0 = pool;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new Pool$acquireWithTimeout$2(this.$connection, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((Pool$acquireWithTimeout$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Ref$ObjectRef ref$ObjectRef;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Ref$ObjectRef ref$ObjectRef2 = this.$connection;
            Pool pool = this.this$0;
            this.L$0 = ref$ObjectRef2;
            this.label = 1;
            Object objAcquire = pool.acquire(this);
            if (objAcquire == coroutine_suspended) {
                return coroutine_suspended;
            }
            ref$ObjectRef = ref$ObjectRef2;
            obj = objAcquire;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef = (Ref$ObjectRef) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        ref$ObjectRef.element = obj;
        return Unit.INSTANCE;
    }
}
