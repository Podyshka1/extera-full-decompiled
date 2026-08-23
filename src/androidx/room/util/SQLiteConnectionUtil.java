package androidx.room.util;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.Metadata;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.JvmName;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003H\u0007¨\u0006\u0006"}, d2 = {"getLastInsertedRowId", _UrlKt.FRAGMENT_ENCODE_SET, "connection", "Landroidx/sqlite/SQLiteConnection;", "getTotalChangedRows", _UrlKt.FRAGMENT_ENCODE_SET, "room-runtime"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "SQLiteConnectionUtil")
public abstract class SQLiteConnectionUtil {
    public static final long getLastInsertedRowId(SQLiteConnection sQLiteConnection) throws Exception {
        if (getTotalChangedRows(sQLiteConnection) == 0) {
            return -1L;
        }
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT last_insert_rowid()");
        try {
            sQLiteStatementPrepare.step();
            long j = sQLiteStatementPrepare.getLong(0);
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return j;
        } finally {
        }
    }

    public static final int getTotalChangedRows(SQLiteConnection sQLiteConnection) throws Exception {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT changes()");
        try {
            sQLiteStatementPrepare.step();
            int i = (int) sQLiteStatementPrepare.getLong(0);
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return i;
        } finally {
        }
    }
}
