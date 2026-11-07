package androidx.sqlite;

import android.database.SQLException;
import kotlin.Metadata;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0003\u001a\u0019\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/sqlite/SQLiteConnection;", _UrlKt.FRAGMENT_ENCODE_SET, "sql", _UrlKt.FRAGMENT_ENCODE_SET, "execSQL", "(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V", _UrlKt.FRAGMENT_ENCODE_SET, "errorCode", "errorMsg", _UrlKt.FRAGMENT_ENCODE_SET, "throwSQLiteException", "(ILjava/lang/String;)Ljava/lang/Void;", "sqlite"}, m862k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "SQLite")
@SourceDebugExtension({"SMAP\nSQLite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SQLite.kt\nandroidx/sqlite/SQLite\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n1#2:70\n*E\n"})
public abstract class SQLite {
    public static final void execSQL(SQLiteConnection sQLiteConnection, String str) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
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
            sb.append(", message: ".concat(str));
        }
        throw new SQLException(sb.toString());
    }
}
