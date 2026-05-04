package com.exteragram.messenger.api.db;

import androidx.room.InvalidationTracker;
import androidx.room.RoomOpenDelegate;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
public final class ExteraDatabase_Impl extends ExteraDatabase {
    private final Lazy _profileDao = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.api.db.ExteraDatabase_Impl$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ExteraDatabase_Impl._profileDao$lambda$0(this.f$0);
        }
    });
    private final Lazy _addedRegDateDao = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.api.db.ExteraDatabase_Impl$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ExteraDatabase_Impl._addedRegDateDao$lambda$0(this.f$0);
        }
    });
    private final Lazy _boostySubscriberDao = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.api.db.ExteraDatabase_Impl$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ExteraDatabase_Impl._boostySubscriberDao$lambda$0(this.f$0);
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final ProfileDao_Impl _profileDao$lambda$0(ExteraDatabase_Impl exteraDatabase_Impl) {
        return new ProfileDao_Impl(exteraDatabase_Impl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AddedRegDateDao_Impl _addedRegDateDao$lambda$0(ExteraDatabase_Impl exteraDatabase_Impl) {
        return new AddedRegDateDao_Impl(exteraDatabase_Impl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BoostySubscriberDao_Impl _boostySubscriberDao$lambda$0(ExteraDatabase_Impl exteraDatabase_Impl) {
        return new BoostySubscriberDao_Impl(exteraDatabase_Impl);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.room.RoomDatabase
    public RoomOpenDelegate createOpenDelegate() {
        return new RoomOpenDelegate() { // from class: com.exteragram.messenger.api.db.ExteraDatabase_Impl$createOpenDelegate$_openDelegate$1
            @Override // androidx.room.RoomOpenDelegate
            public void onCreate(SQLiteConnection connection) {
                Intrinsics.checkNotNullParameter(connection, "connection");
            }

            @Override // androidx.room.RoomOpenDelegate
            public void onPostMigrate(SQLiteConnection connection) {
                Intrinsics.checkNotNullParameter(connection, "connection");
            }

            {
                super(5, "0e4e0efe20ecd6ef10fbac10ebbb089b", "cb8806bf8ba241f006e47a1ddab85bcf");
            }

            @Override // androidx.room.RoomOpenDelegate
            public void createAllTables(SQLiteConnection connection) throws Exception {
                Intrinsics.checkNotNullParameter(connection, "connection");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `ProfileDTO` (`id` INTEGER NOT NULL, `type` TEXT NOT NULL, `status` TEXT NOT NULL, `badge` TEXT, `nowPlaying` TEXT, `deleted` INTEGER, `canChangeBadge` INTEGER, PRIMARY KEY(`id`))");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `AddedRegDateDTO` (`userId` INTEGER NOT NULL, PRIMARY KEY(`userId`))");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `BoostySubscriberDTO` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `totalAmountRub` TEXT NOT NULL, `totalAmountUsd` TEXT NOT NULL, PRIMARY KEY(`id`))");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                SQLite.execSQL(connection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '0e4e0efe20ecd6ef10fbac10ebbb089b')");
            }

            @Override // androidx.room.RoomOpenDelegate
            public void dropAllTables(SQLiteConnection connection) throws Exception {
                Intrinsics.checkNotNullParameter(connection, "connection");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `ProfileDTO`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `AddedRegDateDTO`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `BoostySubscriberDTO`");
            }

            @Override // androidx.room.RoomOpenDelegate
            public void onOpen(SQLiteConnection connection) {
                Intrinsics.checkNotNullParameter(connection, "connection");
                this.this$0.internalInitInvalidationTracker(connection);
            }

            @Override // androidx.room.RoomOpenDelegate
            public void onPreMigrate(SQLiteConnection connection) {
                Intrinsics.checkNotNullParameter(connection, "connection");
                DBUtil.dropFtsSyncTriggers(connection);
            }

            @Override // androidx.room.RoomOpenDelegate
            public RoomOpenDelegate.ValidationResult onValidateSchema(SQLiteConnection connection) {
                Intrinsics.checkNotNullParameter(connection, "connection");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
                linkedHashMap.put("type", new TableInfo.Column("type", "TEXT", true, 0, null, 1));
                linkedHashMap.put("status", new TableInfo.Column("status", "TEXT", true, 0, null, 1));
                linkedHashMap.put("badge", new TableInfo.Column("badge", "TEXT", false, 0, null, 1));
                linkedHashMap.put("nowPlaying", new TableInfo.Column("nowPlaying", "TEXT", false, 0, null, 1));
                linkedHashMap.put("deleted", new TableInfo.Column("deleted", "INTEGER", false, 0, null, 1));
                linkedHashMap.put("canChangeBadge", new TableInfo.Column("canChangeBadge", "INTEGER", false, 0, null, 1));
                TableInfo tableInfo = new TableInfo("ProfileDTO", linkedHashMap, new LinkedHashSet(), new LinkedHashSet());
                TableInfo.Companion companion = TableInfo.Companion;
                TableInfo tableInfo2 = companion.read(connection, "ProfileDTO");
                if (!tableInfo.equals(tableInfo2)) {
                    return new RoomOpenDelegate.ValidationResult(false, "ProfileDTO(com.exteragram.messenger.api.dto.ProfileDTO).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("userId", new TableInfo.Column("userId", "INTEGER", true, 1, null, 1));
                TableInfo tableInfo3 = new TableInfo("AddedRegDateDTO", linkedHashMap2, new LinkedHashSet(), new LinkedHashSet());
                TableInfo tableInfo4 = companion.read(connection, "AddedRegDateDTO");
                if (!tableInfo3.equals(tableInfo4)) {
                    return new RoomOpenDelegate.ValidationResult(false, "AddedRegDateDTO(com.exteragram.messenger.api.dto.AddedRegDateDTO).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
                }
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                linkedHashMap3.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, 1));
                linkedHashMap3.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, 1));
                linkedHashMap3.put("totalAmountRub", new TableInfo.Column("totalAmountRub", "TEXT", true, 0, null, 1));
                linkedHashMap3.put("totalAmountUsd", new TableInfo.Column("totalAmountUsd", "TEXT", true, 0, null, 1));
                TableInfo tableInfo5 = new TableInfo("BoostySubscriberDTO", linkedHashMap3, new LinkedHashSet(), new LinkedHashSet());
                TableInfo tableInfo6 = companion.read(connection, "BoostySubscriberDTO");
                if (!tableInfo5.equals(tableInfo6)) {
                    return new RoomOpenDelegate.ValidationResult(false, "BoostySubscriberDTO(com.exteragram.messenger.api.dto.BoostySubscriberDTO).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
                }
                return new RoomOpenDelegate.ValidationResult(true, null);
            }
        };
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new LinkedHashMap(), new LinkedHashMap(), "ProfileDTO", "AddedRegDateDTO", "BoostySubscriberDTO");
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.performClear(false, "ProfileDTO", "AddedRegDateDTO", "BoostySubscriberDTO");
    }

    @Override // androidx.room.RoomDatabase
    protected Map<KClass, List<KClass>> getRequiredTypeConverterClasses() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(ProfileDao.class), ProfileDao_Impl.Companion.getRequiredConverters());
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(AddedRegDateDao.class), AddedRegDateDao_Impl.Companion.getRequiredConverters());
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(BoostySubscriberDao.class), BoostySubscriberDao_Impl.Companion.getRequiredConverters());
        return linkedHashMap;
    }

    @Override // androidx.room.RoomDatabase
    public Set<KClass> getRequiredAutoMigrationSpecClasses() {
        return new LinkedHashSet();
    }

    @Override // androidx.room.RoomDatabase
    public List<Migration> createAutoMigrations(Map<KClass, ? extends AutoMigrationSpec> autoMigrationSpecs) {
        Intrinsics.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
        return new ArrayList();
    }

    @Override // com.exteragram.messenger.api.db.ExteraDatabase
    public ProfileDao profileDao() {
        return (ProfileDao) this._profileDao.getValue();
    }

    @Override // com.exteragram.messenger.api.db.ExteraDatabase
    public AddedRegDateDao addedRegDateDao() {
        return (AddedRegDateDao) this._addedRegDateDao.getValue();
    }

    @Override // com.exteragram.messenger.api.db.ExteraDatabase
    public BoostySubscriberDao boostySubscriberDao() {
        return (BoostySubscriberDao) this._boostySubscriberDao.getValue();
    }
}
