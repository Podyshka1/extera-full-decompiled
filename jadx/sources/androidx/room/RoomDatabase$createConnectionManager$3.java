package androidx.room;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class RoomDatabase$createConnectionManager$3 extends FunctionReferenceImpl implements Function2 {
    RoomDatabase$createConnectionManager$3(Object obj) {
        super(2, obj, RoomDatabaseKt__RoomDatabase_androidKt.class, "compatTransactionCoroutineExecute", "compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 1);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Function1 function1, Continuation continuation) {
        return RoomDatabaseKt.compatTransactionCoroutineExecute((RoomDatabase) this.receiver, function1, continuation);
    }
}
