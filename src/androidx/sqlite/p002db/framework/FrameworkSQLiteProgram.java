package androidx.sqlite.p002db.framework;

import android.database.sqlite.SQLiteProgram;
import androidx.sqlite.p002db.SupportSQLiteProgram;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class FrameworkSQLiteProgram implements SupportSQLiteProgram {
    private final SQLiteProgram delegate;

    public FrameworkSQLiteProgram(SQLiteProgram delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // androidx.sqlite.p002db.SupportSQLiteProgram
    public void bindNull(int i) {
        this.delegate.bindNull(i);
    }

    @Override // androidx.sqlite.p002db.SupportSQLiteProgram
    public void bindLong(int i, long j) {
        this.delegate.bindLong(i, j);
    }

    @Override // androidx.sqlite.p002db.SupportSQLiteProgram
    public void bindDouble(int i, double d) {
        this.delegate.bindDouble(i, d);
    }

    @Override // androidx.sqlite.p002db.SupportSQLiteProgram
    public void bindString(int i, String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.delegate.bindString(i, value);
    }

    @Override // androidx.sqlite.p002db.SupportSQLiteProgram
    public void bindBlob(int i, byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.delegate.bindBlob(i, value);
    }

    @Override // androidx.sqlite.p002db.SupportSQLiteProgram
    public void clearBindings() {
        this.delegate.clearBindings();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }
}
