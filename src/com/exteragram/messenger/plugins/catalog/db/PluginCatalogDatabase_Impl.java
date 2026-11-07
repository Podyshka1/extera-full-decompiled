package com.exteragram.messenger.plugins.catalog.db;

import androidx.room.InvalidationTracker;
import androidx.room.RoomOpenDelegate;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import com.chaquo.python.internal.Common;
import com.google.android.gms.cast.MediaTrack;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\bH\u0014J\b\u0010\t\u001a\u00020\nH\u0014J\b\u0010\u000b\u001a\u00020\fH\u0016J\"\u0010\r\u001a\u001c\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000f\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000f0\u00100\u000eH\u0014J\u0016\u0010\u0011\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00130\u000f0\u0012H\u0016J*\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u00102\u001a\u0010\u0016\u001a\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00130\u000f\u0012\u0004\u0012\u00020\u00130\u000eH\u0016J\b\u0010\u0017\u001a\u00020\u0006H\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDatabase_Impl;", "Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDatabase;", "<init>", "()V", "_pluginCatalogDao", "Lkotlin/Lazy;", "Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDao;", "createOpenDelegate", "Landroidx/room/RoomOpenDelegate;", "createInvalidationTracker", "Landroidx/room/InvalidationTracker;", "clearAllTables", _UrlKt.FRAGMENT_ENCODE_SET, "getRequiredTypeConverterClasses", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/reflect/KClass;", _UrlKt.FRAGMENT_ENCODE_SET, "getRequiredAutoMigrationSpecClasses", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/migration/AutoMigrationSpec;", "createAutoMigrations", "Landroidx/room/migration/Migration;", "autoMigrationSpecs", "catalogDao", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class PluginCatalogDatabase_Impl extends PluginCatalogDatabase {
    private final Lazy<PluginCatalogDao> _pluginCatalogDao = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDatabase_Impl$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PluginCatalogDatabase_Impl.$r8$lambda$b4l2h2bOZ1lJ7uZRGhCpJacIeVM(this.f$0);
        }
    });

    public static PluginCatalogDao_Impl $r8$lambda$b4l2h2bOZ1lJ7uZRGhCpJacIeVM(PluginCatalogDatabase_Impl pluginCatalogDatabase_Impl) {
        return new PluginCatalogDao_Impl(pluginCatalogDatabase_Impl);
    }

    @Override // androidx.room.RoomDatabase
    public RoomOpenDelegate createOpenDelegate() {
        return new RoomOpenDelegate() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDatabase_Impl$createOpenDelegate$_openDelegate$1
            @Override // androidx.room.RoomOpenDelegate
            public void onCreate(SQLiteConnection connection) {
            }

            @Override // androidx.room.RoomOpenDelegate
            public void onPostMigrate(SQLiteConnection connection) {
            }

            {
                super(4, "cd09fbba4b207478128bd70d9f5a6f81", "3f353ca22c6ecf91be1d47fbf2aec7e3");
            }

            @Override // androidx.room.RoomOpenDelegate
            public void createAllTables(SQLiteConnection connection) {
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `repositories` (`repositoryId` INTEGER NOT NULL, `username` TEXT, `title` TEXT, `source` INTEGER NOT NULL, `sortOrder` INTEGER NOT NULL, `addedAt` INTEGER NOT NULL, `syncedAt` INTEGER NOT NULL, `pluginsCount` INTEGER NOT NULL, `url` TEXT, `homepage` TEXT, PRIMARY KEY(`repositoryId`))");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `entries` (`repositoryId` INTEGER NOT NULL, `entryId` INTEGER NOT NULL, `date` INTEGER NOT NULL, `documentId` INTEGER NOT NULL, `fileName` TEXT NOT NULL, `size` INTEGER NOT NULL, `caption` TEXT, `message` BLOB, `views` INTEGER NOT NULL DEFAULT 0, `updatedAt` INTEGER NOT NULL DEFAULT 0, `fileUrl` TEXT, `sha256` TEXT, PRIMARY KEY(`repositoryId`, `entryId`))");
                SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_entries_documentId` ON `entries` (`documentId`)");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `metadata` (`documentId` INTEGER NOT NULL, `pluginId` TEXT, `name` TEXT, `author` TEXT, `description` TEXT, `version` TEXT, `icon` TEXT, `appVersion` TEXT, `sdkVersion` TEXT, `requirements` TEXT, `categories` TEXT, `error` TEXT, `parsedAt` INTEGER NOT NULL, `parsedWithSdk` TEXT, PRIMARY KEY(`documentId`))");
                SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                SQLite.execSQL(connection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'cd09fbba4b207478128bd70d9f5a6f81')");
            }

            @Override // androidx.room.RoomOpenDelegate
            public void dropAllTables(SQLiteConnection connection) {
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `repositories`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `entries`");
                SQLite.execSQL(connection, "DROP TABLE IF EXISTS `metadata`");
            }

            @Override // androidx.room.RoomOpenDelegate
            public void onOpen(SQLiteConnection connection) {
                this.this$0.internalInitInvalidationTracker(connection);
            }

            @Override // androidx.room.RoomOpenDelegate
            public void onPreMigrate(SQLiteConnection connection) {
                DBUtil.dropFtsSyncTriggers(connection);
            }

            @Override // androidx.room.RoomOpenDelegate
            public RoomOpenDelegate.ValidationResult onValidateSchema(SQLiteConnection connection) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("repositoryId", new TableInfo.Column("repositoryId", "INTEGER", true, 1, null, 1));
                linkedHashMap.put("username", new TableInfo.Column("username", "TEXT", false, 0, null, 1));
                linkedHashMap.put("title", new TableInfo.Column("title", "TEXT", false, 0, null, 1));
                linkedHashMap.put("source", new TableInfo.Column("source", "INTEGER", true, 0, null, 1));
                linkedHashMap.put("sortOrder", new TableInfo.Column("sortOrder", "INTEGER", true, 0, null, 1));
                linkedHashMap.put("addedAt", new TableInfo.Column("addedAt", "INTEGER", true, 0, null, 1));
                linkedHashMap.put("syncedAt", new TableInfo.Column("syncedAt", "INTEGER", true, 0, null, 1));
                linkedHashMap.put("pluginsCount", new TableInfo.Column("pluginsCount", "INTEGER", true, 0, null, 1));
                linkedHashMap.put("url", new TableInfo.Column("url", "TEXT", false, 0, null, 1));
                linkedHashMap.put("homepage", new TableInfo.Column("homepage", "TEXT", false, 0, null, 1));
                TableInfo tableInfo = new TableInfo("repositories", linkedHashMap, new LinkedHashSet(), new LinkedHashSet());
                TableInfo.Companion companion = TableInfo.INSTANCE;
                TableInfo tableInfo2 = companion.read(connection, "repositories");
                if (!tableInfo.equals(tableInfo2)) {
                    return new RoomOpenDelegate.ValidationResult(false, "repositories(com.exteragram.messenger.plugins.catalog.db.PluginRepositoryEntity).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("repositoryId", new TableInfo.Column("repositoryId", "INTEGER", true, 1, null, 1));
                linkedHashMap2.put("entryId", new TableInfo.Column("entryId", "INTEGER", true, 2, null, 1));
                linkedHashMap2.put("date", new TableInfo.Column("date", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("documentId", new TableInfo.Column("documentId", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put("fileName", new TableInfo.Column("fileName", "TEXT", true, 0, null, 1));
                linkedHashMap2.put("size", new TableInfo.Column("size", "INTEGER", true, 0, null, 1));
                linkedHashMap2.put(MediaTrack.ROLE_CAPTION, new TableInfo.Column(MediaTrack.ROLE_CAPTION, "TEXT", false, 0, null, 1));
                linkedHashMap2.put("message", new TableInfo.Column("message", "BLOB", false, 0, null, 1));
                linkedHashMap2.put("views", new TableInfo.Column("views", "INTEGER", true, 0, MVEL.VERSION_SUB, 1));
                linkedHashMap2.put("updatedAt", new TableInfo.Column("updatedAt", "INTEGER", true, 0, MVEL.VERSION_SUB, 1));
                linkedHashMap2.put("fileUrl", new TableInfo.Column("fileUrl", "TEXT", false, 0, null, 1));
                linkedHashMap2.put("sha256", new TableInfo.Column("sha256", "TEXT", false, 0, null, 1));
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                linkedHashSet2.add(new TableInfo.Index("index_entries_documentId", false, CollectionsKt.listOf("documentId"), CollectionsKt.listOf("ASC")));
                TableInfo tableInfo3 = new TableInfo("entries", linkedHashMap2, linkedHashSet, linkedHashSet2);
                TableInfo tableInfo4 = companion.read(connection, "entries");
                if (!tableInfo3.equals(tableInfo4)) {
                    return new RoomOpenDelegate.ValidationResult(false, "entries(com.exteragram.messenger.plugins.catalog.db.CatalogEntryEntity).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
                }
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                linkedHashMap3.put("documentId", new TableInfo.Column("documentId", "INTEGER", true, 1, null, 1));
                linkedHashMap3.put("pluginId", new TableInfo.Column("pluginId", "TEXT", false, 0, null, 1));
                linkedHashMap3.put("name", new TableInfo.Column("name", "TEXT", false, 0, null, 1));
                linkedHashMap3.put("author", new TableInfo.Column("author", "TEXT", false, 0, null, 1));
                linkedHashMap3.put(MediaTrack.ROLE_DESCRIPTION, new TableInfo.Column(MediaTrack.ROLE_DESCRIPTION, "TEXT", false, 0, null, 1));
                linkedHashMap3.put("version", new TableInfo.Column("version", "TEXT", false, 0, null, 1));
                linkedHashMap3.put("icon", new TableInfo.Column("icon", "TEXT", false, 0, null, 1));
                linkedHashMap3.put("appVersion", new TableInfo.Column("appVersion", "TEXT", false, 0, null, 1));
                linkedHashMap3.put("sdkVersion", new TableInfo.Column("sdkVersion", "TEXT", false, 0, null, 1));
                linkedHashMap3.put(Common.ASSET_REQUIREMENTS, new TableInfo.Column(Common.ASSET_REQUIREMENTS, "TEXT", false, 0, null, 1));
                linkedHashMap3.put("categories", new TableInfo.Column("categories", "TEXT", false, 0, null, 1));
                linkedHashMap3.put("error", new TableInfo.Column("error", "TEXT", false, 0, null, 1));
                linkedHashMap3.put("parsedAt", new TableInfo.Column("parsedAt", "INTEGER", true, 0, null, 1));
                linkedHashMap3.put("parsedWithSdk", new TableInfo.Column("parsedWithSdk", "TEXT", false, 0, null, 1));
                TableInfo tableInfo5 = new TableInfo("metadata", linkedHashMap3, new LinkedHashSet(), new LinkedHashSet());
                TableInfo tableInfo6 = companion.read(connection, "metadata");
                if (!tableInfo5.equals(tableInfo6)) {
                    return new RoomOpenDelegate.ValidationResult(false, "metadata(com.exteragram.messenger.plugins.catalog.db.PluginMetadataEntity).\n Expected:\n" + tableInfo5 + "\n Found:\n" + tableInfo6);
                }
                return new RoomOpenDelegate.ValidationResult(true, null);
            }
        };
    }

    @Override // androidx.room.RoomDatabase
    public InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new LinkedHashMap(), new LinkedHashMap(), "repositories", "entries", "metadata");
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.performClear(false, "repositories", "entries", "metadata");
    }

    @Override // androidx.room.RoomDatabase
    public Map<KClass<?>, List<KClass<?>>> getRequiredTypeConverterClasses() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(PluginCatalogDao.class), PluginCatalogDao_Impl.INSTANCE.getRequiredConverters());
        return linkedHashMap;
    }

    @Override // androidx.room.RoomDatabase
    public Set<KClass<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecClasses() {
        return new LinkedHashSet();
    }

    @Override // androidx.room.RoomDatabase
    public List<Migration> createAutoMigrations(Map<KClass<? extends AutoMigrationSpec>, ? extends AutoMigrationSpec> autoMigrationSpecs) {
        return new ArrayList();
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDatabase
    public PluginCatalogDao catalogDao() {
        return this._pluginCatalogDao.getValue();
    }
}
