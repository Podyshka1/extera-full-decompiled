package androidx.room;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: renamed from: androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 */
/* JADX INFO: loaded from: classes.dex */
final class C0760x2e53b6b3 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function1 $block;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0760x2e53b6b3(Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C0760x2e53b6b3 c0760x2e53b6b3 = new C0760x2e53b6b3(this.$block, continuation);
        c0760x2e53b6b3.L$0 = obj;
        return c0760x2e53b6b3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((C0760x2e53b6b3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        if (((CoroutineScope) this.L$0).getCoroutineContext().get(TransactionElement.Key) == null) {
            throw new IllegalStateException("Expected a TransactionElement in the CoroutineContext but none was found.");
        }
        Function1 function1 = this.$block;
        this.label = 1;
        Object objInvoke = function1.invoke(this);
        return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
    }
}
