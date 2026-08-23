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
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\b'\u0018\u0000 82\u00020\u0001:\u000298B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\bJ\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\bJ\u0017\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0010\u0010\bJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\bJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\bJ\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\bJ\u0017\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0014\u0010\u000fJ\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0015\u0010\bJ\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0016\u0010\bJ\u0017\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0017\u0010\bJ\u0017\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0010¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0004¢\u0006\u0004\b\u001d\u0010\bJ'\u0010!\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001eH\u0004¢\u0006\u0004\b!\u0010\"J\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0004¢\u0006\u0004\b#\u0010\bJ\u0013\u0010%\u001a\u00020\u001e*\u00020$H\u0004¢\u0006\u0004\b%\u0010&J\u0013\u0010'\u001a\u00020\u001e*\u00020$H\u0004¢\u0006\u0004\b'\u0010&R\u0016\u0010(\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010*\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010)R\u0014\u0010.\u001a\u00020+8$X¤\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-R\u0014\u00102\u001a\u00020/8$X¤\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u001a\u00107\u001a\b\u0012\u0004\u0012\u000204038$X¤\u0004¢\u0006\u0006\u001a\u0004\b5\u00106¨\u0006:"}, d2 = {"Landroidx/room/BaseRoomConnectionManager;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/sqlite/SQLiteConnection;", "connection", _UrlKt.FRAGMENT_ENCODE_SET, "configureDatabase", "(Landroidx/sqlite/SQLiteConnection;)V", "configurationConnection", "configureJournalMode", "configureSynchronousFlag", "configureBusyTimeout", _UrlKt.FRAGMENT_ENCODE_SET, "hasEmptySchema", "(Landroidx/sqlite/SQLiteConnection;)Z", "updateIdentity", "createMasterTableIfNotExists", "dropAllTables", "checkIdentity", "hasRoomMasterTable", "invokeCreateCallback", "invokeDestructiveMigrationCallback", "invokeOpenCallback", _UrlKt.FRAGMENT_ENCODE_SET, "fileName", "resolveFileName$room_runtime", "(Ljava/lang/String;)Ljava/lang/String;", "resolveFileName", "onCreate", _UrlKt.FRAGMENT_ENCODE_SET, "oldVersion", "newVersion", "onMigrate", "(Landroidx/sqlite/SQLiteConnection;II)V", "onOpen", "Landroidx/room/RoomDatabase$JournalMode;", "getMaxNumberOfReaders", "(Landroidx/room/RoomDatabase$JournalMode;)I", "getMaxNumberOfWriters", "isConfigured", "Z", "isInitializing", "Landroidx/room/DatabaseConfiguration;", "getConfiguration", "()Landroidx/room/DatabaseConfiguration;", "configuration", "Landroidx/room/RoomOpenDelegate;", "getOpenDelegate", "()Landroidx/room/RoomOpenDelegate;", "openDelegate", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/RoomDatabase$Callback;", "getCallbacks", "()Ljava/util/List;", "callbacks", "Companion", "DriverWrapper", "room-runtime"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRoomConnectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomConnectionManager.kt\nandroidx/room/BaseRoomConnectionManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,365:1\n1#2:366\n1869#3,2:367\n1869#3,2:369\n1869#3,2:371\n1869#3,2:373\n1869#3,2:375\n*S KotlinDebug\n*F\n+ 1 RoomConnectionManager.kt\nandroidx/room/BaseRoomConnectionManager\n*L\n212#1:367,2\n256#1:369,2\n345#1:371,2\n349#1:373,2\n353#1:375,2\n*E\n"})
public abstract class BaseRoomConnectionManager {
    private boolean isConfigured;
    private boolean isInitializing;

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
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

    public abstract List<RoomDatabase.Callback> getCallbacks();

    public abstract DatabaseConfiguration getConfiguration();

    public abstract RoomOpenDelegate getOpenDelegate();

    public abstract String resolveFileName$room_runtime(String fileName);

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0084\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\f8WX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000b\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/room/BaseRoomConnectionManager$DriverWrapper;", "Landroidx/sqlite/SQLiteDriver;", "actual", "<init>", "(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V", "open", "Landroidx/sqlite/SQLiteConnection;", "fileName", _UrlKt.FRAGMENT_ENCODE_SET, "openLocked", "filename", "hasConnectionPool", _UrlKt.FRAGMENT_ENCODE_SET, "()Z", "room-runtime"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public final class DriverWrapper implements SQLiteDriver {
        private final SQLiteDriver actual;

        @Override // androidx.sqlite.SQLiteDriver
        @JvmName(name = "hasConnectionPool")
        public boolean hasConnectionPool() {
            return this.actual.hasConnectionPool();
        }

        public DriverWrapper(SQLiteDriver sQLiteDriver) {
            this.actual = sQLiteDriver;
        }

        @Override // androidx.sqlite.SQLiteDriver
        public SQLiteConnection open(String fileName) {
            return openLocked(BaseRoomConnectionManager.this.resolveFileName$room_runtime(fileName));
        }

        private final SQLiteConnection openLocked(final String filename) {
            ExclusiveLock exclusiveLock = new ExclusiveLock(filename, (BaseRoomConnectionManager.this.isConfigured || BaseRoomConnectionManager.this.isInitializing || Intrinsics.areEqual(filename, ":memory:")) ? false : true);
            final BaseRoomConnectionManager baseRoomConnectionManager = BaseRoomConnectionManager.this;
            return (SQLiteConnection) exclusiveLock.withLock(new Function0() { // from class: androidx.room.BaseRoomConnectionManager$DriverWrapper$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BaseRoomConnectionManager.DriverWrapper.$r8$lambda$npawJpzGW_LQCHyPkGm5j4d35mo(baseRoomConnectionManager, this, filename);
                }
            }, new Function1() { // from class: androidx.room.BaseRoomConnectionManager$DriverWrapper$openLocked$2
                @Override // kotlin.jvm.functions.Function1
                public final Void invoke(Throwable th) {
                    throw new IllegalStateException("Unable to open database '" + filename + "'. Was a proper path / name used in Room's database builder?", th);
                }
            });
        }

