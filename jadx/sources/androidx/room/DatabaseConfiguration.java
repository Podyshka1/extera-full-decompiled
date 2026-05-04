package androidx.room;

import android.content.Context;
import android.content.Intent;
import androidx.room.RoomDatabase;
import androidx.room.util.MigrationUtil;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.p002db.SupportSQLiteOpenHelper;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes.dex */
public class DatabaseConfiguration {
    public final boolean allowDestructiveMigrationForAllTables;
    public final boolean allowDestructiveMigrationOnDowngrade;
    public final boolean allowMainThreadQueries;
    public final List autoMigrationSpecs;
    public final List callbacks;
    public final Context context;
    public final String copyFromAssetPath;
    public final File copyFromFile;
    public final Callable copyFromInputStream;
    public final RoomDatabase.JournalMode journalMode;
    public final RoomDatabase.MigrationContainer migrationContainer;
    private final Set migrationNotRequiredFrom;
    public final boolean multiInstanceInvalidation;
    public final Intent multiInstanceInvalidationServiceIntent;
    public final String name;
    private int preparedStatementCacheSize;
    public final CoroutineContext queryCoroutineContext;
    public final Executor queryExecutor;
    public final boolean requireMigration;
    public final SQLiteDriver sqliteDriver;
    public final SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory;
    public final Executor transactionExecutor;
    public final List typeConverters;
    private boolean useTempTrackingTable;

    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List list, boolean z, RoomDatabase.JournalMode journalMode, Executor queryExecutor, Executor transactionExecutor, Intent intent, boolean z2, boolean z3, Set set, String str2, File file, Callable callable, RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, List typeConverters, List autoMigrationSpecs, boolean z4, SQLiteDriver sQLiteDriver, CoroutineContext coroutineContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(migrationContainer, "migrationContainer");
        Intrinsics.checkNotNullParameter(journalMode, "journalMode");
        Intrinsics.checkNotNullParameter(queryExecutor, "queryExecutor");
        Intrinsics.checkNotNullParameter(transactionExecutor, "transactionExecutor");
        Intrinsics.checkNotNullParameter(typeConverters, "typeConverters");
        Intrinsics.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
        this.context = context;
        this.name = str;
        this.sqliteOpenHelperFactory = factory;
        this.migrationContainer = migrationContainer;
        this.callbacks = list;
        this.allowMainThreadQueries = z;
        this.journalMode = journalMode;
        this.queryExecutor = queryExecutor;
        this.transactionExecutor = transactionExecutor;
        this.multiInstanceInvalidationServiceIntent = intent;
        this.requireMigration = z2;
        this.allowDestructiveMigrationOnDowngrade = z3;
        this.migrationNotRequiredFrom = set;
        this.copyFromAssetPath = str2;
        this.copyFromFile = file;
        this.copyFromInputStream = callable;
        this.typeConverters = typeConverters;
        this.autoMigrationSpecs = autoMigrationSpecs;
        this.allowDestructiveMigrationForAllTables = z4;
        this.sqliteDriver = sQLiteDriver;
        this.queryCoroutineContext = coroutineContext;
        this.multiInstanceInvalidation = intent != null;
        this.useTempTrackingTable = true;
        this.preparedStatementCacheSize = 25;
    }

    public final Set getMigrationNotRequiredFrom$room_runtime() {
        return this.migrationNotRequiredFrom;
    }

    public final boolean getUseTempTrackingTable$room_runtime() {
        return this.useTempTrackingTable;
    }

    public final void setUseTempTrackingTable$room_runtime(boolean z) {
        this.useTempTrackingTable = z;
    }

    public final int getPreparedStatementCacheSize$room_runtime() {
        return this.preparedStatementCacheSize;
    }

    public boolean isMigrationRequired(int i, int i2) {
        return MigrationUtil.isMigrationRequired(this, i, i2);
    }

    public static /* synthetic */ DatabaseConfiguration copy$default(DatabaseConfiguration databaseConfiguration, Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, Intent intent, boolean z2, boolean z3, Set set, String str2, File file, Callable callable, RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, List list2, List list3, boolean z4, SQLiteDriver sQLiteDriver, CoroutineContext coroutineContext, int i, Object obj) {
        RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback2;
        CoroutineContext coroutineContext2;
        SQLiteDriver sQLiteDriver2;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copy");
        }
        Context context2 = (i & 1) != 0 ? databaseConfiguration.context : context;
        String str3 = (i & 2) != 0 ? databaseConfiguration.name : str;
        SupportSQLiteOpenHelper.Factory factory2 = (i & 4) != 0 ? databaseConfiguration.sqliteOpenHelperFactory : factory;
        RoomDatabase.MigrationContainer migrationContainer2 = (i & 8) != 0 ? databaseConfiguration.migrationContainer : migrationContainer;
        List list4 = (i & 16) != 0 ? databaseConfiguration.callbacks : list;
        boolean z5 = (i & 32) != 0 ? databaseConfiguration.allowMainThreadQueries : z;
        RoomDatabase.JournalMode journalMode2 = (i & 64) != 0 ? databaseConfiguration.journalMode : journalMode;
        Executor executor3 = (i & 128) != 0 ? databaseConfiguration.queryExecutor : executor;
        Executor executor4 = (i & 256) != 0 ? databaseConfiguration.transactionExecutor : executor2;
        Intent intent2 = (i & 512) != 0 ? databaseConfiguration.multiInstanceInvalidationServiceIntent : intent;
        boolean z6 = (i & 1024) != 0 ? databaseConfiguration.requireMigration : z2;
        boolean z7 = (i & 2048) != 0 ? databaseConfiguration.allowDestructiveMigrationOnDowngrade : z3;
        Set set2 = (i & 4096) != 0 ? databaseConfiguration.migrationNotRequiredFrom : set;
        String str4 = (i & 8192) != 0 ? databaseConfiguration.copyFromAssetPath : str2;
        Context context3 = context2;
        File file2 = (i & 16384) != 0 ? databaseConfiguration.copyFromFile : file;
        Callable callable2 = (i & 32768) != 0 ? databaseConfiguration.copyFromInputStream : callable;
        if ((i & 65536) != 0) {
            databaseConfiguration.getClass();
            prepackagedDatabaseCallback2 = null;
        } else {
            prepackagedDatabaseCallback2 = prepackagedDatabaseCallback;
        }
        Callable callable3 = callable2;
        List list5 = (i & 131072) != 0 ? databaseConfiguration.typeConverters : list2;
        List list6 = (i & 262144) != 0 ? databaseConfiguration.autoMigrationSpecs : list3;
        boolean z8 = (i & 524288) != 0 ? databaseConfiguration.allowDestructiveMigrationForAllTables : z4;
        SQLiteDriver sQLiteDriver3 = (i & 1048576) != 0 ? databaseConfiguration.sqliteDriver : sQLiteDriver;
        if ((i & TLObject.FLAG_21) != 0) {
            sQLiteDriver2 = sQLiteDriver3;
            coroutineContext2 = databaseConfiguration.queryCoroutineContext;
        } else {
            coroutineContext2 = coroutineContext;
            sQLiteDriver2 = sQLiteDriver3;
        }
        return databaseConfiguration.copy(context3, str3, factory2, migrationContainer2, list4, z5, journalMode2, executor3, executor4, intent2, z6, z7, set2, str4, file2, callable3, prepackagedDatabaseCallback2, list5, list6, z8, sQLiteDriver2, coroutineContext2);
    }

    public final DatabaseConfiguration copy(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List list, boolean z, RoomDatabase.JournalMode journalMode, Executor queryExecutor, Executor transactionExecutor, Intent intent, boolean z2, boolean z3, Set set, String str2, File file, Callable callable, RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, List typeConverters, List autoMigrationSpecs, boolean z4, SQLiteDriver sQLiteDriver, CoroutineContext coroutineContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(migrationContainer, "migrationContainer");
        Intrinsics.checkNotNullParameter(journalMode, "journalMode");
        Intrinsics.checkNotNullParameter(queryExecutor, "queryExecutor");
        Intrinsics.checkNotNullParameter(transactionExecutor, "transactionExecutor");
        Intrinsics.checkNotNullParameter(typeConverters, "typeConverters");
        Intrinsics.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
        DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, str, factory, migrationContainer, list, z, journalMode, queryExecutor, transactionExecutor, intent, z2, z3, set, str2, file, callable, prepackagedDatabaseCallback, typeConverters, autoMigrationSpecs, z4, sQLiteDriver, coroutineContext);
        databaseConfiguration.useTempTrackingTable = this.useTempTrackingTable;
        databaseConfiguration.preparedStatementCacheSize = this.preparedStatementCacheSize;
        return databaseConfiguration;
    }
}
