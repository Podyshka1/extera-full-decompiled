package com.exteragram.messenger.plugins.catalog;

import com.chaquo.python.internal.Common;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.utils.network.ExteraHttpClient;
import com.google.android.gms.cast.MediaTrack;
import j$.time.OffsetDateTime;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.url._UrlKt;
import okio.BufferedSource;
import org.json.JSONArray;
import org.json.JSONObject;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0012\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003;<=B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u00132\u0006\u0010\u0014\u001a\u00020\u0005J\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0005J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005J\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u001a\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J(\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\tJ\u001e\u0010)\u001a\u00020\t2\u0006\u0010*\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\u0005J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u0005H\u0002J\u0012\u0010/\u001a\u0004\u0018\u00010\u00052\u0006\u00100\u001a\u00020$H\u0002J\u0017\u00101\u001a\u0004\u0018\u00010\u00072\u0006\u00102\u001a\u00020\u0005H\u0002¢\u0006\u0002\u00103J\f\u00104\u001a\u00020\u0005*\u000205H\u0002J\u0016\u00106\u001a\u0004\u0018\u00010\u0005*\u00020\u001e2\u0006\u00107\u001a\u00020\u0005H\u0002J&\u00108\u001a\u0004\u0018\u00010\u0005*\u00020\u001e2\u0006\u00107\u001a\u00020\u00052\u0006\u00109\u001a\u00020\u00072\u0006\u0010:\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "INDEX_FILE_NAME", _UrlKt.FRAGMENT_ENCODE_SET, "SCHEMA_VERSION", _UrlKt.FRAGMENT_ENCODE_SET, "MAX_INDEX_SIZE", _UrlKt.FRAGMENT_ENCODE_SET, "MAX_CATEGORIES", "BUFFER_SIZE", "GITHUB_URL", "Lkotlin/text/Regex;", "GITHUB_BLOB_URL", "SHA256", "normalizeUrl", PluginsConstants.Settings.TYPE_INPUT, "getIndexUrls", _UrlKt.FRAGMENT_ENCODE_SET, "repositoryUrl", "getWebUrl", "homepage", "loadIndex", "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult;", "url", "etag", "parseIndex", "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$Index;", "json", "Lorg/json/JSONObject;", "baseUrl", "Lokhttp3/HttpUrl;", "parsePlugin", "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexPlugin;", "downloadFile", "Ljava/io/File;", "fileUrl", "fileName", "sha256", "size", "documentId", "repositoryId", "pluginId", "isSafeFileName", _UrlKt.FRAGMENT_ENCODE_SET, "name", "hash", "file", "parseTime", "value", "(Ljava/lang/String;)Ljava/lang/Integer;", "toHex", _UrlKt.FRAGMENT_ENCODE_SET, "stringOrNull", PluginsConstants.Settings.KEY, "stringOrList", "limit", "separator", "IndexPlugin", "Index", "IndexResult", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGitPluginRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GitPluginRepository.kt\ncom/exteragram/messenger/plugins/catalog/GitPluginRepository\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,278:1\n1107#2,2:279\n1874#2,2:299\n1#3:281\n1#3:293\n1#3:312\n1642#4,10:282\n1915#4:292\n1916#4:294\n1652#4:295\n1849#4,3:296\n1642#4,10:301\n1915#4:311\n1916#4:313\n1652#4:314\n1586#4:315\n1661#4,3:316\n777#4:319\n873#4,2:320\n*S KotlinDebug\n*F\n+ 1 GitPluginRepository.kt\ncom/exteragram/messenger/plugins/catalog/GitPluginRepository\n*L\n71#1:279,2\n239#1:299,2\n147#1:293\n272#1:312\n147#1:282,10\n147#1:292\n147#1:294\n147#1:295\n235#1:296,3\n272#1:301,10\n272#1:311\n272#1:313\n272#1:314\n275#1:315\n275#1:316,3\n275#1:319\n275#1:320,2\n*E\n"})
public final class GitPluginRepository {
    private static final int BUFFER_SIZE = 16384;
    private static final Regex GITHUB_BLOB_URL;
    private static final Regex GITHUB_URL;
    public static final String INDEX_FILE_NAME = "extera-plugins.json";
    public static final GitPluginRepository INSTANCE = new GitPluginRepository();
    private static final int MAX_CATEGORIES = 3;
    private static final long MAX_INDEX_SIZE = 1048576;
    public static final int SCHEMA_VERSION = 1;
    private static final Regex SHA256;