        public static SQLiteConnection $r8$lambda$npawJpzGW_LQCHyPkGm5j4d35mo(BaseRoomConnectionManager baseRoomConnectionManager, DriverWrapper driverWrapper, String str) throws Exception {
            if (baseRoomConnectionManager.isInitializing) {
                Segment$$ExternalSyntheticBUOutline1.m848m("Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?");
                return null;
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
    public final void configureDatabase(SQLiteConnection connection) throws Exception {
        Object objM3291constructorimpl;
        configureBusyTimeout(connection);
        configureJournalMode(connection);
        configureSynchronousFlag(connection);
        SQLiteStatement sQLiteStatementPrepare = connection.prepare("PRAGMA user_version");
        try {
            sQLiteStatementPrepare.step();
            int i = (int) sQLiteStatementPrepare.getLong(0);
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            if (i != getOpenDelegate().getVersion()) {
                SQLite.execSQL(connection, "BEGIN EXCLUSIVE TRANSACTION");
                try {
                    Result.Companion companion = Result.INSTANCE;
                    if (i == 0) {
                        onCreate(connection);
                    } else {
                        onMigrate(connection, i, getOpenDelegate().getVersion());
                    }
                    SQLite.execSQL(connection, "PRAGMA user_version = " + getOpenDelegate().getVersion());
                    objM3291constructorimpl = Result.m3291constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m3298isSuccessimpl(objM3291constructorimpl)) {
                    SQLite.execSQL(connection, "END TRANSACTION");
                }
                Throwable thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(objM3291constructorimpl);
                if (thM3294exceptionOrNullimpl != null) {
                    SQLite.execSQL(connection, "ROLLBACK TRANSACTION");
                    throw thM3294exceptionOrNullimpl;
                }
            }
            onOpen(connection);
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void configurationConnection(SQLiteConnection connection) throws Exception {
        configureBusyTimeout(connection);
        configureSynchronousFlag(connection);
        getOpenDelegate().onOpen(connection);
    }

    private final void configureJournalMode(SQLiteConnection connection) {
        if (getConfiguration().journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING) {
            SQLite.execSQL(connection, "PRAGMA journal_mode = WAL");
        } else {
            SQLite.execSQL(connection, "PRAGMA journal_mode = TRUNCATE");
        }
    }

    private final void configureSynchronousFlag(SQLiteConnection connection) {
        if (getConfiguration().journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING) {
            SQLite.execSQL(connection, "PRAGMA synchronous = NORMAL");
        } else {
            SQLite.execSQL(connection, "PRAGMA synchronous = FULL");
        }
    }

    private final void configureBusyTimeout(SQLiteConnection connection) throws Exception {
        SQLiteStatement sQLiteStatementPrepare = connection.prepare("PRAGMA busy_timeout");
        try {
            sQLiteStatementPrepare.step();
            long j = sQLiteStatementPrepare.getLong(0);
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            if (j < 3000) {
                SQLite.execSQL(connection, "PRAGMA busy_timeout = 3000");
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

    public final void onCreate(SQLiteConnection connection) {
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

    private final boolean hasEmptySchema(SQLiteConnection connection) throws Exception {
        SQLiteStatement sQLiteStatementPrepare = connection.prepare("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
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

    private final void updateIdentity(SQLiteConnection connection) {
        createMasterTableIfNotExists(connection);
        SQLite.execSQL(connection, RoomMasterTable.createInsertQuery(getOpenDelegate().getIdentityHash()));
    }

    private final void createMasterTableIfNotExists(SQLiteConnection connection) {
        SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    public final void onMigrate(SQLiteConnection connection, int oldVersion, int newVersion) {
        List<Migration> listFindMigrationPath = MigrationUtil.findMigrationPath(getConfiguration().migrationContainer, oldVersion, newVersion);
        if (listFindMigrationPath != null) {
            getOpenDelegate().onPreMigrate(connection);
            Iterator<T> it = listFindMigrationPath.iterator();
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
        if (MigrationUtil.isMigrationRequired(getConfiguration(), oldVersion, newVersion)) {
            throw new IllegalStateException(("A migration from " + oldVersion + " to " + newVersion + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions.").toString());
        }
        dropAllTables(connection);
        invokeDestructiveMigrationCallback(connection);
        getOpenDelegate().createAllTables(connection);
    }

    private final void dropAllTables(SQLiteConnection connection) throws Exception {
        if (getConfiguration().allowDestructiveMigrationForAllTables) {
            SQLiteStatement sQLiteStatementPrepare = connection.prepare("SELECT name, type FROM sqlite_master WHERE type = 'table' OR type = 'view'");
            try {
                List listCreateListBuilder = CollectionsKt.createListBuilder();
                while (sQLiteStatementPrepare.step()) {
                    String text = sQLiteStatementPrepare.getText(0);
                    if (!StringsKt.startsWith$default(text, "sqlite_", false, 2, (Object) null) && !Intrinsics.areEqual(text, "android_metadata")) {
                        listCreateListBuilder.add(TuplesKt.to(text, Boolean.valueOf(Intrinsics.areEqual(sQLiteStatementPrepare.getText(1), "view"))));
                    }
                }
                List<Pair> listBuild = CollectionsKt.build(listCreateListBuilder);
                AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
                for (Pair pair : listBuild) {
                    String str = (String) pair.component1();
                    if (((Boolean) pair.component2()).booleanValue()) {
                        SQLite.execSQL(connection, "DROP VIEW IF EXISTS `" + str + '`');
                    } else {
                        SQLite.execSQL(connection, "DROP TABLE IF EXISTS `" + str + '`');
                    }
                }
            } finally {
            }
        } else {
            getOpenDelegate().dropAllTables(connection);
        }
    }

    public final void onOpen(SQLiteConnection connection) {
        checkIdentity(connection);
        getOpenDelegate().onOpen(connection);
        invokeOpenCallback(connection);
        this.isConfigured = true;
    }

    private final void checkIdentity(SQLiteConnection connection) throws Exception {
        Object objM3291constructorimpl;
        RoomOpenDelegate.ValidationResult validationResultOnValidateSchema;
        if (hasRoomMasterTable(connection)) {
            SQLiteStatement sQLiteStatementPrepare = connection.prepare("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1");
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
        SQLite.execSQL(connection, "BEGIN EXCLUSIVE TRANSACTION");
        try {
            Result.Companion companion = Result.INSTANCE;
            validationResultOnValidateSchema = getOpenDelegate().onValidateSchema(connection);
        } catch (Throwable th3) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th3));
        }
        if (!validationResultOnValidateSchema.isValid) {
            throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + validationResultOnValidateSchema.expectedFoundMsg).toString());
        }
        getOpenDelegate().onPostMigrate(connection);
        updateIdentity(connection);
        objM3291constructorimpl = Result.m3291constructorimpl(Unit.INSTANCE);
        if (Result.m3298isSuccessimpl(objM3291constructorimpl)) {
            SQLite.execSQL(connection, "END TRANSACTION");
        }
        Throwable thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(objM3291constructorimpl);
        if (thM3294exceptionOrNullimpl != null) {
            SQLite.execSQL(connection, "ROLLBACK TRANSACTION");
            throw thM3294exceptionOrNullimpl;
        }
        Result.m3290boximpl(objM3291constructorimpl);
    }

    private final boolean hasRoomMasterTable(SQLiteConnection connection) throws Exception {
        SQLiteStatement sQLiteStatementPrepare = connection.prepare("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name = 'room_master_table'");
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

    public final int getMaxNumberOfReaders(RoomDatabase.JournalMode journalMode) {
        int i = WhenMappings.$EnumSwitchMapping$0[journalMode.ordinal()];
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 4;
        }
        BaseRoomConnectionManager$$ExternalSyntheticBUOutline0.m163m("Can't get max number of reader for journal mode '", journalMode, 39);
        return 0;
    }

    public final int getMaxNumberOfWriters(RoomDatabase.JournalMode journalMode) {
        int i = WhenMappings.$EnumSwitchMapping$0[journalMode.ordinal()];
        if (i == 1 || i == 2) {
            return 1;
        }
        BaseRoomConnectionManager$$ExternalSyntheticBUOutline0.m163m("Can't get max number of writers for journal mode '", journalMode, 39);
        return 0;
    }

    private final void invokeCreateCallback(SQLiteConnection connection) {
        Iterator<T> it = getCallbacks().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.Callback) it.next()).onCreate(connection);
        }
    }

    private final void invokeDestructiveMigrationCallback(SQLiteConnection connection) {
        Iterator<T> it = getCallbacks().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.Callback) it.next()).onDestructiveMigration(connection);
        }
    }

    private final void invokeOpenCallback(SQLiteConnection connection) {
        Iterator<T> it = getCallbacks().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.Callback) it.next()).onOpen(connection);
        }
    }
}
