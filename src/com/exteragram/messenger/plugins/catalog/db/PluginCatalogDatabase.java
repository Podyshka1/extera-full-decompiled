package com.exteragram.messenger.plugins.catalog.db;

import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.ApplicationLoader;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "catalogDao", "Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDao;", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class PluginCatalogDatabase extends RoomDatabase {
    private static volatile PluginCatalogDatabase INSTANCE;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final PluginCatalogDatabase$Companion$MIGRATION_1_2$1 MIGRATION_1_2 = new Migration() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDatabase$Companion$MIGRATION_1_2$1
        @Override // androidx.room.migration.Migration
        public void migrate(SupportSQLiteDatabase db) {
            db.execSQL("ALTER TABLE metadata ADD COLUMN categories TEXT");
            db.execSQL("ALTER TABLE metadata ADD COLUMN parsedWithSdk TEXT");
        }
    };
    private static final PluginCatalogDatabase$Companion$MIGRATION_2_3$1 MIGRATION_2_3 = new Migration() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDatabase$Companion$MIGRATION_2_3$1
        @Override // androidx.room.migration.Migration
        public void migrate(SupportSQLiteDatabase db) {
            db.execSQL("ALTER TABLE entries ADD COLUMN views INTEGER NOT NULL DEFAULT 0");
            db.execSQL("ALTER TABLE entries ADD COLUMN updatedAt INTEGER NOT NULL DEFAULT 0");
            db.execSQL("UPDATE entries SET updatedAt = date");
        }
    };
    private static final PluginCatalogDatabase$Companion$MIGRATION_3_4$1 MIGRATION_3_4 = new Migration() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDatabase$Companion$MIGRATION_3_4$1
        @Override // androidx.room.migration.Migration
        public void migrate(SupportSQLiteDatabase db) {
            db.execSQL("CREATE TABLE `repositories_new` (`repositoryId` INTEGER NOT NULL, `username` TEXT, `title` TEXT, `source` INTEGER NOT NULL, `sortOrder` INTEGER NOT NULL, `addedAt` INTEGER NOT NULL, `syncedAt` INTEGER NOT NULL, `pluginsCount` INTEGER NOT NULL, `url` TEXT, `homepage` TEXT, PRIMARY KEY(`repositoryId`))");
            db.execSQL("INSERT INTO `repositories_new` (`repositoryId`, `username`, `title`, `source`, `sortOrder`, `addedAt`, `syncedAt`, `pluginsCount`) SELECT `channelId`, `username`, `title`, `source`, `sortOrder`, `addedAt`, `syncedAt`, `pluginsCount` FROM `repositories`");
            db.execSQL("DROP TABLE `repositories`");
            db.execSQL("ALTER TABLE `repositories_new` RENAME TO `repositories`");
            db.execSQL("CREATE TABLE `entries_new` (`repositoryId` INTEGER NOT NULL, `entryId` INTEGER NOT NULL, `date` INTEGER NOT NULL, `documentId` INTEGER NOT NULL, `fileName` TEXT NOT NULL, `size` INTEGER NOT NULL, `caption` TEXT, `message` BLOB, `views` INTEGER NOT NULL DEFAULT 0, `updatedAt` INTEGER NOT NULL DEFAULT 0, `fileUrl` TEXT, `sha256` TEXT, PRIMARY KEY(`repositoryId`, `entryId`))");
            db.execSQL("INSERT INTO `entries_new` (`repositoryId`, `entryId`, `date`, `documentId`, `fileName`, `size`, `caption`, `message`, `views`, `updatedAt`) SELECT `channelId`, `messageId`, `date`, `documentId`, `fileName`, `size`, `caption`, `message`, `views`, `updatedAt` FROM `entries`");
            db.execSQL("DROP TABLE `entries`");
            db.execSQL("ALTER TABLE `entries_new` RENAME TO `entries`");
            db.execSQL("CREATE INDEX IF NOT EXISTS `index_entries_documentId` ON `entries` (`documentId`)");
        }
    };

    public abstract PluginCatalogDao catalogDao();

    @Metadata(d1 = {"\u0000#\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004*\u0003\u0007\n\r\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u000f\u001a\u00020\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\bR\u0010\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDatabase$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "INSTANCE", "Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDatabase;", "MIGRATION_1_2", "com/exteragram/messenger/plugins/catalog/db/PluginCatalogDatabase$Companion$MIGRATION_1_2$1", "Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDatabase$Companion$MIGRATION_1_2$1;", "MIGRATION_2_3", "com/exteragram/messenger/plugins/catalog/db/PluginCatalogDatabase$Companion$MIGRATION_2_3$1", "Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDatabase$Companion$MIGRATION_2_3$1;", "MIGRATION_3_4", "com/exteragram/messenger/plugins/catalog/db/PluginCatalogDatabase$Companion$MIGRATION_3_4$1", "Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDatabase$Companion$MIGRATION_3_4$1;", "getInstance", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nPluginCatalogDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginCatalogDatabase.kt\ncom/exteragram/messenger/plugins/catalog/db/PluginCatalogDatabase$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PluginCatalogDatabase getInstance() {
            PluginCatalogDatabase pluginCatalogDatabase;
            PluginCatalogDatabase pluginCatalogDatabase2 = PluginCatalogDatabase.INSTANCE;
            if (pluginCatalogDatabase2 != null) {
                return pluginCatalogDatabase2;
            }
            synchronized (this) {
                pluginCatalogDatabase = PluginCatalogDatabase.INSTANCE;
                if (pluginCatalogDatabase == null) {
                    RoomDatabase roomDatabaseBuild = Room.databaseBuilder(ApplicationLoader.applicationContext, PluginCatalogDatabase.class, "plugin-catalog").fallbackToDestructiveMigrationOnDowngrade(true).addMigrations(PluginCatalogDatabase.MIGRATION_1_2, PluginCatalogDatabase.MIGRATION_2_3, PluginCatalogDatabase.MIGRATION_3_4).build();
                    PluginCatalogDatabase.INSTANCE = (PluginCatalogDatabase) roomDatabaseBuild;
                    pluginCatalogDatabase = (PluginCatalogDatabase) roomDatabaseBuild;
                }
            }
            return pluginCatalogDatabase;
        }
    }
}
