package com.exteragram.messenger.plugins.catalog.db;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0087\b\u0018\u0000 02\u00020\u0001:\u00010Bg\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010$\u001a\u00020\bHÆ\u0003J\t\u0010%\u001a\u00020\bHÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\bHÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0005HÆ\u0003Ju\u0010+\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010,\u001a\u00020\u001f2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\bHÖ\u0001J\t\u0010/\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012R\u0011\u0010\f\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0014R\u0011\u0010\u001e\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010 ¨\u00061"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/db/PluginRepositoryEntity;", _UrlKt.FRAGMENT_ENCODE_SET, "repositoryId", _UrlKt.FRAGMENT_ENCODE_SET, "username", _UrlKt.FRAGMENT_ENCODE_SET, "title", "source", _UrlKt.FRAGMENT_ENCODE_SET, "sortOrder", "addedAt", "syncedAt", "pluginsCount", "url", "homepage", "<init>", "(JLjava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;Ljava/lang/String;)V", "getRepositoryId", "()J", "getUsername", "()Ljava/lang/String;", "getTitle", "getSource", "()I", "getSortOrder", "getAddedAt", "getSyncedAt", "getPluginsCount", "getUrl", "getHomepage", "isGit", _UrlKt.FRAGMENT_ENCODE_SET, "()Z", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "copy", "equals", "other", "hashCode", "toString", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class PluginRepositoryEntity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int SOURCE_FOLDER = 0;
    public static final int SOURCE_USER = 1;
    private final long addedAt;
    private final String homepage;
    private final int pluginsCount;
    private final long repositoryId;
    private final int sortOrder;
    private final int source;
    private final long syncedAt;
    private final String title;
    private final String url;
    private final String username;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getRepositoryId() {
        return this.repositoryId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getHomepage() {
        return this.homepage;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUsername() {
        return this.username;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getSource() {
        return this.source;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getSortOrder() {
        return this.sortOrder;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final long getAddedAt() {
        return this.addedAt;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final long getSyncedAt() {
        return this.syncedAt;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final int getPluginsCount() {
        return this.pluginsCount;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    public final PluginRepositoryEntity copy(long repositoryId, String username, String title, int source, int sortOrder, long addedAt, long syncedAt, int pluginsCount, String url, String homepage) {
        return new PluginRepositoryEntity(repositoryId, username, title, source, sortOrder, addedAt, syncedAt, pluginsCount, url, homepage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PluginRepositoryEntity)) {
            return false;
        }
        PluginRepositoryEntity pluginRepositoryEntity = (PluginRepositoryEntity) other;
        return this.repositoryId == pluginRepositoryEntity.repositoryId && Intrinsics.areEqual(this.username, pluginRepositoryEntity.username) && Intrinsics.areEqual(this.title, pluginRepositoryEntity.title) && this.source == pluginRepositoryEntity.source && this.sortOrder == pluginRepositoryEntity.sortOrder && this.addedAt == pluginRepositoryEntity.addedAt && this.syncedAt == pluginRepositoryEntity.syncedAt && this.pluginsCount == pluginRepositoryEntity.pluginsCount && Intrinsics.areEqual(this.url, pluginRepositoryEntity.url) && Intrinsics.areEqual(this.homepage, pluginRepositoryEntity.homepage);
    }

    public int hashCode() {
        int iHashCode = Long.hashCode(this.repositoryId) * 31;
        String str = this.username;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.title;
        int iHashCode3 = (((((((((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + Integer.hashCode(this.source)) * 31) + Integer.hashCode(this.sortOrder)) * 31) + Long.hashCode(this.addedAt)) * 31) + Long.hashCode(this.syncedAt)) * 31) + Integer.hashCode(this.pluginsCount)) * 31;
        String str3 = this.url;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.homepage;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "PluginRepositoryEntity(repositoryId=" + this.repositoryId + ", username=" + this.username + ", title=" + this.title + ", source=" + this.source + ", sortOrder=" + this.sortOrder + ", addedAt=" + this.addedAt + ", syncedAt=" + this.syncedAt + ", pluginsCount=" + this.pluginsCount + ", url=" + this.url + ", homepage=" + this.homepage + ")";
    }

    public PluginRepositoryEntity(long j, String str, String str2, int i, int i2, long j2, long j3, int i3, String str3, String str4) {
        this.repositoryId = j;
        this.username = str;
        this.title = str2;
        this.source = i;
        this.sortOrder = i2;
        this.addedAt = j2;
        this.syncedAt = j3;
        this.pluginsCount = i3;
        this.url = str3;
        this.homepage = str4;
    }

    public /* synthetic */ PluginRepositoryEntity(long j, String str, String str2, int i, int i2, long j2, long j3, int i3, String str3, String str4, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, str, str2, i, i2, j2, (i4 & 64) != 0 ? 0L : j3, (i4 & 128) != 0 ? 0 : i3, (i4 & 256) != 0 ? null : str3, (i4 & 512) != 0 ? null : str4);
    }

    public final long getRepositoryId() {
        return this.repositoryId;
    }

    public final String getUsername() {
        return this.username;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getSource() {
        return this.source;
    }

    public final int getSortOrder() {
        return this.sortOrder;
    }

    public final long getAddedAt() {
        return this.addedAt;
    }

    public final long getSyncedAt() {
        return this.syncedAt;
    }

    public final int getPluginsCount() {
        return this.pluginsCount;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getHomepage() {
        return this.homepage;
    }

    public final boolean isGit() {
        return this.url != null;
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/db/PluginRepositoryEntity$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "SOURCE_FOLDER", _UrlKt.FRAGMENT_ENCODE_SET, "SOURCE_USER", "isGitId", _UrlKt.FRAGMENT_ENCODE_SET, "repositoryId", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isGitId(long repositoryId) {
            return repositoryId < 0;
        }

        private Companion() {
        }
    }
}
