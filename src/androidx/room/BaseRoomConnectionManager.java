package androidx.room;

import androidx.room.BaseRoomConnectionManager;
import androidx.room.RoomDatabase;
import androidx.room.RoomOpenDelegate;
import androidx.room.concurrent.ExclusiveLock;
import androidx.room.migration.Migration;
import androidx.room.util.MigrationUtil;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.SQLiteStatement;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseRoomConnectionManager {
    public static final Companion Companion = new Companion(null);
    private boolean isConfigured;
    private boolean isInitializing;

    /* JADX INFO: loaded from: classes4.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RoomDatabase.JournalMode.values().length];
            try {
                iArr[RoomDatabase.JournalMode.TRUNCATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    protected abstract List getCallbacks();

    protected abstract DatabaseConfiguration getConfiguration();

    protected abstract RoomOpenDelegate getOpenDelegate();

    public abstract String resolveFileName$room_runtime(String str);

    /* JADX INFO: loaded from: classes4.dex */
    protected final class DriverWrapper implements SQLiteDriver {
        private final SQLiteDriver actual;
        final /* synthetic */ BaseRoomConnectionManager this$0;

        @Override // androidx.sqlite.SQLiteDriver
        public boolean hasConnectionPool() {
            return this.actual.hasConnectionPool();
        }

        public DriverWrapper(BaseRoomConnectionManager baseRoomConnectionManager, SQLiteDriver actual) {
            Intrinsics.checkNotNullParameter(actual, "actual");
            this.this$0 = baseRoomConnectionManager;
            this.actual = actual;
        }

        @Override // androidx.sqlite.SQLiteDriver
        public SQLiteConnection open(String fileName) {
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            return openLocked(this.this$0.resolveFileName$room_runtime(fileName));
        }

        private final SQLiteConnection openLocked(final String str) {
            ExclusiveLock exclusiveLock = new ExclusiveLock(str, (this.this$0.isConfigured || this.this$0.isInitializing || Intrinsics.areEqual(str, ":memory:")) ? false : true);
            final BaseRoomConnectionManager baseRoomConnectionManager = this.this$0;
            return (SQLiteConnection) exclusiveLock.withLock(new Function0() { // from class: androidx.room.BaseRoomConnectionManager$DriverWrapper$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BaseRoomConnectionManager.DriverWrapper.openLocked$lambda$1(baseRoomConnectionManager, this, str);
                }
            }, new Function1() { // from class: androidx.room.BaseRoomConnectionManager$DriverWrapper$openLocked$2
                @Override // kotlin.jvm.functions.Function1
                public final Void invoke(Throwable error) {
                    Intrinsics.checkNotNullParameter(error, "error");
                    throw new IllegalStateException("Unable to open database '" + str + "'. Was a proper path / name used in Room's database builder?", error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final SQLiteConnection openLocked$lambda$1(BaseRoomConnectionManager baseRoomConnectionManager, DriverWrapper driverWrapper, String str) throws Exception {
            if (baseRoomConnectionManager.isInitializing) {
                throw new IllegalStateException("Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?");
            }
            SQLiteConnection sQLiteConnectionOpen = driverWrapper.actual.open(str);
            if (!baseRoomConnectionManager.isConfigured) {
                try {
                    baseRoomConnectionManager.isInitializing = true;
                    baseRoomConnectionManager.configureDatabase(sQLiteConnectionOpen);
                    return sQLiteConnectionOpen;
                } finally {
                    baseRoomConnectionManager.isInitializing = false;
                }
            }
            baseRoomConnectionManager.configurationConnection(sQLiteConnectionOpen);
            return sQLiteConnectionOpen;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void configureDatabase(SQLiteConnection sQLiteConnection) throws Exception {
        Object objM3604constructorimpl;
        configureBusyTimeout(sQLiteConnection);
        configureJournalMode(sQLiteConnection);
        configureSynchronousFlag(sQLiteConnection);
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("PRAGMA user_version");
        try {
            sQLiteStatementPrepare.step();
            int i = (int) sQLiteStatementPrepare.getLong(0);
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            if (i != getOpenDelegate().getVersion()) {
                SQLite.execSQL(sQLiteConnection, "BEGIN EXCLUSIVE TRANSACTION");
                try {
                    Result.Companion companion = Result.Companion;
                    if (i == 0) {
                        onCreate(sQLiteConnection);
                    } else {
                        onMigrate(sQLiteConnection, i, getOpenDelegate().getVersion());
                    }
                    SQLite.execSQL(sQLiteConnection, "PRAGMA user_version = " + getOpenDelegate().getVersion());
                    objM3604constructorimpl = Result.m3604constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.Companion;
                    objM3604constructorimpl = Result.m3604constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m3609isSuccessimpl(objM3604constructorimpl)) {
                    SQLite.execSQL(sQLiteConnection, "END TRANSACTION");
                }
                Throwable thM3606exceptionOrNullimpl = Result.m3606exceptionOrNullimpl(objM3604constructorimpl);
                if (thM3606exceptionOrNullimpl != null) {
                    SQLite.execSQL(sQLiteConnection, "ROLLBACK TRANSACTION");
                    throw thM3606exceptionOrNullimpl;
                }
            }
            onOpen(sQLiteConnection);
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void configurationConnection(SQLiteConnection sQLiteConnection) throws Exception {
        configureBusyTimeout(sQLiteConnection);
        configureSynchronousFlag(sQLiteConnection);
        getOpenDelegate().onOpen(sQLiteConnection);
    }

    private final void configureJournalMode(SQLiteConnection sQLiteConnection) throws Exception {
        if (getConfiguration().journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING) {
            SQLite.execSQL(sQLiteConnection, "PRAGMA journal_mode = WAL");
        } else {
            SQLite.execSQL(sQLiteConnection, "PRAGMA journal_mode = TRUNCATE");
        }
    }

    private final void configureSynchronousFlag(SQLiteConnection sQLiteConnection) throws Exception {
        if (getConfiguration().journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING) {
            SQLite.execSQL(sQLiteConnection, "PRAGMA synchronous = NORMAL");
        } else {
            SQLite.execSQL(sQLiteConnection, "PRAGMA synchronous = FULL");
        }
    }

    private final void configureBusyTimeout(SQLiteConnection sQLiteConnection) throws Exception {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("PRAGMA busy_timeout");
        try {
            sQLiteStatementPrepare.step();
            long j = sQLiteStatementPrepare.getLong(0);
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            if (j < 3000) {
                SQLite.execSQL(sQLiteConnection, "PRAGMA busy_timeout = 3000");
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.closeFinally(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    protected final void onCreate(SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        boolean zHasEmptySchema = hasEmptySchema(connection);
        getOpenDelegate().createAllTables(connection);
        if (!zHasEmptySchema) {
            RoomOpenDelegate.ValidationResult validationResultOnValidateSchema = getOpenDelegate().onValidateSchema(connection);
            if (!validationResultOnValidateSchema.isValid) {
                throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + validationResultOnValidateSchema.expectedFoundMsg).toString());
            }
        }
        updateIdentity(connection);
        getOpenDelegate().onCreate(connection);
        invokeCreateCallback(connection);
    }

    private final boolean hasEmptySchema(SQLiteConnection sQLiteConnection) throws Exception {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (sQLiteStatementPrepare.step()) {
                if (sQLiteStatementPrepare.getLong(0) == 0) {
                    z = true;
                }
            }
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return z;
        } finally {
        }
    }

    private final void updateIdentity(SQLiteConnection sQLiteConnection) throws Exception {
        createMasterTableIfNotExists(sQLiteConnection);
        SQLite.execSQL(sQLiteConnection, RoomMasterTable.createInsertQuery(getOpenDelegate().getIdentityHash()));
    }

    private final void createMasterTableIfNotExists(SQLiteConnection sQLiteConnection) throws Exception {
        SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    protected final void onMigrate(SQLiteConnection connection, int i, int i2) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        List listFindMigrationPath = MigrationUtil.findMigrationPath(getConfiguration().migrationContainer, i, i2);
        if (listFindMigrationPath != null) {
            getOpenDelegate().onPreMigrate(connection);
            Iterator it = listFindMigrationPath.iterator();
            while (it.hasNext()) {
                ((Migration) it.next()).migrate(connection);
            }
            RoomOpenDelegate.ValidationResult validationResultOnValidateSchema = getOpenDelegate().onValidateSchema(connection);
            if (!validationResultOnValidateSchema.isValid) {
                throw new IllegalStateException(("Migration didn't properly handle: " + validationResultOnValidateSchema.expectedFoundMsg).toString());
            }
            getOpenDelegate().onPostMigrate(connection);
            updateIdentity(connection);
            return;
        }
        if (MigrationUtil.isMigrationRequired(getConfiguration(), i, i2)) {
            throw new IllegalStateException(("A migration from " + i + " to " + i2 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions.").toString());
        }
        dropAllTables(connection);
        invokeDestructiveMigrationCallback(connection);
        getOpenDelegate().createAllTables(connection);
    }

    private final void dropAllTables(SQLiteConnection sQLiteConnection) throws Exception {
        if (getConfiguration().allowDestructiveMigrationForAllTables) {
            SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT name, type FROM sqlite_master WHERE type = 'table' OR type = 'view'");
            try {
                List listCreateListBuilder = CollectionsKt.createListBuilder();
                while (sQLiteStatementPrepare.step()) {
                    String text = sQLiteStatementPrepare.getText(0);
                    if (!StringsKt.startsWith$default(text, "sqlite_", false, 2, (Object) null) && !Intrinsics.areEqual(text, "android_metadata")) {
                        listCreateListBuilder.add(TuplesKt.m1081to(text, Boolean.valueOf(Intrinsics.areEqual(sQLiteStatementPrepare.getText(1), "view"))));
                    }
                }
                List<Pair> listBuild = CollectionsKt.build(listCreateListBuilder);
                AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
                for (Pair pair : listBuild) {
                    String str = (String) pair.component1();
                    if (((Boolean) pair.component2()).booleanValue()) {
                        SQLite.execSQL(sQLiteConnection, "DROP VIEW IF EXISTS `" + str + '`');
                    } else {
                        SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `" + str + '`');
                    }
                }
            } finally {
            }
        } else {
            getOpenDelegate().dropAllTables(sQLiteConnection);
        }
    }

    protected final void onOpen(SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        checkIdentity(connection);
        getOpenDelegate().onOpen(connection);
        invokeOpenCallback(connection);
        this.isConfigured = true;
    }

    private final void checkIdentity(SQLiteConnection sQLiteConnection) throws Exception {
        Object objM3604constructorimpl;
        RoomOpenDelegate.ValidationResult validationResultOnValidateSchema;
        if (hasRoomMasterTable(sQLiteConnection)) {
            SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1");
            try {
                String text = sQLiteStatementPrepare.step() ? sQLiteStatementPrepare.getText(0) : null;
                AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
                if (Intrinsics.areEqual(getOpenDelegate().getIdentityHash(), text) || Intrinsics.areEqual(getOpenDelegate().getLegacyIdentityHash(), text)) {
                    return;
                }
                throw new IllegalStateException(("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: " + getOpenDelegate().getIdentityHash() + ", found: " + text).toString());
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    AutoCloseableKt.closeFinally(sQLiteStatementPrepare, th);
                    throw th2;
                }
            }
        }
        SQLite.execSQL(sQLiteConnection, "BEGIN EXCLUSIVE TRANSACTION");
        try {
            Result.Companion companion = Result.Companion;
            validationResultOnValidateSchema = getOpenDelegate().onValidateSchema(sQLiteConnection);
        } catch (Throwable th3) {
            Result.Companion companion2 = Result.Companion;
            objM3604constructorimpl = Result.m3604constructorimpl(ResultKt.createFailure(th3));
        }
        if (!validationResultOnValidateSchema.isValid) {
            throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + validationResultOnValidateSchema.expectedFoundMsg).toString());
        }
        getOpenDelegate().onPostMigrate(sQLiteConnection);
        updateIdentity(sQLiteConnection);
        objM3604constructorimpl = Result.m3604constructorimpl(Unit.INSTANCE);
        if (Result.m3609isSuccessimpl(objM3604constructorimpl)) {
            SQLite.execSQL(sQLiteConnection, "END TRANSACTION");
        }
        Throwable thM3606exceptionOrNullimpl = Result.m3606exceptionOrNullimpl(objM3604constructorimpl);
        if (thM3606exceptionOrNullimpl != null) {
            SQLite.execSQL(sQLiteConnection, "ROLLBACK TRANSACTION");
            throw thM3606exceptionOrNullimpl;
        }
        Result.m3603boximpl(objM3604constructorimpl);
    }

    private final boolean hasRoomMasterTable(SQLiteConnection sQLiteConnection) throws Exception {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name = 'room_master_table'");
        try {
            boolean z = false;
            if (sQLiteStatementPrepare.step()) {
                if (sQLiteStatementPrepare.getLong(0) != 0) {
                    z = true;
                }
            }
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return z;
        } finally {
        }
    }

    protected final int getMaxNumberOfReaders(RoomDatabase.JournalMode journalMode) {
        Intrinsics.checkNotNullParameter(journalMode, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[journalMode.ordinal()];
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 4;
        }
        throw new IllegalStateException(("Can't get max number of reader for journal mode '" + journalMode + '\'').toString());
    }

    protected final int getMaxNumberOfWriters(RoomDatabase.JournalMode journalMode) {
        Intrinsics.checkNotNullParameter(journalMode, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[journalMode.ordinal()];
        if (i == 1 || i == 2) {
            return 1;
        }
        throw new IllegalStateException(("Can't get max number of writers for journal mode '" + journalMode + '\'').toString());
    }

    private final void invokeCreateCallback(SQLiteConnection sQLiteConnection) {
        Iterator it = getCallbacks().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.Callback) it.next()).onCreate(sQLiteConnection);
        }
    }

    private final void invokeDestructiveMigrationCallback(SQLiteConnection sQLiteConnection) {
        Iterator it = getCallbacks().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.Callback) it.next()).onDestructiveMigration(sQLiteConnection);
        }
    }

    private final void invokeOpenCallback(SQLiteConnection sQLiteConnection) {
        Iterator it = getCallbacks().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.Callback) it.next()).onOpen(sQLiteConnection);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
