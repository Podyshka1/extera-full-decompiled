package androidx.room;

import androidx.sqlite.SQLiteStatement;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u001c\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/PooledConnection;", _UrlKt.FRAGMENT_ENCODE_SET, "sql", _UrlKt.FRAGMENT_ENCODE_SET, "execSQL", "(Landroidx/room/PooledConnection;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "room-runtime"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TransactorKt {
    public static final Object execSQL(PooledConnection pooledConnection, String str, Continuation<? super Unit> continuation) {
        Object objUsePrepared = pooledConnection.usePrepared(str, new Function1() { // from class: androidx.room.TransactorKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(((SQLiteStatement) obj).step());
            }
        }, continuation);
        return objUsePrepared == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objUsePrepared : Unit.INSTANCE;
    }
}
