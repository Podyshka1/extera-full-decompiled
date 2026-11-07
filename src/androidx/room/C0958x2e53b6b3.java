package androidx.room;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: renamed from: androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1", m873f = "RoomDatabase.android.kt", m874i = {}, m875l = {2058}, m876m = "invokeSuspend", m877n = {}, m878s = {})
public final class C0958x2e53b6b3<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
    final /* synthetic */ Function1<Continuation<? super R>, Object> $block;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C0958x2e53b6b3(Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super C0958x2e53b6b3> continuation) {
        super(2, continuation);
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        C0958x2e53b6b3 c0958x2e53b6b3 = new C0958x2e53b6b3(this.$block, continuation);
        c0958x2e53b6b3.L$0 = obj;
        return c0958x2e53b6b3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
        return ((C0958x2e53b6b3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        if (((CoroutineScope) this.L$0).getCoroutineContext().get(TransactionElement.INSTANCE) == null) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Expected a TransactionElement in the CoroutineContext but none was found.");
            return null;
        }
        Function1<Continuation<? super R>, Object> function1 = this.$block;
        this.label = 1;
        Object objInvoke = function1.invoke(this);
        return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
    }
}
