package androidx.room;

import androidx.sqlite.SQLiteStatement;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class TransactorKt {
    public static final Object execSQL(PooledConnection pooledConnection, String str, Continuation continuation) {
        Object objUsePrepared = pooledConnection.usePrepared(str, new Function1() { // from class: androidx.room.TransactorKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(TransactorKt.execSQL$lambda$0((SQLiteStatement) obj));
            }
        }, continuation);
        return objUsePrepared == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objUsePrepared : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean execSQL$lambda$0(SQLiteStatement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.step();
    }
}
