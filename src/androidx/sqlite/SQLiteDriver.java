package androidx.sqlite;

/* JADX INFO: loaded from: classes.dex */
public interface SQLiteDriver {
    boolean hasConnectionPool();

    SQLiteConnection open(String str);
}
