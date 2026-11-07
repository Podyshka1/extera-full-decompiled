package androidx.room;

import java.util.Set;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"androidx/room/RoomDatabaseKt__RoomDatabaseKt", "androidx/room/RoomDatabaseKt__RoomDatabase_androidKt"}, m862k = 4, mv = {2, 1, 0}, xi = 48)
public abstract class RoomDatabaseKt {
    public static final <R> Object compatTransactionCoroutineExecute(RoomDatabase roomDatabase, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super R> continuation) {
        return RoomDatabaseKt__RoomDatabase_androidKt.compatTransactionCoroutineExecute(roomDatabase, function1, continuation);
    }

    public static final void validateAutoMigrations(RoomDatabase roomDatabase, DatabaseConfiguration databaseConfiguration) {
        RoomDatabaseKt__RoomDatabaseKt.validateAutoMigrations(roomDatabase, databaseConfiguration);
    }

    public static final void validateMigrationsNotRequired(Set<Integer> set, Set<Integer> set2) {
        RoomDatabaseKt__RoomDatabaseKt.validateMigrationsNotRequired(set, set2);
    }

    public static final void validateTypeConverters(RoomDatabase roomDatabase, DatabaseConfiguration databaseConfiguration) {
        RoomDatabaseKt__RoomDatabaseKt.validateTypeConverters(roomDatabase, databaseConfiguration);
    }

    public static final <R> Object withTransactionContext(RoomDatabase roomDatabase, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super R> continuation) {
        return RoomDatabaseKt__RoomDatabase_androidKt.withTransactionContext(roomDatabase, function1, continuation);
    }
}