    private GitPluginRepository() {
    }

    static {
        RegexOption regexOption = RegexOption.IGNORE_CASE;
        GITHUB_URL = new Regex("^github\\.com/([A-Za-z0-9-]+)/([A-Za-z0-9._-]+?)(?:\\.git)?(?:/tree/([^/]+)(/.+)?)?$", regexOption);
        GITHUB_BLOB_URL = new Regex("^(github\\.com/[^/]+/[^/]+)/blob/(.+)/" + Regex.INSTANCE.escape(INDEX_FILE_NAME) + "$", regexOption);
        SHA256 = new Regex("^[0-9a-f]{64}$");
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0016\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0017R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0017R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0017R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0017R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0017R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0017R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0017R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0017R\u0015\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\n\n\u0002\u0010(\u001a\u0004\b&\u0010'¨\u0006)"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexPlugin;", _UrlKt.FRAGMENT_ENCODE_SET, "id", _UrlKt.FRAGMENT_ENCODE_SET, "name", "version", "fileUrl", "fileName", "sha256", "size", _UrlKt.FRAGMENT_ENCODE_SET, MediaTrack.ROLE_DESCRIPTION, "author", "icon", "appVersion", "sdkVersion", Common.ASSET_REQUIREMENTS, "categories", "updatedAt", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getId", "()Ljava/lang/String;", "getName", "getVersion", "getFileUrl", "getFileName", "getSha256", "getSize", "()J", "getDescription", "getAuthor", "getIcon", "getAppVersion", "getSdkVersion", "getRequirements", "getCategories", "getUpdatedAt", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class IndexPlugin {
        private final String appVersion;
        private final String author;
        private final String categories;
        private final String description;
        private final String fileName;
        private final String fileUrl;
        private final String icon;
        private final String id;
        private final String name;
        private final String requirements;
        private final String sdkVersion;
        private final String sha256;
        private final long size;
        private final Integer updatedAt;
        private final String version;

        public IndexPlugin(String str, String str2, String str3, String str4, String str5, String str6, long j, String str7, String str8, String str9, String str10, String str11, String str12, String str13, Integer num) {
            this.id = str;
            this.name = str2;
            this.version = str3;
            this.fileUrl = str4;
            this.fileName = str5;
            this.sha256 = str6;
            this.size = j;
            this.description = str7;
            this.author = str8;
            this.icon = str9;
            this.appVersion = str10;
            this.sdkVersion = str11;
            this.requirements = str12;
            this.categories = str13;
            this.updatedAt = num;
        }

        public final String getId() {
            return this.id;
        }

        public final String getName() {
            return this.name;
        }

        public final String getVersion() {
            return this.version;
        }

        public final String getFileUrl() {
            return this.fileUrl;
        }

        public final String getFileName() {
            return this.fileName;
        }

        public final String getSha256() {
            return this.sha256;
        }

        public final long getSize() {
            return this.size;
        }

        public final String getDescription() {
            return this.description;
        }

        public final String getAuthor() {
            return this.author;
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

        public final Integer getUpdatedAt() {
            return this.updatedAt;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$Index;", _UrlKt.FRAGMENT_ENCODE_SET, "name", _UrlKt.FRAGMENT_ENCODE_SET, "homepage", PluginsConstants.PLUGINS, _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexPlugin;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getName", "()Ljava/lang/String;", "getHomepage", "getPlugins", "()Ljava/util/List;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Index {
        private final String homepage;
        private final String name;
        private final List<IndexPlugin> plugins;

        public Index(String str, String str2, List<IndexPlugin> list) {
            this.name = str;
            this.homepage = str2;
            this.plugins = list;
        }

        public final String getName() {
            return this.name;
        }

        public final String getHomepage() {
            return this.homepage;
        }

        public final List<IndexPlugin> getPlugins() {
            return this.plugins;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0004\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Loaded", "NotModified", "Unsupported", "Failed", "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult$Failed;", "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult$Loaded;", "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult$NotModified;", "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult$Unsupported;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static abstract class IndexResult {
        public /* synthetic */ IndexResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult$Loaded;", "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult;", "index", "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$Index;", "etag", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$Index;Ljava/lang/String;)V", "getIndex", "()Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$Index;", "getEtag", "()Ljava/lang/String;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class Loaded extends IndexResult {
            private final String etag;
            private final Index index;

            public Loaded(Index index, String str) {
                super(null);
                this.index = index;
                this.etag = str;
            }

            public final String getEtag() {
                return this.etag;
            }

            public final Index getIndex() {
                return this.index;
            }
        }

        private IndexResult() {
        }

        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult$NotModified;", "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult;", "<init>", "()V", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "toString", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
        public static final /* data */ class NotModified extends IndexResult {
            public static final NotModified INSTANCE = new NotModified();

            public boolean equals(Object other) {
                return this == other || (other instanceof NotModified);
            }

            public int hashCode() {
                return 1826321577;
            }

            public String toString() {
                return "NotModified";
            }

            private NotModified() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult$Unsupported;", "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult;", "<init>", "()V", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "toString", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
        public static final /* data */ class Unsupported extends IndexResult {
            public static final Unsupported INSTANCE = new Unsupported();

            public boolean equals(Object other) {
                return this == other || (other instanceof Unsupported);
            }

            public int hashCode() {
                return 2071463970;
            }

            public String toString() {
                return "Unsupported";
            }

            private Unsupported() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult$Failed;", "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult;", "<init>", "()V", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "toString", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
        public static final /* data */ class Failed extends IndexResult {
            public static final Failed INSTANCE = new Failed();

            public boolean equals(Object other) {
                return this == other || (other instanceof Failed);
            }

            public int hashCode() {
                return -1117917648;
            }

            public String toString() {
                return "Failed";
            }

            private Failed() {
                super(null);
            }
        }
    }

    public final String normalizeUrl(String input) {
        String string;
        String strTrimEnd;
        MatchResult.Destructured destructured;
        if (input != null && (string = StringsKt.trim((CharSequence) input).toString()) != null && (strTrimEnd = StringsKt.trimEnd(string, '/')) != null && strTrimEnd.length() != 0) {
            for (int i = 0; i < strTrimEnd.length(); i++) {
                if (!CharsKt.isWhitespace(strTrimEnd.charAt(i))) {
                }
            }
            String strRemovePrefix = StringsKt.removePrefix(StringsKt.removePrefix(StringsKt.removePrefix(strTrimEnd, (CharSequence) "https://"), (CharSequence) "http://"), (CharSequence) "www.");
            MatchResult matchResultMatchEntire = GITHUB_BLOB_URL.matchEntire(strRemovePrefix);
            if (matchResultMatchEntire != null && (destructured = matchResultMatchEntire.getDestructured()) != null) {
                strRemovePrefix = destructured.getMatch().getGroupValues().get(1) + "/tree/" + destructured.getMatch().getGroupValues().get(2);
            }
            MatchResult matchResultMatchEntire2 = GITHUB_URL.matchEntire(strRemovePrefix);
            if (matchResultMatchEntire2 != null) {
                MatchResult.Destructured destructured2 = matchResultMatchEntire2.getDestructured();
                String str = destructured2.getMatch().getGroupValues().get(1);
                String str2 = destructured2.getMatch().getGroupValues().get(2);
                String str3 = destructured2.getMatch().getGroupValues().get(3);
                String str4 = destructured2.getMatch().getGroupValues().get(4);
                StringBuilder sb = new StringBuilder("https://github.com/");
                Locale locale = Locale.ROOT;
                sb.append(str.toLowerCase(locale));
                sb.append('/');
                sb.append(str2.toLowerCase(locale));
                if (str3.length() > 0) {
                    sb.append("/tree/");
                    sb.append(str3);
                    sb.append(str4);
                }
                return sb.toString();
            }
            if (!StringsKt.contains$default((CharSequence) strTrimEnd, (CharSequence) "://", false, 2, (Object) null)) {
                strTrimEnd = "https://".concat(strTrimEnd);
            }
            HttpUrl httpUrl = HttpUrl.INSTANCE.parse(strTrimEnd);
            if (httpUrl == null) {
                return null;
            }
            String url = httpUrl.getUrl();
            if (httpUrl.isHttps() && Intrinsics.areEqual(CollectionsKt.lastOrNull((List) httpUrl.pathSegments()), INDEX_FILE_NAME)) {
                return url;
            }
            return null;
        }
        return null;
    }

    public final List<String> getIndexUrls(String repositoryUrl) {
        String str;
        MatchResult matchResultMatchEntire = GITHUB_URL.matchEntire(StringsKt.removePrefix(repositoryUrl, (CharSequence) "https://"));
        if (matchResultMatchEntire == null) {
            return CollectionsKt.listOf(repositoryUrl);
        }
        MatchResult.Destructured destructured = matchResultMatchEntire.getDestructured();
        String str2 = destructured.getMatch().getGroupValues().get(1);
        String str3 = destructured.getMatch().getGroupValues().get(2);
        String str4 = destructured.getMatch().getGroupValues().get(3);
        String strTrim = StringsKt.trim(destructured.getMatch().getGroupValues().get(4), '/');
        if (strTrim.length() == 0) {
            str = INDEX_FILE_NAME;
        } else {
            str = strTrim + "/extera-plugins.json";
        }
        String str5 = "https://raw.githubusercontent.com/" + str2 + "/" + str3 + "/" + ((Object) (str4.length() == 0 ? "HEAD" : str4)) + "/" + str;
        if (str4.length() == 0) {
            return CollectionsKt.listOf(str5);
        }
        return CollectionsKt.listOf((Object[]) new String[]{str5, "https://cdn.jsdelivr.net/gh/" + str2 + "/" + str3 + "@" + str4 + "/" + str});
    }

    public final String getWebUrl(String repositoryUrl, String homepage) {
        if (homepage != null) {
            return homepage;
        }
        if (GITHUB_URL.matches(StringsKt.removePrefix(repositoryUrl, (CharSequence) "https://"))) {
            return repositoryUrl;
        }
        return null;
    }

    public final IndexResult loadIndex(String url, String etag) {
        IndexResult loaded;
        Request.Builder builderUrl = new Request.Builder().url(url);
        if (etag != null) {
            builderUrl.header("If-None-Match", etag);
        }
        try {
            Response responseExecute = ExteraHttpClient.INSTANCE.getClient().newCall(builderUrl.build()).execute();
            try {
                if (responseExecute.code() == 304) {
                    loaded = IndexResult.NotModified.INSTANCE;
                } else if (!responseExecute.getIsSuccessful()) {
                    FileLog.m1038e("PluginCatalog: index request " + url + " failed with " + responseExecute.code());
                    loaded = IndexResult.Failed.INSTANCE;
                } else {
                    BufferedSource bodySource = responseExecute.body().getBodySource();
                    if (bodySource.request(1048577L)) {
                        FileLog.m1038e("PluginCatalog: index " + url + " is too large");
                        IndexResult.Failed failed = IndexResult.Failed.INSTANCE;
                        CloseableKt.closeFinally(responseExecute, null);
                        return failed;
                    }
                    JSONObject jSONObject = new JSONObject(bodySource.getBufferField().readUtf8());
                    if (jSONObject.optInt("schema", 0) > 1) {
                        loaded = IndexResult.Unsupported.INSTANCE;
                    } else {
                        Index index = INSTANCE.parseIndex(jSONObject, responseExecute.request().url());
                        loaded = index != null ? new IndexResult.Loaded(index, Response.header$default(responseExecute, "ETag", null, 2, null)) : IndexResult.Failed.INSTANCE;
                    }
                }
                CloseableKt.closeFinally(responseExecute, null);
                return loaded;
            } finally {
            }
        } catch (Exception e) {
            FileLog.m1039e("PluginCatalog: failed to load index " + url, e);
            return IndexResult.Failed.INSTANCE;
        }
    }

    private final Index parseIndex(JSONObject json, HttpUrl baseUrl) {
        HttpUrl httpUrl;
        IndexPlugin plugin;
        String strStringOrNull = stringOrNull(json, "name");
        JSONArray jSONArrayOptJSONArray = json.optJSONArray(PluginsConstants.PLUGINS);
        String url = null;
        if (json.optInt("schema", 0) < 1 || strStringOrNull == null || jSONArrayOptJSONArray == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        IntRange intRangeUntil = RangesKt.until(0, jSONArrayOptJSONArray.length());
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(((IntIterator) it).nextInt());
            if (jSONObjectOptJSONObject == null || (plugin = INSTANCE.parsePlugin(jSONObjectOptJSONObject, baseUrl)) == null || !hashSet.add(plugin.getId())) {
                plugin = null;
            }
            if (plugin != null) {
                arrayList.add(plugin);
            }
        }
        String strStringOrNull2 = stringOrNull(json, "homepage");
        if (strStringOrNull2 != null && (httpUrl = HttpUrl.INSTANCE.parse(strStringOrNull2)) != null) {
            if (!httpUrl.isHttps()) {
                httpUrl = null;
            }
            if (httpUrl != null) {
                url = httpUrl.getUrl();
            }
        }
        return new Index(strStringOrNull, url, arrayList);
    }

    private final IndexPlugin parsePlugin(JSONObject json, HttpUrl baseUrl) {
        String strStringOrNull;
        String strStringOrNull2;
        HttpUrl httpUrlResolve;
        String strStringOrNull3 = stringOrNull(json, "id");
        if (strStringOrNull3 == null || (strStringOrNull = stringOrNull(json, "name")) == null || (strStringOrNull2 = stringOrNull(json, "version")) == null) {
            return null;
        }
        String strStringOrNull4 = stringOrNull(json, "sha256");
        if (strStringOrNull4 != null) {
            String str = SHA256.matches(strStringOrNull4) ? strStringOrNull4 : null;
            if (str != null) {
                Long lValueOf = Long.valueOf(json.optLong("size", 0L));
                if (lValueOf.longValue() <= 0) {
                    lValueOf = null;
                }
                if (lValueOf == null) {
                    return null;
                }
                long jLongValue = lValueOf.longValue();
                String strStringOrNull5 = stringOrNull(json, "file");
                if (strStringOrNull5 != null && (httpUrlResolve = baseUrl.resolve(strStringOrNull5)) != null) {
                    if (!httpUrlResolve.isHttps()) {
                        httpUrlResolve = null;
                    }
                    if (httpUrlResolve != null) {
                        String str2 = (String) CollectionsKt.lastOrNull((List) httpUrlResolve.pathSegments());
                        if (str2 != null) {
                            String str3 = isSafeFileName(str2) ? str2 : null;
                            if (str3 != null) {
                                String url = httpUrlResolve.getUrl();
                                String strStringOrNull6 = stringOrNull(json, MediaTrack.ROLE_DESCRIPTION);
                                String strStringOrNull7 = stringOrNull(json, "author");
                                String strStringOrNull8 = stringOrNull(json, "icon");
                                String strStringOrNull9 = stringOrNull(json, "app_version");
                                String strStringOrNull10 = stringOrNull(json, "sdk_version");
                                String strStringOrList = stringOrList(json, Common.ASSET_REQUIREMENTS, Integer.MAX_VALUE, ", ");
                                String strStringOrList2 = stringOrList(json, "category", 3, ",");
                                String strStringOrNull11 = stringOrNull(json, "updated_at");
                                return new IndexPlugin(strStringOrNull3, strStringOrNull, strStringOrNull2, url, str3, str, jLongValue, strStringOrNull6, strStringOrNull7, strStringOrNull8, strStringOrNull9, strStringOrNull10, strStringOrList, strStringOrList2, strStringOrNull11 != null ? parseTime(strStringOrNull11) : null);
                            }
                        }
                        return null;
                    }
                }
                return null;
            }
        }
        return null;
    }

    public final File downloadFile(String fileUrl, String fileName, String sha256, long size) {
        if (!isSafeFileName(fileName) || !SHA256.matches(sha256)) {
            return null;
        }
        File file = new File(ApplicationLoader.applicationContext.getCacheDir(), "plugin_catalog/" + sha256);
        File file2 = new File(file, fileName);
        if (file2.length() == size && Intrinsics.areEqual(hash(file2), sha256)) {
            return file2;
        }
        try {
            file.mkdirs();
            File fileCreateTempFile = File.createTempFile("plugin", ".part", file);
            try {
                Response responseExecute = ExteraHttpClient.INSTANCE.getClient().newCall(new Request.Builder().url(fileUrl).build()).execute();
                try {
                    if (!responseExecute.getIsSuccessful()) {
                        throw new IOException("HTTP " + responseExecute.code());
                    }
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                    InputStream inputStreamByteStream = responseExecute.body().byteStream();
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                        try {
                            byte[] bArr = new byte[16384];
                            int i = inputStreamByteStream.read(bArr);
                            long j = 0;
                            while (i >= 0) {
                                File file3 = file2;
                                j += (long) i;
                                if (j > size) {
                                    throw new IOException("file is larger than " + size + " bytes");
                                }
                                messageDigest.update(bArr, 0, i);
                                fileOutputStream.write(bArr, 0, i);
                                i = inputStreamByteStream.read(bArr);
                                file2 = file3;
                            }
                            File file4 = file2;
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(fileOutputStream, null);
                            CloseableKt.closeFinally(inputStreamByteStream, null);
                            if (j == size && Intrinsics.areEqual(INSTANCE.toHex(messageDigest.digest()), sha256)) {
                                CloseableKt.closeFinally(responseExecute, null);
                                if (fileCreateTempFile.renameTo(file4)) {
                                    return file4;
                                }
                                throw new IOException("cannot move " + fileCreateTempFile.getName());
                            }
                            throw new IOException("size or sha256 mismatch");
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                }
            } catch (Exception e) {
                FileLog.m1039e("PluginCatalog: failed to download " + fileUrl, e);
                fileCreateTempFile.delete();
                return null;
            }
            FileLog.m1039e("PluginCatalog: failed to download " + fileUrl, e);
            fileCreateTempFile.delete();
            return null;
        } catch (IOException e2) {
            FileLog.m1039e("PluginCatalog: cannot create a temp file for " + fileName, e2);
            return null;
        }
    }

    public final long documentId(long repositoryId, String pluginId, String sha256) {
        Iterator<T> it = ArraysKt.take(MessageDigest.getInstance("SHA-256").digest((repositoryId + ":" + pluginId + ":" + sha256).getBytes(Charsets.UTF_8)), 8).iterator();
        long jByteValue = 0;
        while (it.hasNext()) {
            jByteValue = (jByteValue << 8) | (((long) ((Number) it.next()).byteValue()) & 255);
        }
        return Long.MIN_VALUE | jByteValue;
    }

    private final boolean isSafeFileName(String name) {
        if (name.length() > 0 && !Intrinsics.areEqual(name, ".") && !Intrinsics.areEqual(name, "..")) {
            for (int i = 0; i < name.length(); i++) {
                char cCharAt = name.charAt(i);
                if (cCharAt != '/' && cCharAt != '\\' && cCharAt != 0) {
                }
            }
            return true;
        }
        return false;
    }

    private final String hash(File file) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[16384];
                for (int i = fileInputStream.read(bArr); i >= 0; i = fileInputStream.read(bArr)) {
                    messageDigest.update(bArr, 0, i);
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileInputStream, null);
                return toHex(messageDigest.digest());
            } finally {
            }
        } catch (IOException unused) {
            return null;
        }
    }

    private final Integer parseTime(String value) {
        try {
            return Integer.valueOf((int) OffsetDateTime.parse(value).toEpochSecond());
        } catch (Exception unused) {
            return null;
        }
    }

    private final String toHex(byte[] bArr) {
        return ArraysKt.joinToString$default(bArr, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.GitPluginRepository$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(((Byte) obj).byteValue())}, 1));
            }
        }, 30, (Object) null);
    }

    private final String stringOrNull(JSONObject jSONObject, String str) {
        String string;
        Object objOpt = jSONObject.opt(str);
        String str2 = objOpt instanceof String ? (String) objOpt : null;
        if (str2 == null || (string = StringsKt.trim((CharSequence) str2).toString()) == null || string.length() <= 0) {
            return null;
        }
        return string;
    }

    private final String stringOrList(JSONObject jSONObject, String str, int i, String str2) {
        List listEmptyList;
        Object objOpt = jSONObject.opt(str);
        int i2 = 0;
        if (objOpt instanceof String) {
            listEmptyList = CollectionsKt.listOf(objOpt);
        } else if (objOpt instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) objOpt;
            IntRange intRangeUntil = RangesKt.until(0, jSONArray.length());
            ArrayList arrayList = new ArrayList();
            Iterator<Integer> it = intRangeUntil.iterator();
            while (it.hasNext()) {
                Object objOpt2 = jSONArray.opt(((IntIterator) it).nextInt());
                String str3 = objOpt2 instanceof String ? (String) objOpt2 : null;
                if (str3 != null) {
                    arrayList.add(str3);
                }
            }
            listEmptyList = arrayList;
        } else {
            listEmptyList = CollectionsKt.emptyList();
        }
        List list = listEmptyList;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(StringsKt.trim((CharSequence) it2.next()).toString());
        }
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList2.size();
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            if (((String) obj).length() > 0) {
                arrayList3.add(obj);
            }
        }
        String strJoinToString$default = CollectionsKt.joinToString$default(CollectionsKt.take(arrayList3, i), str2, null, null, 0, null, null, 62, null);
        if (strJoinToString$default.length() == 0) {
            return null;
        }
        return strJoinToString$default;
    }
}
