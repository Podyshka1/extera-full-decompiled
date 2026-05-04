package androidx.room;

import java.util.Set;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class RoomDatabaseKt {
    public static final Object compatTransactionCoroutineExecute(RoomDatabase roomDatabase, Function1 function1, Continuation continuation) {
        return RoomDatabaseKt__RoomDatabase_androidKt.compatTransactionCoroutineExecute(roomDatabase, function1, continuation);
    }

    public static final void validateAutoMigrations(RoomDatabase roomDatabase, DatabaseConfiguration databaseConfiguration) {
        RoomDatabaseKt__RoomDatabaseKt.validateAutoMigrations(roomDatabase, databaseConfiguration);
    }

    public static final void validateMigrationsNotRequired(Set set, Set set2) {
        RoomDatabaseKt__RoomDatabaseKt.validateMigrationsNotRequired(set, set2);
    }

    public static final void validateTypeConverters(RoomDatabase roomDatabase, DatabaseConfiguration databaseConfiguration) {
        RoomDatabaseKt__RoomDatabaseKt.validateTypeConverters(roomDatabase, databaseConfiguration);
    }

    public static final Object withTransactionContext(RoomDatabase roomDatabase, Function1 function1, Continuation continuation) {
        return RoomDatabaseKt__RoomDatabase_androidKt.withTransactionContext(roomDatabase, function1, continuation);
    }
}
