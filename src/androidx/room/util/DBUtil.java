package androidx.room.util;

import androidx.room.RoomDatabase;
import androidx.sqlite.SQLiteConnection;
import java.io.File;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"androidx/room/util/DBUtil__DBUtilKt", "androidx/room/util/DBUtil__DBUtil_androidKt"}, m754k = 4, mv = {2, 1, 0}, xi = 48)
public abstract class DBUtil {
    public static final void dropFtsSyncTriggers(SQLiteConnection sQLiteConnection) {
        DBUtil__DBUtilKt.dropFtsSyncTriggers(sQLiteConnection);
    }

    public static final Object getCoroutineContext(RoomDatabase roomDatabase, boolean z, Continuation<? super CoroutineContext> continuation) {
        return DBUtil__DBUtil_androidKt.getCoroutineContext(roomDatabase, z, continuation);
    }

    public static final <R> R performBlocking(RoomDatabase roomDatabase, boolean z, boolean z2, Function1<? super SQLiteConnection, ? extends R> function1) {
        return (R) DBUtil__DBUtil_androidKt.performBlocking(roomDatabase, z, z2, function1);
    }

    public static final <R> Object performInTransactionSuspending(RoomDatabase roomDatabase, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super R> continuation) {
        return DBUtil__DBUtil_androidKt.performInTransactionSuspending(roomDatabase, function1, continuation);
    }

    public static final <R> Object performSuspending(RoomDatabase roomDatabase, boolean z, boolean z2, Function1<? super SQLiteConnection, ? extends R> function1, Continuation<? super R> continuation) {
        return DBUtil__DBUtil_androidKt.performSuspending(roomDatabase, z, z2, function1, continuation);
    }

    public static final int readVersion(File file) {
        return DBUtil__DBUtil_androidKt.readVersion(file);
    }
}
