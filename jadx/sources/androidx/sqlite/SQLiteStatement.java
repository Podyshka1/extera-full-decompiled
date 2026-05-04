package androidx.sqlite;

/* JADX INFO: loaded from: classes.dex */
public interface SQLiteStatement extends AutoCloseable {
    void bindBlob(int i, byte[] bArr);

    void bindLong(int i, long j);

    void bindNull(int i);

    void bindText(int i, String str);

    void clearBindings();

    @Override // java.lang.AutoCloseable
    void close();

    byte[] getBlob(int i);

    boolean getBoolean(int i);

    int getColumnCount();

    String getColumnName(int i);

    long getLong(int i);

    String getText(int i);

    boolean isNull(int i);

    void reset();

    boolean step();

    /* JADX INFO: renamed from: androidx.sqlite.SQLiteStatement$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static boolean $default$getBoolean(SQLiteStatement sQLiteStatement, int i) {
            return sQLiteStatement.getLong(i) != 0;
        }
    }
}
