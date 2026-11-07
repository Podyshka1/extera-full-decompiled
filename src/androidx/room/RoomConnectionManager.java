package androidx.room;

import androidx.room.BaseRoomConnectionManager;
import androidx.room.RoomDatabase;
import androidx.room.RoomOpenDelegate;
import androidx.room.coroutines.ConnectionPool;
import androidx.room.coroutines.ConnectionPoolKt;
import androidx.room.coroutines.PassthroughConnectionPool;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.driver.SupportSQLiteConnection;
import androidx.sqlite.driver.SupportSQLiteDriver;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001:\u0002?@BW\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012<\u0010\u000b\u001a8\b\u0001\u0012\u0018\u0012\u0016\b\u0001\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006j\u0006\u0012\u0002\b\u0003`\n¢\u0006\u0004\b\f\u0010\rBc\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e0\u0007\u0012<\u0010\u000b\u001a8\b\u0001\u0012\u0018\u0012\u0016\b\u0001\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006j\u0006\u0012\u0002\b\u0003`\n¢\u0006\u0004\b\f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J'\u0010\u0016\u001a\u00020\u0002*\u00020\u00022\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0017JB\u0010\u001d\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00182\u0006\u0010\u001a\u001a\u00020\u00192\"\u0010\u001c\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u001b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006H\u0096@¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010#\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0010¢\u0006\u0004\b!\u0010\"J\r\u0010$\u001a\u00020\u0011¢\u0006\u0004\b$\u0010\u0013J\r\u0010%\u001a\u00020\u0019¢\u0006\u0004\b%\u0010&R\u001a\u0010'\u001a\u00020\u00028\u0014X\u0094\u0004¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u001a\u0010\u0005\u001a\u00020\u00048\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0005\u0010+\u001a\u0004\b,\u0010-R \u00100\u001a\b\u0012\u0004\u0012\u00020/0.8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u001a\u00105\u001a\u0002048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108R\u001c\u00109\u001a\u0004\u0018\u00010\u000e8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u0018\u0010=\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>¨\u0006A"}, d2 = {"Landroidx/room/RoomConnectionManager;", "Landroidx/room/BaseRoomConnectionManager;", "Landroidx/room/DatabaseConfiguration;", "config", "Landroidx/room/RoomOpenDelegate;", "openDelegate", "Lkotlin/Function2;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/coroutines/TransactionWrapper;", "transactionWrapper", "<init>", "(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;Lkotlin/jvm/functions/Function2;)V", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "supportOpenHelperFactory", "(Landroidx/room/DatabaseConfiguration;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V", _UrlKt.FRAGMENT_ENCODE_SET, "init", "()V", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "onOpen", "installOnOpenCallback", "(Landroidx/room/DatabaseConfiguration;Lkotlin/jvm/functions/Function1;)Landroidx/room/DatabaseConfiguration;", "R", _UrlKt.FRAGMENT_ENCODE_SET, "isReadOnly", "Landroidx/room/Transactor;", "block", "useConnection", "(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "fileName", "resolveFileName$room_runtime", "(Ljava/lang/String;)Ljava/lang/String;", "resolveFileName", "close", "isSupportDatabaseOpen", "()Z", "configuration", "Landroidx/room/DatabaseConfiguration;", "getConfiguration", "()Landroidx/room/DatabaseConfiguration;", "Landroidx/room/RoomOpenDelegate;", "getOpenDelegate", "()Landroidx/room/RoomOpenDelegate;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/RoomDatabase$Callback;", "callbacks", "Ljava/util/List;", "getCallbacks", "()Ljava/util/List;", "Landroidx/room/coroutines/ConnectionPool;", "connectionPool", "Landroidx/room/coroutines/ConnectionPool;", "getConnectionPool$room_runtime", "()Landroidx/room/coroutines/ConnectionPool;", "supportOpenHelper", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "getSupportOpenHelper$room_runtime", "()Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "supportDatabase", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "SupportOpenHelperCallback", "NoOpOpenDelegate", "room-runtime"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class RoomConnectionManager extends BaseRoomConnectionManager {
    private final List<RoomDatabase.Callback> callbacks;
    private final DatabaseConfiguration configuration;
    private final ConnectionPool connectionPool;
    private final RoomOpenDelegate openDelegate;
    private SupportSQLiteDatabase supportDatabase;
    private final SupportSQLiteOpenHelper supportOpenHelper;

    @Override // androidx.room.BaseRoomConnectionManager
    public DatabaseConfiguration getConfiguration() {
        return this.configuration;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    public RoomOpenDelegate getOpenDelegate() {
        return this.openDelegate;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    public List<RoomDatabase.Callback> getCallbacks() {
        return this.callbacks;
    }

    /* JADX INFO: renamed from: getSupportOpenHelper$room_runtime, reason: from getter */
    public final SupportSQLiteOpenHelper getSupportOpenHelper() {
        return this.supportOpenHelper;
    }

    public RoomConnectionManager(DatabaseConfiguration databaseConfiguration, RoomOpenDelegate roomOpenDelegate, Function2<? super Function1<? super Continuation<Object>, ? extends Object>, ? super Continuation<Object>, ? extends Object> function2) {
        ConnectionPool connectionPoolNewConnectionPool;
        this.configuration = databaseConfiguration;
        this.openDelegate = roomOpenDelegate;
        List<RoomDatabase.Callback> list = databaseConfiguration.callbacks;
        this.callbacks = list == null ? CollectionsKt.emptyList() : list;
        SQLiteDriver sQLiteDriver = databaseConfiguration.sqliteDriver;
        if (sQLiteDriver == null) {
            if (databaseConfiguration.sqliteOpenHelperFactory == null) {
                f$$ExternalSyntheticBUOutline1.m212m("SQLiteManager was constructed with both null driver and open helper factory!");
                throw null;
            }
            SupportSQLiteOpenHelper supportSQLiteOpenHelperCreate = databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.INSTANCE.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new SupportOpenHelperCallback(roomOpenDelegate.getVersion())).build());
            this.supportOpenHelper = supportSQLiteOpenHelperCreate;
            SupportSQLiteDriver supportSQLiteDriver = new SupportSQLiteDriver(supportSQLiteOpenHelperCreate);
            String str = databaseConfiguration.name;
            this.connectionPool = new PassthroughConnectionPool(supportSQLiteDriver, str != null ? str : ":memory:", function2);
        } else {
            this.supportOpenHelper = null;
            if (sQLiteDriver.hasConnectionPool()) {
                BaseRoomConnectionManager.DriverWrapper driverWrapper = new BaseRoomConnectionManager.DriverWrapper(databaseConfiguration.sqliteDriver);
                String str2 = databaseConfiguration.name;
                connectionPoolNewConnectionPool = new PassthroughConnectionPool(driverWrapper, str2 != null ? str2 : ":memory:", function2);
            } else {
                String str3 = databaseConfiguration.name;
                SQLiteDriver sQLiteDriver2 = databaseConfiguration.sqliteDriver;
                if (str3 == null) {
                    connectionPoolNewConnectionPool = ConnectionPoolKt.newSingleConnectionPool(new BaseRoomConnectionManager.DriverWrapper(sQLiteDriver2), ":memory:", databaseConfiguration.getPreparedStatementCacheSize());
                } else {
                    connectionPoolNewConnectionPool = ConnectionPoolKt.newConnectionPool(new BaseRoomConnectionManager.DriverWrapper(sQLiteDriver2), databaseConfiguration.name, getMaxNumberOfReaders(databaseConfiguration.journalMode), getMaxNumberOfWriters(databaseConfiguration.journalMode), databaseConfiguration.getPreparedStatementCacheSize());
                }
            }
            this.connectionPool = connectionPoolNewConnectionPool;
        }
        init();
    }

    public RoomConnectionManager(DatabaseConfiguration databaseConfiguration, Function1<? super DatabaseConfiguration, ? extends SupportSQLiteOpenHelper> function1, Function2<? super Function1<? super Continuation<Object>, ? extends Object>, ? super Continuation<Object>, ? extends Object> function2) {
        this.configuration = databaseConfiguration;
        this.openDelegate = new NoOpOpenDelegate();
        List<RoomDatabase.Callback> list = databaseConfiguration.callbacks;
        this.callbacks = list == null ? CollectionsKt.emptyList() : list;
        SupportSQLiteOpenHelper supportSQLiteOpenHelperInvoke = function1.invoke(installOnOpenCallback(databaseConfiguration, new Function1() { // from class: androidx.room.RoomConnectionManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomConnectionManager.m2011$r8$lambda$vdT1_AQh9BTyGGkFjKYq85q98(this.f$0, (SupportSQLiteDatabase) obj);
            }
        }));
        this.supportOpenHelper = supportSQLiteOpenHelperInvoke;
        SupportSQLiteDriver supportSQLiteDriver = new SupportSQLiteDriver(supportSQLiteOpenHelperInvoke);
        String str = databaseConfiguration.name;
        this.connectionPool = new PassthroughConnectionPool(supportSQLiteDriver, str == null ? ":memory:" : str, function2);
        init();
    }

    /* JADX INFO: renamed from: $r8$lambda$vdT1_--AQh9BTyGGkFjKYq85q98, reason: not valid java name */
    public static Unit m2011$r8$lambda$vdT1_AQh9BTyGGkFjKYq85q98(RoomConnectionManager roomConnectionManager, SupportSQLiteDatabase supportSQLiteDatabase) {
        roomConnectionManager.supportDatabase = supportSQLiteDatabase;
        return Unit.INSTANCE;
    }

    private final void init() {
        boolean z = getConfiguration().journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING;
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = this.supportOpenHelper;
        if (supportSQLiteOpenHelper != null) {
            supportSQLiteOpenHelper.setWriteAheadLoggingEnabled(z);
        }
    }

    public <R> Object useConnection(boolean z, Function2<? super Transactor, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) {
        return this.connectionPool.useConnection(z, function2, continuation);
    }

    @Override // androidx.room.BaseRoomConnectionManager
    public String resolveFileName$room_runtime(String fileName) {
        return !Intrinsics.areEqual(fileName, ":memory:") ? getConfiguration().context.getDatabasePath(fileName).getAbsolutePath() : fileName;
    }

    public final void close() {
        this.connectionPool.close();
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = this.supportOpenHelper;
        if (supportSQLiteOpenHelper != null) {
            supportSQLiteOpenHelper.close();
        }
    }

    public final boolean isSupportDatabaseOpen() {
        SupportSQLiteDatabase supportSQLiteDatabase = this.supportDatabase;
        if (supportSQLiteDatabase != null) {
            return supportSQLiteDatabase.isOpen();
        }
        return false;
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0016J \u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000f"}, d2 = {"Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", "version", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Landroidx/room/RoomConnectionManager;I)V", "onCreate", _UrlKt.FRAGMENT_ENCODE_SET, "db", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "onUpgrade", "oldVersion", "newVersion", "onDowngrade", "onOpen", "room-runtime"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public final class SupportOpenHelperCallback extends SupportSQLiteOpenHelper.Callback {
        public SupportOpenHelperCallback(int i) {
            super(i);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onCreate(SupportSQLiteDatabase db) {
            RoomConnectionManager.this.onCreate(new SupportSQLiteConnection(db));
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onUpgrade(SupportSQLiteDatabase db, int oldVersion, int newVersion) {
            RoomConnectionManager.this.onMigrate(new SupportSQLiteConnection(db), oldVersion, newVersion);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onDowngrade(SupportSQLiteDatabase db, int oldVersion, int newVersion) {
            onUpgrade(db, oldVersion, newVersion);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onOpen(SupportSQLiteDatabase db) {
            RoomConnectionManager.this.onOpen(new SupportSQLiteConnection(db));
            RoomConnectionManager.this.supportDatabase = db;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\u000f"}, d2 = {"Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;", "Landroidx/room/RoomOpenDelegate;", "<init>", "()V", "onCreate", _UrlKt.FRAGMENT_ENCODE_SET, "connection", "Landroidx/sqlite/SQLiteConnection;", "onPreMigrate", "onValidateSchema", "Landroidx/room/RoomOpenDelegate$ValidationResult;", "onPostMigrate", "onOpen", "createAllTables", "dropAllTables", "room-runtime"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class NoOpOpenDelegate extends RoomOpenDelegate {
        public NoOpOpenDelegate() {
            super(-1, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET);
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onCreate(SQLiteConnection connection) {
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onPreMigrate(SQLiteConnection connection) {
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public RoomOpenDelegate.ValidationResult onValidateSchema(SQLiteConnection connection) {
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onPostMigrate(SQLiteConnection connection) {
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onOpen(SQLiteConnection connection) {
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void createAllTables(SQLiteConnection connection) {
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void dropAllTables(SQLiteConnection connection) {
            throw new IllegalStateException("NOP delegate should never be called");
        }
    }

    private final DatabaseConfiguration installOnOpenCallback(DatabaseConfiguration databaseConfiguration, final Function1<? super SupportSQLiteDatabase, Unit> function1) {
        List<RoomDatabase.Callback> listEmptyList = databaseConfiguration.callbacks;
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        return DatabaseConfiguration.copy$default(databaseConfiguration, null, null, null, null, CollectionsKt.plus((Collection<? extends RoomDatabase.Callback>) listEmptyList, new RoomDatabase.Callback() { // from class: androidx.room.RoomConnectionManager$installOnOpenCallback$newCallbacks$1
            @Override // androidx.room.RoomDatabase.Callback
            public void onOpen(SupportSQLiteDatabase db) {
                function1.invoke(db);
            }
        }), false, null, null, null, null, false, false, null, null, null, null, null, null, null, false, null, null, 4194287, null);
    }
}
