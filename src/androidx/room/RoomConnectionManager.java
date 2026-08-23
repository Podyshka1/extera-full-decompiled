package androidx.room;

import androidx.room.BaseRoomConnectionManager;
import androidx.room.RoomDatabase;
import androidx.room.RoomOpenDelegate;
import androidx.room.coroutines.ConnectionPool;
import androidx.room.coroutines.ConnectionPoolKt;
import androidx.room.coroutines.PassthroughConnectionPool;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.driver.SupportSQLiteConnection;
import androidx.sqlite.driver.SupportSQLiteDriver;
import androidx.sqlite.p002db.SupportSQLiteDatabase;
import androidx.sqlite.p002db.SupportSQLiteOpenHelper;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public final class RoomConnectionManager extends BaseRoomConnectionManager {
    private final List callbacks;
    private final DatabaseConfiguration configuration;
    private final ConnectionPool connectionPool;
    private final RoomOpenDelegate openDelegate;
    private SupportSQLiteDatabase supportDatabase;
    private final SupportSQLiteOpenHelper supportOpenHelper;

    @Override // androidx.room.BaseRoomConnectionManager
    protected DatabaseConfiguration getConfiguration() {
        return this.configuration;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    protected RoomOpenDelegate getOpenDelegate() {
        return this.openDelegate;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    protected List getCallbacks() {
        return this.callbacks;
    }

    public final SupportSQLiteOpenHelper getSupportOpenHelper$room_runtime() {
        return this.supportOpenHelper;
    }

    public RoomConnectionManager(DatabaseConfiguration config, RoomOpenDelegate openDelegate, Function2 transactionWrapper) {
        ConnectionPool connectionPoolNewConnectionPool;
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(openDelegate, "openDelegate");
        Intrinsics.checkNotNullParameter(transactionWrapper, "transactionWrapper");
        this.configuration = config;
        this.openDelegate = openDelegate;
        List list = config.callbacks;
        this.callbacks = list == null ? CollectionsKt.emptyList() : list;
        SQLiteDriver sQLiteDriver = config.sqliteDriver;
        if (sQLiteDriver == null) {
            if (config.sqliteOpenHelperFactory == null) {
                throw new IllegalArgumentException("SQLiteManager was constructed with both null driver and open helper factory!");
            }
            SupportSQLiteOpenHelper supportSQLiteOpenHelperCreate = config.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.Companion.builder(config.context).name(config.name).callback(new SupportOpenHelperCallback(openDelegate.getVersion())).build());
            this.supportOpenHelper = supportSQLiteOpenHelperCreate;
            SupportSQLiteDriver supportSQLiteDriver = new SupportSQLiteDriver(supportSQLiteOpenHelperCreate);
            String str = config.name;
            this.connectionPool = new PassthroughConnectionPool(supportSQLiteDriver, str != null ? str : ":memory:", transactionWrapper);
        } else {
            this.supportOpenHelper = null;
            if (sQLiteDriver.hasConnectionPool()) {
                BaseRoomConnectionManager.DriverWrapper driverWrapper = new BaseRoomConnectionManager.DriverWrapper(this, config.sqliteDriver);
                String str2 = config.name;
                connectionPoolNewConnectionPool = new PassthroughConnectionPool(driverWrapper, str2 != null ? str2 : ":memory:", transactionWrapper);
            } else if (config.name == null) {
                connectionPoolNewConnectionPool = ConnectionPoolKt.newSingleConnectionPool(new BaseRoomConnectionManager.DriverWrapper(this, config.sqliteDriver), ":memory:", config.getPreparedStatementCacheSize$room_runtime());
            } else {
                connectionPoolNewConnectionPool = ConnectionPoolKt.newConnectionPool(new BaseRoomConnectionManager.DriverWrapper(this, config.sqliteDriver), config.name, getMaxNumberOfReaders(config.journalMode), getMaxNumberOfWriters(config.journalMode), config.getPreparedStatementCacheSize$room_runtime());
            }
            this.connectionPool = connectionPoolNewConnectionPool;
        }
        init();
    }

    public RoomConnectionManager(DatabaseConfiguration config, Function1 supportOpenHelperFactory, Function2 transactionWrapper) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(supportOpenHelperFactory, "supportOpenHelperFactory");
        Intrinsics.checkNotNullParameter(transactionWrapper, "transactionWrapper");
        this.configuration = config;
        this.openDelegate = new NoOpOpenDelegate();
        List list = config.callbacks;
        this.callbacks = list == null ? CollectionsKt.emptyList() : list;
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = (SupportSQLiteOpenHelper) supportOpenHelperFactory.invoke(installOnOpenCallback(config, new Function1() { // from class: androidx.room.RoomConnectionManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomConnectionManager._init_$lambda$1(this.f$0, (SupportSQLiteDatabase) obj);
            }
        }));
        this.supportOpenHelper = supportSQLiteOpenHelper;
        SupportSQLiteDriver supportSQLiteDriver = new SupportSQLiteDriver(supportSQLiteOpenHelper);
        String str = config.name;
        this.connectionPool = new PassthroughConnectionPool(supportSQLiteDriver, str == null ? ":memory:" : str, transactionWrapper);
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$1(RoomConnectionManager roomConnectionManager, SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        roomConnectionManager.supportDatabase = db;
        return Unit.INSTANCE;
    }

    private final void init() {
        boolean z = getConfiguration().journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING;
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = this.supportOpenHelper;
        if (supportSQLiteOpenHelper != null) {
            supportSQLiteOpenHelper.setWriteAheadLoggingEnabled(z);
        }
    }

    public Object useConnection(boolean z, Function2 function2, Continuation continuation) {
        return this.connectionPool.useConnection(z, function2, continuation);
    }

    @Override // androidx.room.BaseRoomConnectionManager
    public String resolveFileName$room_runtime(String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        if (Intrinsics.areEqual(fileName, ":memory:")) {
            return fileName;
        }
        String absolutePath = getConfiguration().context.getDatabasePath(fileName).getAbsolutePath();
        Intrinsics.checkNotNull(absolutePath);
        return absolutePath;
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

    public final class SupportOpenHelperCallback extends SupportSQLiteOpenHelper.Callback {
        public SupportOpenHelperCallback(int i) {
            super(i);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onCreate(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            RoomConnectionManager.this.onCreate(new SupportSQLiteConnection(db));
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onUpgrade(SupportSQLiteDatabase db, int i, int i2) {
            Intrinsics.checkNotNullParameter(db, "db");
            RoomConnectionManager.this.onMigrate(new SupportSQLiteConnection(db), i, i2);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onDowngrade(SupportSQLiteDatabase db, int i, int i2) {
            Intrinsics.checkNotNullParameter(db, "db");
            onUpgrade(db, i, i2);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onOpen(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            RoomConnectionManager.this.onOpen(new SupportSQLiteConnection(db));
            RoomConnectionManager.this.supportDatabase = db;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static final class NoOpOpenDelegate extends RoomOpenDelegate {
        public NoOpOpenDelegate() {
            super(-1, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET);
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onCreate(SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onPreMigrate(SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public RoomOpenDelegate.ValidationResult onValidateSchema(SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onPostMigrate(SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onOpen(SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void createAllTables(SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void dropAllTables(SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }
    }

    private final DatabaseConfiguration installOnOpenCallback(DatabaseConfiguration databaseConfiguration, final Function1 function1) {
        List listEmptyList = databaseConfiguration.callbacks;
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        return DatabaseConfiguration.copy$default(databaseConfiguration, null, null, null, null, CollectionsKt.plus(listEmptyList, new RoomDatabase.Callback() { // from class: androidx.room.RoomConnectionManager$installOnOpenCallback$newCallbacks$1
            @Override // androidx.room.RoomDatabase.Callback
            public void onOpen(SupportSQLiteDatabase db) {
                Intrinsics.checkNotNullParameter(db, "db");
                function1.invoke(db);
            }
        }), false, null, null, null, null, false, false, null, null, null, null, null, null, null, false, null, null, 4194287, null);
    }
}
