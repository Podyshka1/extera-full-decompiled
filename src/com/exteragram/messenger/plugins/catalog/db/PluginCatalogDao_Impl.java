package com.exteragram.messenger.plugins.catalog.db;

import androidx.collection.LongSparseArray;
import androidx.room.EntityDeleteOrUpdateAdapter;
import androidx.room.EntityInsertAdapter;
import androidx.room.EntityUpsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.google.android.gms.cast.MediaTrack;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 A2\u00020\u0001:\u0001AB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u0011H\u0014J,\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u00112\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\r0\u0011H\u0016J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0016\u0010\u0017\u001a\u00020\u000f2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0011H\u0016J\u0016\u0010\u0019\u001a\u00020\u000f2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0011H\u0016J\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\rH\u0016J\u0016\u0010\u001a\u001a\u00020\u000f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\r0\u0011H\u0016J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0011H\u0016J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u000f\u0010 \u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0002\u0010!J\u0016\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J(\u0010$\u001a\b\u0012\u0004\u0012\u00020\b0\u00112\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010%\u001a\u0004\u0018\u00010\u001f2\u0006\u0010&\u001a\u00020\u001fH\u0016J\u0016\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00140\u00112\u0006\u0010(\u001a\u00020\u001fH\u0016J\u0016\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010+\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020-H\u0016J\u001e\u0010.\u001a\u00020\u000f2\u0006\u0010/\u001a\u00020-2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u00140\u0011H\u0016J\u0010\u00101\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J \u00102\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u00103\u001a\u00020\u00142\u0006\u00104\u001a\u00020-H\u0016J\"\u00105\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u00106\u001a\u00020\u001f2\b\u00107\u001a\u0004\u0018\u00010\u001fH\u0016J\u0018\u00108\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u00104\u001a\u00020-H\u0016J\u0010\u00109\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010:\u001a\u00020\u000fH\u0016J\b\u0010;\u001a\u00020\u000fH\u0014J \u0010<\u001a\u00020\u000f2\u0006\u0010=\u001a\u00020>2\u000e\u0010?\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0@H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006B"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDao_Impl;", "Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDao;", "__db", "Landroidx/room/RoomDatabase;", "<init>", "(Landroidx/room/RoomDatabase;)V", "__insertAdapterOfCatalogEntryEntity", "Landroidx/room/EntityInsertAdapter;", "Lcom/exteragram/messenger/plugins/catalog/db/CatalogEntryEntity;", "__upsertAdapterOfPluginRepositoryEntity", "Landroidx/room/EntityUpsertAdapter;", "Lcom/exteragram/messenger/plugins/catalog/db/PluginRepositoryEntity;", "__upsertAdapterOfPluginMetadataEntity", "Lcom/exteragram/messenger/plugins/catalog/db/PluginMetadataEntity;", "insertEntries", _UrlKt.FRAGMENT_ENCODE_SET, "entries", _UrlKt.FRAGMENT_ENCODE_SET, "replaceEntries", "repositoryId", _UrlKt.FRAGMENT_ENCODE_SET, "metadata", "removeRepository", "replaceFolderRepositories", "repositories", "upsertRepositories", "upsertMetadata", "getRepositories", "getRepository", "getRepositoryByUrl", "url", _UrlKt.FRAGMENT_ENCODE_SET, "getMinRepositoryId", "()Ljava/lang/Long;", "getEntries", "Lcom/exteragram/messenger/plugins/catalog/db/CatalogEntryWithMetadata;", "getEntriesWithoutMetadata", "sdkVersion", "retryError", "getDocumentIdsWithError", "error", "getEntryVersions", "Lcom/exteragram/messenger/plugins/catalog/db/CatalogEntryVersion;", "getEntry", "entryId", _UrlKt.FRAGMENT_ENCODE_SET, "deleteRepositoriesExcept", "source", "keepIds", "deleteRepository", "updateSyncState", "syncedAt", "pluginsCount", "updateGitInfo", "title", "homepage", "updatePluginsCount", "deleteEntries", "pruneMetadata", "pruneEntries", "__fetchRelationshipmetadataAscomExteragramMessengerPluginsCatalogDbPluginMetadataEntity", "_connection", "Landroidx/sqlite/SQLiteConnection;", "_map", "Landroidx/collection/LongSparseArray;", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class PluginCatalogDao_Impl extends PluginCatalogDao {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter<CatalogEntryEntity> __insertAdapterOfCatalogEntryEntity = new EntityInsertAdapter<CatalogEntryEntity>() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl.1
        @Override // androidx.room.EntityInsertAdapter
        public String createQuery() {
            return "INSERT OR REPLACE INTO `entries` (`repositoryId`,`entryId`,`date`,`documentId`,`fileName`,`size`,`caption`,`message`,`views`,`updatedAt`,`fileUrl`,`sha256`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertAdapter
        public void bind(SQLiteStatement statement, CatalogEntryEntity entity) {
            statement.bindLong(1, entity.getRepositoryId());
            statement.bindLong(2, entity.getEntryId());
            statement.bindLong(3, entity.getDate());
            statement.bindLong(4, entity.getDocumentId());
            statement.bindText(5, entity.getFileName());
            statement.bindLong(6, entity.getSize());
            String caption = entity.getCaption();
            if (caption == null) {
                statement.bindNull(7);
            } else {
                statement.bindText(7, caption);
            }
            byte[] message = entity.getMessage();
            if (message == null) {
                statement.bindNull(8);
            } else {
                statement.bindBlob(8, message);
            }
            statement.bindLong(9, entity.getViews());
            statement.bindLong(10, entity.getUpdatedAt());
            String fileUrl = entity.getFileUrl();
            if (fileUrl == null) {
                statement.bindNull(11);
            } else {
                statement.bindText(11, fileUrl);
            }
            String sha256 = entity.getSha256();
            if (sha256 == null) {
                statement.bindNull(12);
            } else {
                statement.bindText(12, sha256);
            }
        }
    };
    private final EntityUpsertAdapter<PluginRepositoryEntity> __upsertAdapterOfPluginRepositoryEntity = new EntityUpsertAdapter<>(new EntityInsertAdapter<PluginRepositoryEntity>() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl.2
        @Override // androidx.room.EntityInsertAdapter
        public String createQuery() {
            return "INSERT INTO `repositories` (`repositoryId`,`username`,`title`,`source`,`sortOrder`,`addedAt`,`syncedAt`,`pluginsCount`,`url`,`homepage`) VALUES (?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertAdapter
        public void bind(SQLiteStatement statement, PluginRepositoryEntity entity) {
            statement.bindLong(1, entity.getRepositoryId());
            String username = entity.getUsername();
            if (username == null) {
                statement.bindNull(2);
            } else {
                statement.bindText(2, username);
            }
            String title = entity.getTitle();
            if (title == null) {
                statement.bindNull(3);
            } else {
                statement.bindText(3, title);
            }
            statement.bindLong(4, entity.getSource());
            statement.bindLong(5, entity.getSortOrder());
            statement.bindLong(6, entity.getAddedAt());
            statement.bindLong(7, entity.getSyncedAt());
            statement.bindLong(8, entity.getPluginsCount());
            String url = entity.getUrl();
            if (url == null) {
                statement.bindNull(9);
            } else {
                statement.bindText(9, url);
            }
            String homepage = entity.getHomepage();
            if (homepage == null) {
                statement.bindNull(10);
            } else {
                statement.bindText(10, homepage);
            }
        }
    }, new EntityDeleteOrUpdateAdapter<PluginRepositoryEntity>() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl.3
        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        public String createQuery() {
            return "UPDATE `repositories` SET `repositoryId` = ?,`username` = ?,`title` = ?,`source` = ?,`sortOrder` = ?,`addedAt` = ?,`syncedAt` = ?,`pluginsCount` = ?,`url` = ?,`homepage` = ? WHERE `repositoryId` = ?";
        }

        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        public void bind(SQLiteStatement statement, PluginRepositoryEntity entity) {
            statement.bindLong(1, entity.getRepositoryId());
            String username = entity.getUsername();
            if (username == null) {
                statement.bindNull(2);
            } else {
                statement.bindText(2, username);
            }
            String title = entity.getTitle();
            if (title == null) {
                statement.bindNull(3);
            } else {
                statement.bindText(3, title);
            }
            statement.bindLong(4, entity.getSource());
            statement.bindLong(5, entity.getSortOrder());
            statement.bindLong(6, entity.getAddedAt());
            statement.bindLong(7, entity.getSyncedAt());
            statement.bindLong(8, entity.getPluginsCount());
            String url = entity.getUrl();
            if (url == null) {
                statement.bindNull(9);
            } else {
                statement.bindText(9, url);
            }
            String homepage = entity.getHomepage();
            if (homepage == null) {
                statement.bindNull(10);
            } else {
                statement.bindText(10, homepage);
            }
            statement.bindLong(11, entity.getRepositoryId());
        }
    });
    private final EntityUpsertAdapter<PluginMetadataEntity> __upsertAdapterOfPluginMetadataEntity = new EntityUpsertAdapter<>(new EntityInsertAdapter<PluginMetadataEntity>() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl.4
        @Override // androidx.room.EntityInsertAdapter
        public String createQuery() {
            return "INSERT INTO `metadata` (`documentId`,`pluginId`,`name`,`author`,`description`,`version`,`icon`,`appVersion`,`sdkVersion`,`requirements`,`categories`,`error`,`parsedAt`,`parsedWithSdk`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertAdapter
        public void bind(SQLiteStatement statement, PluginMetadataEntity entity) {
            statement.bindLong(1, entity.getDocumentId());
            String pluginId = entity.getPluginId();
            if (pluginId == null) {
                statement.bindNull(2);
            } else {
                statement.bindText(2, pluginId);
            }
            String name = entity.getName();
            if (name == null) {
                statement.bindNull(3);
            } else {
                statement.bindText(3, name);
            }
            String author = entity.getAuthor();
            if (author == null) {
                statement.bindNull(4);
            } else {
                statement.bindText(4, author);
            }
            String description = entity.getDescription();
            if (description == null) {
                statement.bindNull(5);
            } else {
                statement.bindText(5, description);
            }
            String version = entity.getVersion();
            if (version == null) {
                statement.bindNull(6);
            } else {
                statement.bindText(6, version);
            }
            String icon = entity.getIcon();
            if (icon == null) {
                statement.bindNull(7);
            } else {
                statement.bindText(7, icon);
            }
            String appVersion = entity.getAppVersion();
            if (appVersion == null) {
                statement.bindNull(8);
            } else {
                statement.bindText(8, appVersion);
            }
            String sdkVersion = entity.getSdkVersion();
            if (sdkVersion == null) {
                statement.bindNull(9);
            } else {
                statement.bindText(9, sdkVersion);
            }
            String requirements = entity.getRequirements();
            if (requirements == null) {
                statement.bindNull(10);
            } else {
                statement.bindText(10, requirements);
            }
            String categories = entity.getCategories();
            if (categories == null) {
                statement.bindNull(11);
            } else {
                statement.bindText(11, categories);
            }
            String error = entity.getError();
            if (error == null) {
                statement.bindNull(12);
            } else {
                statement.bindText(12, error);
            }
            statement.bindLong(13, entity.getParsedAt());
            String parsedWithSdk = entity.getParsedWithSdk();
            if (parsedWithSdk == null) {
                statement.bindNull(14);
            } else {
                statement.bindText(14, parsedWithSdk);
            }
        }
    }, new EntityDeleteOrUpdateAdapter<PluginMetadataEntity>() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl.5
        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        public String createQuery() {
            return "UPDATE `metadata` SET `documentId` = ?,`pluginId` = ?,`name` = ?,`author` = ?,`description` = ?,`version` = ?,`icon` = ?,`appVersion` = ?,`sdkVersion` = ?,`requirements` = ?,`categories` = ?,`error` = ?,`parsedAt` = ?,`parsedWithSdk` = ? WHERE `documentId` = ?";
        }

        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        public void bind(SQLiteStatement statement, PluginMetadataEntity entity) {
            statement.bindLong(1, entity.getDocumentId());
            String pluginId = entity.getPluginId();
            if (pluginId == null) {
                statement.bindNull(2);
            } else {
                statement.bindText(2, pluginId);
            }
            String name = entity.getName();
            if (name == null) {
                statement.bindNull(3);
            } else {
                statement.bindText(3, name);
            }
            String author = entity.getAuthor();
            if (author == null) {
                statement.bindNull(4);
            } else {
                statement.bindText(4, author);
            }
            String description = entity.getDescription();
            if (description == null) {
                statement.bindNull(5);
            } else {
                statement.bindText(5, description);
            }
            String version = entity.getVersion();
            if (version == null) {
                statement.bindNull(6);
            } else {
                statement.bindText(6, version);
            }
            String icon = entity.getIcon();
            if (icon == null) {
                statement.bindNull(7);
            } else {
                statement.bindText(7, icon);
            }
            String appVersion = entity.getAppVersion();
            if (appVersion == null) {
                statement.bindNull(8);
            } else {
                statement.bindText(8, appVersion);
            }
            String sdkVersion = entity.getSdkVersion();
            if (sdkVersion == null) {
                statement.bindNull(9);
            } else {
                statement.bindText(9, sdkVersion);
            }
            String requirements = entity.getRequirements();
            if (requirements == null) {
                statement.bindNull(10);
            } else {
                statement.bindText(10, requirements);
            }
            String categories = entity.getCategories();
            if (categories == null) {
                statement.bindNull(11);
            } else {
                statement.bindText(11, categories);
            }
            String error = entity.getError();
            if (error == null) {
                statement.bindNull(12);
            } else {
                statement.bindText(12, error);
            }
            statement.bindLong(13, entity.getParsedAt());
            String parsedWithSdk = entity.getParsedWithSdk();
            if (parsedWithSdk == null) {
                statement.bindNull(14);
            } else {
                statement.bindText(14, parsedWithSdk);
            }
            statement.bindLong(15, entity.getDocumentId());
        }
    });

    public PluginCatalogDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void insertEntries(final List<CatalogEntryEntity> entries) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.m3088$r8$lambda$4PSpl_6sKUT920WUtmXArmfTw(this.f$0, entries, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$4PSpl_-6sKUT920WUtmXA-rmfTw, reason: not valid java name */
    public static Unit m3088$r8$lambda$4PSpl_6sKUT920WUtmXArmfTw(PluginCatalogDao_Impl pluginCatalogDao_Impl, List list, SQLiteConnection sQLiteConnection) throws Exception {
        pluginCatalogDao_Impl.__insertAdapterOfCatalogEntryEntity.insert(sQLiteConnection, list);
        return Unit.INSTANCE;
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void replaceEntries(final long repositoryId, final List<CatalogEntryEntity> entries, final List<PluginMetadataEntity> metadata) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$bbC7Bbl660Mew2_uNwYh0sIrA3U(this.f$0, repositoryId, entries, metadata, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$bbC7Bbl660Mew2_uNwYh0sIrA3U(PluginCatalogDao_Impl pluginCatalogDao_Impl, long j, List list, List list2, SQLiteConnection sQLiteConnection) {
        super.replaceEntries(j, list, list2);
        return Unit.INSTANCE;
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void removeRepository(final long repositoryId) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$0FdhHIQLJNoYfVpVZACpTtOQDLI(this.f$0, repositoryId, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$0FdhHIQLJNoYfVpVZACpTtOQDLI(PluginCatalogDao_Impl pluginCatalogDao_Impl, long j, SQLiteConnection sQLiteConnection) {
        super.removeRepository(j);
        return Unit.INSTANCE;
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void replaceFolderRepositories(final List<PluginRepositoryEntity> repositories) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.m3091$r8$lambda$YzG6HnMd1MTEECgOQTVVKQFAO0(this.f$0, repositories, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$YzG6HnMd1M-TEECgOQTVVKQFAO0, reason: not valid java name */
    public static Unit m3091$r8$lambda$YzG6HnMd1MTEECgOQTVVKQFAO0(PluginCatalogDao_Impl pluginCatalogDao_Impl, List list, SQLiteConnection sQLiteConnection) {
        super.replaceFolderRepositories(list);
        return Unit.INSTANCE;
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void upsertRepositories(final List<PluginRepositoryEntity> repositories) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$1FcuG8zhPLno8paTDfFzc_GTXn8(this.f$0, repositories, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$1FcuG8zhPLno8paTDfFzc_GTXn8(PluginCatalogDao_Impl pluginCatalogDao_Impl, List list, SQLiteConnection sQLiteConnection) throws Exception {
        pluginCatalogDao_Impl.__upsertAdapterOfPluginRepositoryEntity.upsert(sQLiteConnection, list);
        return Unit.INSTANCE;
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void upsertMetadata(final PluginMetadataEntity metadata) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$BEFUzdlm25kxfvEtR8Qen1taAy0(this.f$0, metadata, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$BEFUzdlm25kxfvEtR8Qen1taAy0(PluginCatalogDao_Impl pluginCatalogDao_Impl, PluginMetadataEntity pluginMetadataEntity, SQLiteConnection sQLiteConnection) throws Exception {
        pluginCatalogDao_Impl.__upsertAdapterOfPluginMetadataEntity.upsert(sQLiteConnection, pluginMetadataEntity);
        return Unit.INSTANCE;
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void upsertMetadata(final List<PluginMetadataEntity> metadata) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.m3092$r8$lambda$e23HlpV4Y4tjcyLZE8ZecQDq0(this.f$0, metadata, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$e23HlpV4Y4tjc-yLZE8ZecQDq-0, reason: not valid java name */
    public static Unit m3092$r8$lambda$e23HlpV4Y4tjcyLZE8ZecQDq0(PluginCatalogDao_Impl pluginCatalogDao_Impl, List list, SQLiteConnection sQLiteConnection) throws Exception {
        pluginCatalogDao_Impl.__upsertAdapterOfPluginMetadataEntity.upsert(sQLiteConnection, list);
        return Unit.INSTANCE;
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public List<PluginRepositoryEntity> getRepositories() {
        final String str = "SELECT * FROM repositories ORDER BY source, sortOrder, addedAt";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$S0JUI_rI_LrM9WXQnPbKq8BvzU8(str, (SQLiteConnection) obj);
            }
        });
    }

    public static List $r8$lambda$S0JUI_rI_LrM9WXQnPbKq8BvzU8(String str, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "repositoryId");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "username");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "title");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "source");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "sortOrder");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "addedAt");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "syncedAt");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "pluginsCount");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "url");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "homepage");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(new PluginRepositoryEntity(sQLiteStatementPrepare.getLong(columnIndexOrThrow), sQLiteStatementPrepare.isNull(columnIndexOrThrow2) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow2), sQLiteStatementPrepare.isNull(columnIndexOrThrow3) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow3), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow4), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow5), sQLiteStatementPrepare.getLong(columnIndexOrThrow6), sQLiteStatementPrepare.getLong(columnIndexOrThrow7), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow8), sQLiteStatementPrepare.isNull(columnIndexOrThrow9) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow9), sQLiteStatementPrepare.isNull(columnIndexOrThrow10) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow10)));
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public PluginRepositoryEntity getRepository(final long repositoryId) {
        final String str = "SELECT * FROM repositories WHERE repositoryId = ?";
        return (PluginRepositoryEntity) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$Fjb5ydVXsMI6Hh8JD2FbdQfuNQI(str, repositoryId, (SQLiteConnection) obj);
            }
        });
    }

    public static PluginRepositoryEntity $r8$lambda$Fjb5ydVXsMI6Hh8JD2FbdQfuNQI(String str, long j, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "repositoryId");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "username");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "title");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "source");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "sortOrder");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "addedAt");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "syncedAt");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "pluginsCount");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "url");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "homepage");
            PluginRepositoryEntity pluginRepositoryEntity = null;
            if (sQLiteStatementPrepare.step()) {
                pluginRepositoryEntity = new PluginRepositoryEntity(sQLiteStatementPrepare.getLong(columnIndexOrThrow), sQLiteStatementPrepare.isNull(columnIndexOrThrow2) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow2), sQLiteStatementPrepare.isNull(columnIndexOrThrow3) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow3), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow4), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow5), sQLiteStatementPrepare.getLong(columnIndexOrThrow6), sQLiteStatementPrepare.getLong(columnIndexOrThrow7), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow8), sQLiteStatementPrepare.isNull(columnIndexOrThrow9) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow9), sQLiteStatementPrepare.isNull(columnIndexOrThrow10) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow10));
            }
            return pluginRepositoryEntity;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public PluginRepositoryEntity getRepositoryByUrl(final String url) {
        final String str = "SELECT * FROM repositories WHERE url = ?";
        return (PluginRepositoryEntity) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.m3085$r8$lambda$9u012rFhChu5HUp4TnrZDHaDw(str, url, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$-9u012rFhChu5HUp4Tn-rZDHaDw, reason: not valid java name */
    public static PluginRepositoryEntity m3085$r8$lambda$9u012rFhChu5HUp4TnrZDHaDw(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "repositoryId");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "username");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "title");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "source");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "sortOrder");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "addedAt");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "syncedAt");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "pluginsCount");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "url");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "homepage");
            PluginRepositoryEntity pluginRepositoryEntity = null;
            if (sQLiteStatementPrepare.step()) {
                pluginRepositoryEntity = new PluginRepositoryEntity(sQLiteStatementPrepare.getLong(columnIndexOrThrow), sQLiteStatementPrepare.isNull(columnIndexOrThrow2) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow2), sQLiteStatementPrepare.isNull(columnIndexOrThrow3) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow3), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow4), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow5), sQLiteStatementPrepare.getLong(columnIndexOrThrow6), sQLiteStatementPrepare.getLong(columnIndexOrThrow7), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow8), sQLiteStatementPrepare.isNull(columnIndexOrThrow9) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow9), sQLiteStatementPrepare.isNull(columnIndexOrThrow10) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow10));
            }
            return pluginRepositoryEntity;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public Long getMinRepositoryId() {
        final String str = "SELECT MIN(repositoryId) FROM repositories";
        return (Long) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$GzXUFdX88vc8NX5IP5teJFQLF48(str, (SQLiteConnection) obj);
            }
        });
    }

    public static Long $r8$lambda$GzXUFdX88vc8NX5IP5teJFQLF48(String str, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            Long lValueOf = null;
            if (sQLiteStatementPrepare.step() && !sQLiteStatementPrepare.isNull(0)) {
                lValueOf = Long.valueOf(sQLiteStatementPrepare.getLong(0));
            }
            return lValueOf;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public List<CatalogEntryWithMetadata> getEntries(final long repositoryId) {
        final String str = "SELECT * FROM entries WHERE repositoryId = ? ORDER BY date DESC, entryId DESC";
        return (List) DBUtil.performBlocking(this.__db, true, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$H20fhE9HFXlXiz6AUG1Leiuxiow(str, repositoryId, this, (SQLiteConnection) obj);
            }
        });
    }

    public static List $r8$lambda$H20fhE9HFXlXiz6AUG1Leiuxiow(String str, long j, PluginCatalogDao_Impl pluginCatalogDao_Impl, SQLiteConnection sQLiteConnection) {
        byte[] blob;
        int i;
        int i2;
        int i3;
        int i4;
        String text;
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "repositoryId");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "entryId");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "date");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "documentId");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "fileName");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "size");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, MediaTrack.ROLE_CAPTION);
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "message");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "views");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "updatedAt");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "fileUrl");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "sha256");
            int i5 = columnIndexOrThrow11;
            LongSparseArray<PluginMetadataEntity> longSparseArray = new LongSparseArray<>(0, 1, null);
            while (sQLiteStatementPrepare.step()) {
                longSparseArray.put(sQLiteStatementPrepare.getLong(columnIndexOrThrow4), null);
                columnIndexOrThrow9 = columnIndexOrThrow9;
                columnIndexOrThrow10 = columnIndexOrThrow10;
            }
            int i6 = columnIndexOrThrow9;
            int i7 = columnIndexOrThrow10;
            sQLiteStatementPrepare.reset();
            pluginCatalogDao_Impl.m280x200fffb7(sQLiteConnection, longSparseArray);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow);
                int i8 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2);
                int i9 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow3);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow4);
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow5);
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow6);
                String text3 = sQLiteStatementPrepare.isNull(columnIndexOrThrow7) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow7);
                if (sQLiteStatementPrepare.isNull(columnIndexOrThrow8)) {
                    blob = null;
                    i2 = i6;
                    i = i9;
                } else {
                    blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow8);
                    i = i9;
                    i2 = i6;
                }
                int i10 = (int) sQLiteStatementPrepare.getLong(i2);
                int i11 = columnIndexOrThrow;
                int i12 = columnIndexOrThrow2;
                int i13 = (int) sQLiteStatementPrepare.getLong(i7);
                int i14 = i5;
                if (sQLiteStatementPrepare.isNull(i14)) {
                    int i15 = i7;
                    i3 = columnIndexOrThrow12;
                    i4 = i15;
                    text = null;
                } else {
                    int i16 = i7;
                    i3 = columnIndexOrThrow12;
                    i4 = i16;
                    text = sQLiteStatementPrepare.getText(i14);
                }
                arrayList.add(new CatalogEntryWithMetadata(new CatalogEntryEntity(j2, i8, i, j3, text2, j4, text3, blob, i10, i13, text, sQLiteStatementPrepare.isNull(i3) ? null : sQLiteStatementPrepare.getText(i3)), longSparseArray.get(sQLiteStatementPrepare.getLong(columnIndexOrThrow4))));
                int i17 = i3;
                i7 = i4;
                columnIndexOrThrow12 = i17;
                i5 = i14;
                columnIndexOrThrow = i11;
                i6 = i2;
                columnIndexOrThrow2 = i12;
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public List<CatalogEntryEntity> getEntriesWithoutMetadata(final long repositoryId, final String sdkVersion, final String retryError) {
        final String str = "SELECT * FROM entries WHERE repositoryId = ? AND documentId NOT IN (SELECT documentId FROM metadata WHERE parsedWithSdk IS ? AND error IS NOT ?) ORDER BY date DESC, entryId DESC";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$meRgkV1cW1mw7gFF_u_Ah6gbeBo(str, repositoryId, sdkVersion, retryError, (SQLiteConnection) obj);
            }
        });
    }

    public static List $r8$lambda$meRgkV1cW1mw7gFF_u_Ah6gbeBo(String str, long j, String str2, String str3, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            if (str2 == null) {
                sQLiteStatementPrepare.bindNull(2);
            } else {
                sQLiteStatementPrepare.bindText(2, str2);
            }
            sQLiteStatementPrepare.bindText(3, str3);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "repositoryId");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "entryId");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "date");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "documentId");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "fileName");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "size");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, MediaTrack.ROLE_CAPTION);
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "message");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "views");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "updatedAt");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "fileUrl");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "sha256");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                int i = columnIndexOrThrow2;
                int i2 = columnIndexOrThrow3;
                arrayList.add(new CatalogEntryEntity(sQLiteStatementPrepare.getLong(columnIndexOrThrow), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow3), sQLiteStatementPrepare.getLong(columnIndexOrThrow4), sQLiteStatementPrepare.getText(columnIndexOrThrow5), sQLiteStatementPrepare.getLong(columnIndexOrThrow6), sQLiteStatementPrepare.isNull(columnIndexOrThrow7) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow7), sQLiteStatementPrepare.isNull(columnIndexOrThrow8) ? null : sQLiteStatementPrepare.getBlob(columnIndexOrThrow8), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow9), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10), sQLiteStatementPrepare.isNull(columnIndexOrThrow11) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow11), sQLiteStatementPrepare.isNull(columnIndexOrThrow12) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow12)));
                columnIndexOrThrow2 = i;
                columnIndexOrThrow3 = i2;
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public List<Long> getDocumentIdsWithError(final String error) {
        final String str = "SELECT documentId FROM metadata WHERE error = ?";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$PadGmaBMw399ejk6HqT5RSJsx68(str, error, (SQLiteConnection) obj);
            }
        });
    }

    public static List $r8$lambda$PadGmaBMw399ejk6HqT5RSJsx68(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(Long.valueOf(sQLiteStatementPrepare.getLong(0)));
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public List<CatalogEntryVersion> getEntryVersions(final long repositoryId) {
        final String str = "SELECT entryId, date, documentId, updatedAt FROM entries WHERE repositoryId = ?";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.m3090$r8$lambda$KBsmgNdsLWep6wh1u_i_B5Zqk0(str, repositoryId, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$KBsmgNdsLWep6wh1u-_i_B5Zqk0, reason: not valid java name */
    public static List m3090$r8$lambda$KBsmgNdsLWep6wh1u_i_B5Zqk0(String str, long j, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(new CatalogEntryVersion((int) sQLiteStatementPrepare.getLong(0), (int) sQLiteStatementPrepare.getLong(1), sQLiteStatementPrepare.getLong(2), (int) sQLiteStatementPrepare.getLong(3)));
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public CatalogEntryEntity getEntry(final long repositoryId, final int entryId) {
        final String str = "SELECT * FROM entries WHERE repositoryId = ? AND entryId = ?";
        return (CatalogEntryEntity) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.m3086$r8$lambda$2La6JoiTwnjRTOfpVbzQg2yMA(str, repositoryId, entryId, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$2La6JoiT--wnjRTOfpVbzQg2yMA, reason: not valid java name */
    public static CatalogEntryEntity m3086$r8$lambda$2La6JoiTwnjRTOfpVbzQg2yMA(String str, long j, int i, SQLiteConnection sQLiteConnection) {
        CatalogEntryEntity catalogEntryEntity;
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            sQLiteStatementPrepare.bindLong(2, i);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "repositoryId");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "entryId");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "date");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "documentId");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "fileName");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "size");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, MediaTrack.ROLE_CAPTION);
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "message");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "views");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "updatedAt");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "fileUrl");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "sha256");
            if (sQLiteStatementPrepare.step()) {
                catalogEntryEntity = new CatalogEntryEntity(sQLiteStatementPrepare.getLong(columnIndexOrThrow), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow3), sQLiteStatementPrepare.getLong(columnIndexOrThrow4), sQLiteStatementPrepare.getText(columnIndexOrThrow5), sQLiteStatementPrepare.getLong(columnIndexOrThrow6), sQLiteStatementPrepare.isNull(columnIndexOrThrow7) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow7), sQLiteStatementPrepare.isNull(columnIndexOrThrow8) ? null : sQLiteStatementPrepare.getBlob(columnIndexOrThrow8), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow9), (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10), sQLiteStatementPrepare.isNull(columnIndexOrThrow11) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow11), sQLiteStatementPrepare.isNull(columnIndexOrThrow12) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow12));
            } else {
                catalogEntryEntity = null;
            }
            return catalogEntryEntity;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void deleteRepositoriesExcept(final int source, final List<Long> keepIds) {
        StringBuilder sb = new StringBuilder();
        sb.append("DELETE FROM repositories WHERE source = ? AND repositoryId NOT IN (");
        StringUtil.appendPlaceholders(sb, keepIds.size());
        sb.append(")");
        final String string = sb.toString();
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.m3089$r8$lambda$5zLRAm3t7q5kn0WJxv_rha8KJ4(string, source, keepIds, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$5zLRAm3t7q5kn0WJxv_rh-a8KJ4, reason: not valid java name */
    public static Unit m3089$r8$lambda$5zLRAm3t7q5kn0WJxv_rha8KJ4(String str, int i, List list, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, i);
            Iterator it = list.iterator();
            int i2 = 2;
            while (it.hasNext()) {
                sQLiteStatementPrepare.bindLong(i2, ((Number) it.next()).longValue());
                i2++;
            }
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void deleteRepository(final long repositoryId) {
        final String str = "DELETE FROM repositories WHERE repositoryId = ?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.m3087$r8$lambda$3Sk2R3WIV4PwyGV_Uy5yvwhe98(str, repositoryId, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$3Sk-2R3WIV4PwyGV_Uy5yvwhe98, reason: not valid java name */
    public static Unit m3087$r8$lambda$3Sk2R3WIV4PwyGV_Uy5yvwhe98(String str, long j, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void updateSyncState(final long repositoryId, final long syncedAt, final int pluginsCount) {
        final String str = "UPDATE repositories SET syncedAt = ?, pluginsCount = ? WHERE repositoryId = ?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.m3093$r8$lambda$qZxMR3OLZE48PZVaE2zj3phRPY(str, syncedAt, pluginsCount, repositoryId, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$qZxMR3OLZE48PZVaE2zj3phRP-Y, reason: not valid java name */
    public static Unit m3093$r8$lambda$qZxMR3OLZE48PZVaE2zj3phRPY(String str, long j, int i, long j2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            sQLiteStatementPrepare.bindLong(2, i);
            sQLiteStatementPrepare.bindLong(3, j2);
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void updateGitInfo(final long repositoryId, final String title, final String homepage) {
        final String str = "UPDATE repositories SET title = ?, homepage = ? WHERE repositoryId = ?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$owtiKSkZnagPbERbzaHJasc_Pqw(str, title, homepage, repositoryId, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$owtiKSkZnagPbERbzaHJasc_Pqw(String str, String str2, String str3, long j, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            if (str3 == null) {
                sQLiteStatementPrepare.bindNull(2);
            } else {
                sQLiteStatementPrepare.bindText(2, str3);
            }
            sQLiteStatementPrepare.bindLong(3, j);
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void updatePluginsCount(final long repositoryId, final int pluginsCount) {
        final String str = "UPDATE repositories SET pluginsCount = ? WHERE repositoryId = ?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$lCswZcrtoheJ2fmVmDFqydvC7TA(str, pluginsCount, repositoryId, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$lCswZcrtoheJ2fmVmDFqydvC7TA(String str, int i, long j, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, i);
            sQLiteStatementPrepare.bindLong(2, j);
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void deleteEntries(final long repositoryId) {
        final String str = "DELETE FROM entries WHERE repositoryId = ?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$uZaKAlPeewXBsYjF9QTKLf2ae7k(str, repositoryId, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$uZaKAlPeewXBsYjF9QTKLf2ae7k(String str, long j, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void pruneMetadata() {
        final String str = "DELETE FROM metadata WHERE documentId NOT IN (SELECT documentId FROM entries)";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$lpVVIupphj0rwow7UwYlYobn9Ls(str, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$lpVVIupphj0rwow7UwYlYobn9Ls(String str, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao
    public void pruneEntries() {
        final String str = "DELETE FROM entries WHERE repositoryId NOT IN (SELECT repositoryId FROM repositories)";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginCatalogDao_Impl.$r8$lambda$67EohWaqvzIEbJbXRfDeK4Wj55E(str, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$67EohWaqvzIEbJbXRfDeK4Wj55E(String str, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    /* JADX INFO: renamed from: __fetchRelationshipmetadataAscomExteragramMessengerPluginsCatalogDbPluginMetadataEntity */
    private final void m280x200fffb7(final SQLiteConnection _connection, LongSparseArray<PluginMetadataEntity> _map) {
        if (_map.isEmpty()) {
            return;
        }
        if (_map.size() > 999) {
            RelationUtil.recursiveFetchLongSparseArray(_map, false, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao_Impl$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PluginCatalogDao_Impl.$r8$lambda$ckLt_WX0kCkU_OlK67UKT2Ca1aI(this.f$0, _connection, (LongSparseArray) obj);
                }
            });
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT `documentId`,`pluginId`,`name`,`author`,`description`,`version`,`icon`,`appVersion`,`sdkVersion`,`requirements`,`categories`,`error`,`parsedAt`,`parsedWithSdk` FROM `metadata` WHERE `documentId` IN (");
        StringUtil.appendPlaceholders(sb, _map.size());
        sb.append(")");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(sb.toString());
        int size = _map.size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            sQLiteStatementPrepare.bindLong(i, _map.keyAt(i2));
            i++;
        }
        try {
            int columnIndex = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "documentId");
            if (columnIndex == -1) {
                return;
            }
            while (sQLiteStatementPrepare.step()) {
                long j = sQLiteStatementPrepare.getLong(columnIndex);
                if (_map.containsKey(j)) {
                    _map.put(j, new PluginMetadataEntity(sQLiteStatementPrepare.getLong(0), sQLiteStatementPrepare.isNull(1) ? null : sQLiteStatementPrepare.getText(1), sQLiteStatementPrepare.isNull(2) ? null : sQLiteStatementPrepare.getText(2), sQLiteStatementPrepare.isNull(3) ? null : sQLiteStatementPrepare.getText(3), sQLiteStatementPrepare.isNull(4) ? null : sQLiteStatementPrepare.getText(4), sQLiteStatementPrepare.isNull(5) ? null : sQLiteStatementPrepare.getText(5), sQLiteStatementPrepare.isNull(6) ? null : sQLiteStatementPrepare.getText(6), sQLiteStatementPrepare.isNull(7) ? null : sQLiteStatementPrepare.getText(7), sQLiteStatementPrepare.isNull(8) ? null : sQLiteStatementPrepare.getText(8), sQLiteStatementPrepare.isNull(9) ? null : sQLiteStatementPrepare.getText(9), sQLiteStatementPrepare.isNull(10) ? null : sQLiteStatementPrepare.getText(10), sQLiteStatementPrepare.isNull(11) ? null : sQLiteStatementPrepare.getText(11), sQLiteStatementPrepare.getLong(12), sQLiteStatementPrepare.isNull(13) ? null : sQLiteStatementPrepare.getText(13)));
                }
            }
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    public static Unit $r8$lambda$ckLt_WX0kCkU_OlK67UKT2Ca1aI(PluginCatalogDao_Impl pluginCatalogDao_Impl, SQLiteConnection sQLiteConnection, LongSparseArray longSparseArray) {
        pluginCatalogDao_Impl.m280x200fffb7(sQLiteConnection, longSparseArray);
        return Unit.INSTANCE;
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDao_Impl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getRequiredConverters", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/reflect/KClass;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<KClass<?>> getRequiredConverters() {
            return CollectionsKt.emptyList();
        }
    }
}
