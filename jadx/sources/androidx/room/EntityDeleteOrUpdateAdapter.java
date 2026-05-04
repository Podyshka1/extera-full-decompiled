package androidx.room;

import androidx.room.util.SQLiteConnectionUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class EntityDeleteOrUpdateAdapter {
    protected abstract void bind(SQLiteStatement sQLiteStatement, Object obj);

    protected abstract String createQuery();

    public final int handle(SQLiteConnection connection, Object obj) throws Exception {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (obj == null) {
            return 0;
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            bind(sQLiteStatementPrepare, obj);
            sQLiteStatementPrepare.step();
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return SQLiteConnectionUtil.getTotalChangedRows(connection);
        } finally {
        }
    }
}
