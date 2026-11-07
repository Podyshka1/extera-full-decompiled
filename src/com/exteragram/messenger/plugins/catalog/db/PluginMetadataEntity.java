package com.exteragram.messenger.plugins.catalog.db;

import com.chaquo.python.internal.Common;
import com.google.android.gms.cast.MediaTrack;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b.\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u00100\u001a\u00020\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u00ad\u0001\u00102\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00106\u001a\u000207HÖ\u0001J\t\u00108\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0017R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0017R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0017R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0017R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0017R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0017R\u0011\u0010\u0010\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0015R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0017¨\u00069"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/db/PluginMetadataEntity;", _UrlKt.FRAGMENT_ENCODE_SET, "documentId", _UrlKt.FRAGMENT_ENCODE_SET, "pluginId", _UrlKt.FRAGMENT_ENCODE_SET, "name", "author", MediaTrack.ROLE_DESCRIPTION, "version", "icon", "appVersion", "sdkVersion", Common.ASSET_REQUIREMENTS, "categories", "error", "parsedAt", "parsedWithSdk", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "getDocumentId", "()J", "getPluginId", "()Ljava/lang/String;", "getName", "getAuthor", "getDescription", "getVersion", "getIcon", "getAppVersion", "getSdkVersion", "getRequirements", "getCategories", "getError", "getParsedAt", "getParsedWithSdk", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "copy", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "other", "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class PluginMetadataEntity {
    private final String appVersion;
    private final String author;
    private final String categories;
    private final String description;
    private final long documentId;
    private final String error;
    private final String icon;
    private final String name;
    private final long parsedAt;
    private final String parsedWithSdk;
    private final String pluginId;
    private final String requirements;
    private final String sdkVersion;
    private final String version;

    public static /* synthetic */ PluginMetadataEntity copy$default(PluginMetadataEntity pluginMetadataEntity, long j, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, long j2, String str12, int i, Object obj) {
        long j3;
        long j4;
        long j5 = (i & 1) != 0 ? pluginMetadataEntity.documentId : j;
        String str13 = (i & 2) != 0 ? pluginMetadataEntity.pluginId : str;
        String str14 = (i & 4) != 0 ? pluginMetadataEntity.name : str2;
        String str15 = (i & 8) != 0 ? pluginMetadataEntity.author : str3;
        String str16 = (i & 16) != 0 ? pluginMetadataEntity.description : str4;
        String str17 = (i & 32) != 0 ? pluginMetadataEntity.version : str5;
        String str18 = (i & 64) != 0 ? pluginMetadataEntity.icon : str6;
        String str19 = (i & 128) != 0 ? pluginMetadataEntity.appVersion : str7;
        String str20 = (i & 256) != 0 ? pluginMetadataEntity.sdkVersion : str8;
        String str21 = (i & 512) != 0 ? pluginMetadataEntity.requirements : str9;
        String str22 = (i & 1024) != 0 ? pluginMetadataEntity.categories : str10;
        String str23 = (i & 2048) != 0 ? pluginMetadataEntity.error : str11;
        if ((i & 4096) != 0) {
            j3 = j5;
            j4 = pluginMetadataEntity.parsedAt;
        } else {
            j3 = j5;
            j4 = j2;
        }
        return pluginMetadataEntity.copy(j3, str13, str14, str15, str16, str17, str18, str19, str20, str21, str22, str23, j4, (i & 8192) != 0 ? pluginMetadataEntity.parsedWithSdk : str12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getDocumentId() {
        return this.documentId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getRequirements() {
        return this.requirements;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getCategories() {
        return this.categories;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getError() {
        return this.error;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final long getParsedAt() {
        return this.parsedAt;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getParsedWithSdk() {
        return this.parsedWithSdk;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPluginId() {
        return this.pluginId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getAuthor() {
        return this.author;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getAppVersion() {
        return this.appVersion;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getSdkVersion() {
        return this.sdkVersion;
    }

    public final PluginMetadataEntity copy(long documentId, String pluginId, String name, String author, String description, String version, String icon, String appVersion, String sdkVersion, String requirements, String categories, String error, long parsedAt, String parsedWithSdk) {
        return new PluginMetadataEntity(documentId, pluginId, name, author, description, version, icon, appVersion, sdkVersion, requirements, categories, error, parsedAt, parsedWithSdk);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PluginMetadataEntity)) {
            return false;
        }
        PluginMetadataEntity pluginMetadataEntity = (PluginMetadataEntity) other;
        return this.documentId == pluginMetadataEntity.documentId && Intrinsics.areEqual(this.pluginId, pluginMetadataEntity.pluginId) && Intrinsics.areEqual(this.name, pluginMetadataEntity.name) && Intrinsics.areEqual(this.author, pluginMetadataEntity.author) && Intrinsics.areEqual(this.description, pluginMetadataEntity.description) && Intrinsics.areEqual(this.version, pluginMetadataEntity.version) && Intrinsics.areEqual(this.icon, pluginMetadataEntity.icon) && Intrinsics.areEqual(this.appVersion, pluginMetadataEntity.appVersion) && Intrinsics.areEqual(this.sdkVersion, pluginMetadataEntity.sdkVersion) && Intrinsics.areEqual(this.requirements, pluginMetadataEntity.requirements) && Intrinsics.areEqual(this.categories, pluginMetadataEntity.categories) && Intrinsics.areEqual(this.error, pluginMetadataEntity.error) && this.parsedAt == pluginMetadataEntity.parsedAt && Intrinsics.areEqual(this.parsedWithSdk, pluginMetadataEntity.parsedWithSdk);
    }

    public int hashCode() {
        int iHashCode = Long.hashCode(this.documentId) * 31;
        String str = this.pluginId;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.name;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.author;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.description;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.version;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.icon;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.appVersion;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.sdkVersion;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.requirements;
        int iHashCode10 = (iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.categories;
        int iHashCode11 = (iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.error;
        int iHashCode12 = (((iHashCode11 + (str11 == null ? 0 : str11.hashCode())) * 31) + Long.hashCode(this.parsedAt)) * 31;
        String str12 = this.parsedWithSdk;
        return iHashCode12 + (str12 != null ? str12.hashCode() : 0);
    }

    public String toString() {
        return "PluginMetadataEntity(documentId=" + this.documentId + ", pluginId=" + this.pluginId + ", name=" + this.name + ", author=" + this.author + ", description=" + this.description + ", version=" + this.version + ", icon=" + this.icon + ", appVersion=" + this.appVersion + ", sdkVersion=" + this.sdkVersion + ", requirements=" + this.requirements + ", categories=" + this.categories + ", error=" + this.error + ", parsedAt=" + this.parsedAt + ", parsedWithSdk=" + this.parsedWithSdk + ")";
    }

    public PluginMetadataEntity(long j, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, long j2, String str12) {
        this.documentId = j;
        this.pluginId = str;
        this.name = str2;
        this.author = str3;
        this.description = str4;
        this.version = str5;
        this.icon = str6;
        this.appVersion = str7;
        this.sdkVersion = str8;
        this.requirements = str9;
        this.categories = str10;
        this.error = str11;
        this.parsedAt = j2;
        this.parsedWithSdk = str12;
    }

    public final long getDocumentId() {
        return this.documentId;
    }

    public final String getPluginId() {
        return this.pluginId;
    }

    public final String getName() {
        return this.name;
    }

    public final String getAuthor() {
        return this.author;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getVersion() {
        return this.version;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final String getAppVersion() {
        return this.appVersion;
    }

    public final String getSdkVersion() {
        return this.sdkVersion;
    }

    public final String getRequirements() {
        return this.requirements;
    }

    public final String getCategories() {
        return this.categories;
    }

    public final String getError() {
        return this.error;
    }

    public final long getParsedAt() {
        return this.parsedAt;
    }

    public final String getParsedWithSdk() {
        return this.parsedWithSdk;
    }
}
