package androidx.room.coroutines;

import androidx.sqlite.SQLiteDriver;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u001a\"\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0000\u001a2\u0010\b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0000¨\u0006\u000b"}, d2 = {"newSingleConnectionPool", "Landroidx/room/coroutines/ConnectionPool;", "driver", "Landroidx/sqlite/SQLiteDriver;", "fileName", _UrlKt.FRAGMENT_ENCODE_SET, "preparedStatementCacheSize", _UrlKt.FRAGMENT_ENCODE_SET, "newConnectionPool", "maxNumOfReaders", "maxNumOfWriters", "room-runtime"}, m862k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ConnectionPoolKt {
    public static final ConnectionPool newSingleConnectionPool(SQLiteDriver sQLiteDriver, String str, int i) {
        return new ConnectionPoolImpl(sQLiteDriver, str, i);
    }

    public static final ConnectionPool newConnectionPool(SQLiteDriver sQLiteDriver, String str, int i, int i2, int i3) {
        return new ConnectionPoolImpl(sQLiteDriver, str, i, i2, i3);
    }
}
