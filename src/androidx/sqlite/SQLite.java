package androidx.sqlite;

import android.database.SQLException;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class SQLite {
    public static final void execSQL(SQLiteConnection sQLiteConnection, String sql) throws Exception {
        Intrinsics.checkNotNullParameter(sQLiteConnection, "<this>");
        Intrinsics.checkNotNullParameter(sql, "sql");
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(sql);
        try {
            sQLiteStatementPrepare.step();
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
        } finally {
        }
    }

    public static final Void throwSQLiteException(int i, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Error code: " + i);
        if (str != null) {
            sb.append(", message: " + str);
        }
        throw new SQLException(sb.toString());
    }
}
