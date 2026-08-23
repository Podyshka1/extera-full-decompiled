package androidx.sqlite;

/* JADX INFO: loaded from: classes.dex */
public interface SQLiteConnection extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean inTransaction();

    SQLiteStatement prepare(String str);
}
