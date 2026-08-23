package androidx.sqlite.p002db;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.CancellationSignal;
import java.io.Closeable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface SupportSQLiteDatabase extends Closeable {
    void beginTransaction();

    void beginTransactionNonExclusive();

    void beginTransactionReadOnly();

    SupportSQLiteStatement compileStatement(String str);

    void disableWriteAheadLogging();

    boolean enableWriteAheadLogging();

    void endTransaction();

    void execSQL(String str);

    void execSQL(String str, Object[] objArr);

    List getAttachedDbs();

    String getPath();

    boolean inTransaction();

    boolean isOpen();

    boolean isWriteAheadLoggingEnabled();

    Cursor query(SupportSQLiteQuery supportSQLiteQuery);

    Cursor query(SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal);

    void setTransactionSuccessful();

    int update(String str, int i, ContentValues contentValues, String str2, Object[] objArr);

    /* JADX INFO: renamed from: androidx.sqlite.db.SupportSQLiteDatabase$-CC, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    public abstract /* synthetic */ class CC {
    }
}
