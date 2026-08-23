package androidx.sqlite.driver;

import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.p002db.SupportSQLiteDatabase;
import java.io.IOException;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class SupportSQLiteConnection implements SQLiteConnection {

    /* JADX INFO: renamed from: db */
    private final SupportSQLiteDatabase f71db;

    public SupportSQLiteConnection(SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        this.f71db = db;
    }

    public final SupportSQLiteDatabase getDb() {
        return this.f71db;
    }

    @Override // androidx.sqlite.SQLiteConnection
    public boolean inTransaction() {
        return this.f71db.inTransaction();
    }

    @Override // androidx.sqlite.SQLiteConnection
    public SQLiteStatement prepare(String sql) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        if (this.f71db.isOpen()) {
            return SupportSQLiteStatement.Companion.create(this.f71db, sql);
        }
        SQLite.throwSQLiteException(21, "connection is closed");
        throw new KotlinNothingValueException();
    }

    @Override // androidx.sqlite.SQLiteConnection, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f71db.close();
    }
}
