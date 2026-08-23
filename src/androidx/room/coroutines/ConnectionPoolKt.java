package androidx.room.coroutines;

import androidx.sqlite.SQLiteDriver;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ConnectionPoolKt {
    public static final ConnectionPool newSingleConnectionPool(SQLiteDriver driver, String fileName, int i) {
        Intrinsics.checkNotNullParameter(driver, "driver");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return new ConnectionPoolImpl(driver, fileName, i);
    }

    public static final ConnectionPool newConnectionPool(SQLiteDriver driver, String fileName, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(driver, "driver");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return new ConnectionPoolImpl(driver, fileName, i, i2, i3);
    }
}
