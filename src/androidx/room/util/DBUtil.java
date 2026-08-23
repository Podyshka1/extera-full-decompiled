package androidx.room.util;

import androidx.room.RoomDatabase;
import androidx.sqlite.SQLiteConnection;
import java.io.File;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class DBUtil {
    public static final void dropFtsSyncTriggers(SQLiteConnection sQLiteConnection) {
        DBUtil__DBUtilKt.dropFtsSyncTriggers(sQLiteConnection);
    }

    public static final Object getCoroutineContext(RoomDatabase roomDatabase, boolean z, Continuation continuation) {
        return DBUtil__DBUtil_androidKt.getCoroutineContext(roomDatabase, z, continuation);
    }

    public static final Object performBlocking(RoomDatabase roomDatabase, boolean z, boolean z2, Function1 function1) {
        return DBUtil__DBUtil_androidKt.performBlocking(roomDatabase, z, z2, function1);
    }

    public static final Object performInTransactionSuspending(RoomDatabase roomDatabase, Function1 function1, Continuation continuation) {
        return DBUtil__DBUtil_androidKt.performInTransactionSuspending(roomDatabase, function1, continuation);
    }

    public static final Object performSuspending(RoomDatabase roomDatabase, boolean z, boolean z2, Function1 function1, Continuation continuation) {
        return DBUtil__DBUtil_androidKt.performSuspending(roomDatabase, z, z2, function1, continuation);
    }

    public static final int readVersion(File file) {
        return DBUtil__DBUtil_androidKt.readVersion(file);
    }
}
