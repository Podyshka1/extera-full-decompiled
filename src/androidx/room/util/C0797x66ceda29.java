package androidx.room.util;

import androidx.room.RoomDatabase;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 */
/* JADX INFO: loaded from: classes4.dex */
public final class C0797x66ceda29 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function1 $block$inlined;
    final /* synthetic */ RoomDatabase $db$inlined;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0797x66ceda29(Continuation continuation, RoomDatabase roomDatabase, Function1 function1) {
        super(2, continuation);
        this.$db$inlined = roomDatabase;
        this.$block$inlined = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0797x66ceda29(continuation, this.$db$inlined, this.$block$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((C0797x66ceda29) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        RoomDatabase roomDatabase = this.$db$inlined;
        C0801x5eaa2107 c0801x5eaa2107 = new C0801x5eaa2107(true, false, roomDatabase, null, this.$block$inlined);
        this.label = 1;
        Object objUseConnection = roomDatabase.useConnection(false, c0801x5eaa2107, this);
        return objUseConnection == coroutine_suspended ? coroutine_suspended : objUseConnection;
    }
}
