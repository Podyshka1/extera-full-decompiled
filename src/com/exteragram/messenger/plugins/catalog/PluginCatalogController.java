package com.exteragram.messenger.plugins.catalog;

import android.content.SharedPreferences;
import com.chaquo.python.internal.Common;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.PythonPluginsEngine;
import com.exteragram.messenger.plugins.catalog.CatalogPlugin;
import com.exteragram.messenger.plugins.catalog.GitPluginRepository;
import com.exteragram.messenger.plugins.catalog.PluginCatalogController;
import com.exteragram.messenger.plugins.catalog.db.CatalogEntryEntity;
import com.exteragram.messenger.plugins.catalog.db.CatalogEntryVersion;
import com.exteragram.messenger.plugins.catalog.db.CatalogEntryWithMetadata;
import com.exteragram.messenger.plugins.catalog.db.PluginCatalogDao;
import com.exteragram.messenger.plugins.catalog.db.PluginCatalogDatabase;
import com.exteragram.messenger.plugins.catalog.db.PluginMetadataEntity;
import com.exteragram.messenger.plugins.catalog.db.PluginRepositoryEntity;
import com.google.android.gms.cast.MediaTrack;
import com.sun.jna.Callback;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_chatlists;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000è\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u0082\u00012\u00020\u0001:\u0006\u0080\u0001\u0081\u0001\u0082\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J \u0010*\u001a\u00020\u00162\u0018\u0010+\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020-0,\u0012\u0004\u0012\u00020\u00160\u0015J(\u0010.\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00102\u0018\u0010+\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002000,\u0012\u0004\u0012\u00020\u00160\u0015J\u0016\u00101\u001a\b\u0012\u0004\u0012\u0002000,2\u0006\u0010/\u001a\u00020\u0010H\u0002J\u000e\u00102\u001a\u00020\u001c2\u0006\u0010/\u001a\u00020\u0010J\u0006\u00103\u001a\u00020\u001cJ\u0006\u00104\u001a\u00020\u001cJ\u000e\u00105\u001a\u00020\u00162\u0006\u00106\u001a\u00020\u001cJ&\u00107\u001a\u00020\u00162\u0006\u00108\u001a\u0002092\u0016\b\u0002\u0010+\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015J*\u0010:\u001a\u00020\u00162\u0006\u0010;\u001a\u00020\u001e2\u001a\u0010+\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010-\u0012\u0004\u0012\u00020\u00160<J\u000e\u0010=\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u0010J8\u0010>\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u001c2\u0006\u0010?\u001a\u00020\u001c2\u0018\b\u0002\u0010+\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015J\u0010\u0010@\u001a\u00020\u00162\u0006\u0010A\u001a\u00020-H\u0002J2\u0010B\u001a\u0010\u0012\u0004\u0012\u00020D\u0012\u0006\u0012\u0004\u0018\u00010\u001e0C2\u0006\u0010;\u001a\u00020\u001e2\b\u0010E\u001a\u0004\u0018\u00010\u001e2\b\u0010F\u001a\u0004\u0018\u00010\u001eH\u0002J0\u0010G\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020H0,\u0012\n\u0012\b\u0012\u0004\u0012\u00020I0,0C2\u0006\u0010A\u001a\u00020-2\u0006\u0010J\u001a\u00020KH\u0002J\b\u0010L\u001a\u00020\u0010H\u0002J$\u0010M\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00102\b\u0010N\u001a\u0004\u0018\u00010\u001e2\b\u0010F\u001a\u0004\u0018\u00010\u001eH\u0002J0\u0010O\u001a\u00020\u00162\u0006\u0010A\u001a\u00020-2\b\u0010P\u001a\u0004\u0018\u0001092\u0014\u0010+\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010Q\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J@\u0010R\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00102\u0006\u0010S\u001a\u00020Q2\u0006\u0010T\u001a\u00020\u00032\u0006\u0010U\u001a\u00020\u00032\u0016\u0010V\u001a\u0012\u0012\u0004\u0012\u00020H0\u0014j\b\u0012\u0004\u0012\u00020H`\u0017H\u0002J<\u0010W\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00102\u000e\u0010X\u001a\n\u0012\u0004\u0012\u00020H\u0018\u00010,2\u000e\b\u0002\u0010Y\u001a\b\u0012\u0004\u0012\u00020I0,2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010KH\u0002J\u001f\u0010Z\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00102\b\u0010[\u001a\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0002\u0010\\J\u0010\u0010]\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u0010H\u0002J\u000e\u0010^\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u0010J\b\u0010_\u001a\u00020\u0016H\u0002J\u0018\u0010`\u001a\u00020\u00162\u0006\u0010a\u001a\u00020#2\u0006\u0010b\u001a\u00020cH\u0002J\u0018\u0010d\u001a\u00020\u00162\u0006\u0010a\u001a\u00020#2\u0006\u0010Y\u001a\u00020IH\u0002J,\u0010e\u001a\u00020\u00162\u0006\u0010f\u001a\u0002002\u001c\u0010+\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010c\u0012\u0006\u0012\u0004\u0018\u00010g\u0012\u0004\u0012\u00020\u00160<J@\u0010h\u001a\u00020\u00162\u0006\u0010i\u001a\u00020H2\u0006\u0010j\u001a\u00020\u001e2\u0006\u0010k\u001a\u00020\u001e2\b\u0010Y\u001a\u0004\u0018\u00010I2\u0014\u0010+\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010c\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J.\u0010l\u001a\u00020\u00162\u0006\u0010m\u001a\u00020g2\u0006\u0010n\u001a\u00020\u00032\u0014\u0010+\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010c\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J\u0012\u0010o\u001a\u0004\u0018\u00010c2\u0006\u0010p\u001a\u00020qH\u0002J5\u0010r\u001a\u00020\u00162\u0006\u0010s\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0016\u0010t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010v0u\"\u0004\u0018\u00010vH\u0016¢\u0006\u0002\u0010wJ\u001a\u0010x\u001a\u0004\u0018\u00010g2\u0006\u0010/\u001a\u00020\u00102\u0006\u0010i\u001a\u00020HH\u0002J\u001a\u0010y\u001a\u0004\u0018\u00010H2\u0006\u0010/\u001a\u00020\u00102\u0006\u0010z\u001a\u00020{H\u0002J\u0018\u0010|\u001a\u00020I2\u0006\u0010}\u001a\u00020\u00102\u0006\u0010~\u001a\u00020\u001eH\u0002J\u0010\u0010\u007f\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0082\u0001\u0010\u0012\u001av\u0012\u0004\u0012\u00020\u0010\u00120\u0012.\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00160\u00150\u0014j\u0016\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00160\u0015`\u00170\u0013j:\u0012\u0004\u0012\u00020\u0010\u00120\u0012.\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00160\u00150\u0014j\u0016\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00160\u0015`\u0017`\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u0013j\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f`\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010$\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010'\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0083\u0001"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/PluginCatalogController;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "account", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(I)V", "dao", "Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDao;", "getDao", "()Lcom/exteragram/messenger/plugins/catalog/db/PluginCatalogDao;", "messagesController", "Lorg/telegram/messenger/MessagesController;", "getMessagesController", "()Lorg/telegram/messenger/MessagesController;", "syncingRepositories", "Ljava/util/HashSet;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/collections/HashSet;", "syncCallbacks", "Ljava/util/HashMap;", "Ljava/util/ArrayList;", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/collections/ArrayList;", "Lkotlin/collections/HashMap;", "pendingForcedSyncs", "metadataRequests", "resolvingFolder", _UrlKt.FRAGMENT_ENCODE_SET, "downloads", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/catalog/PluginCatalogController$PendingDownload;", "observingDownloads", "metadataQueue", "Lkotlin/collections/ArrayDeque;", "Lcom/exteragram/messenger/plugins/catalog/PluginCatalogController$MetadataJob;", "queuedDocuments", "activeMetadataJobs", "metadataUnavailable", "pendingUpdates", "postUpdatesRunnable", "Ljava/lang/Runnable;", "loadRepositories", Callback.METHOD_NAME, _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/catalog/db/PluginRepositoryEntity;", "loadCatalog", "repositoryId", "Lcom/exteragram/messenger/plugins/catalog/CatalogPlugin;", "getVisiblePlugins", "isSyncing", "isResolvingFolder", "isMetadataAvailable", "refreshFolderRepositories", "force", "addRepository", "chat", "Lorg/telegram/tgnet/TLRPC$Chat;", "addGitRepository", "url", "Lkotlin/Function2;", "removeRepository", "syncRepository", "loadMetadata", "syncGitRepository", "repository", "loadGitIndex", "Lkotlin/Pair;", "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$IndexResult;", "etagUrl", "etag", "buildGitEntries", "Lcom/exteragram/messenger/plugins/catalog/db/CatalogEntryEntity;", "Lcom/exteragram/messenger/plugins/catalog/db/PluginMetadataEntity;", "index", "Lcom/exteragram/messenger/plugins/catalog/GitPluginRepository$Index;", "nextGitRepositoryId", "saveEtag", "source", "resolveInputPeer", "cachedChat", "Lorg/telegram/tgnet/TLRPC$InputPeer;", "loadHistoryPage", "peer", "offsetId", "page", "collected", "finishSync", "entries", "metadata", "completeSync", "changed", "(JLjava/lang/Integer;)V", "getTopMessage", "loadMissingMetadata", "pumpMetadataQueue", "parseMetadata", "job", "file", "Ljava/io/File;", "storeMetadata", "downloadPlugin", "plugin", "Lorg/telegram/messenger/MessageObject;", "downloadGitFile", "entry", "fileUrl", "sha256", "downloadDocument", "messageObject", PluginsConstants.MenuItemProperties.PRIORITY, "findDownloadedFile", "document", "Lorg/telegram/tgnet/TLRPC$Document;", "didReceivedNotification", "id", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "createMessageObject", "toCatalogEntry", "message", "Lorg/telegram/tgnet/TLRPC$Message;", "failedMetadata", "documentId", "error", "postUpdate", "PendingDownload", "MetadataJob", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginCatalogController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginCatalogController.kt\ncom/exteragram/messenger/plugins/catalog/PluginCatalogController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,955:1\n777#2:956\n873#2,2:957\n1586#2:959\n1661#2,3:960\n777#2:963\n873#2,2:964\n1915#2,2:998\n777#2:1000\n873#2,2:1001\n1586#2:1003\n1661#2,3:1004\n873#2,2:1007\n1220#2,2:1009\n1249#2,4:1011\n1606#2:1015\n1617#2:1016\n1924#2,2:1017\n1926#2:1020\n1618#2:1021\n1220#2,2:1034\n1249#2,4:1036\n1642#2,10:1040\n1915#2:1050\n1916#2:1052\n1652#2:1053\n1834#2,4:1054\n1834#2,4:1058\n1220#2,2:1074\n1249#2,4:1076\n1642#2,10:1092\n1915#2:1102\n1916#2:1104\n1652#2:1105\n410#3,7:966\n1#4:973\n1#4:1019\n1#4:1051\n1#4:1103\n41#5,12:974\n41#5,12:986\n41#5,12:1022\n41#5,12:1062\n41#5,12:1080\n*S KotlinDebug\n*F\n+ 1 PluginCatalogController.kt\ncom/exteragram/messenger/plugins/catalog/PluginCatalogController\n*L\n118#1:956\n118#1:957,2\n119#1:959\n119#1:960,3\n120#1:963\n120#1:964,2\n589#1:998,2\n83#1:1000\n83#1:1001,2\n83#1:1003\n83#1:1004,3\n83#1:1007,2\n176#1:1009,2\n176#1:1011,4\n178#1:1015\n178#1:1016\n178#1:1017,2\n178#1:1020\n178#1:1021\n171#1:1034,2\n171#1:1036,4\n172#1:1040,10\n172#1:1050\n172#1:1052\n172#1:1053\n218#1:1054,4\n261#1:1058,4\n540#1:1074,2\n540#1:1076,4\n605#1:1092,10\n605#1:1102\n605#1:1104\n605#1:1105\n302#1:966,7\n178#1:1019\n172#1:1051\n605#1:1103\n443#1:974,12\n448#1:986,12\n195#1:1022,12\n286#1:1062,12\n569#1:1080,12\n*E\n"})
public final class PluginCatalogController implements NotificationCenter.NotificationCenterDelegate {
    public static final int ADD_EXISTS = 1;
    public static final int ADD_FAILED = 2;
    public static final int ADD_OK = 0;
    public static final int ADD_UNSUPPORTED = 3;
    public static final long ALL_REPOSITORIES = 0;
    public static final String ERROR_INVALID_MESSAGE = "INVALID_MESSAGE";
    public static final String ERROR_INVALID_METADATA = "INVALID_METADATA";
    public static final String ERROR_TOO_LARGE = "FILE_TOO_LARGE";
    private static final long FOLDER_REFRESH_INTERVAL = 300000;
    private static final String KEY_FOLDER_RESOLVED_AT = "folderResolvedAt";
    private static final String KEY_LAST_GIT_REPOSITORY_ID = "lastGitRepositoryId";
    private static final String KEY_SORT_ORDER = "sortOrder";
    private static final long MAX_ARCHIVE_METADATA_FILE_SIZE = 10485760;
    private static final long MAX_METADATA_FILE_SIZE = 2097152;
    private static final int MAX_METADATA_JOBS = 3;
    private static final int MAX_PAGES = 20;
    private static final int NETWORK_THREADS = 3;
    private static final int PAGE_SIZE = 100;
    private static final long SYNC_INTERVAL = 600000;
    public static final String TRUSTED_FOLDER_SLUG = "pPhOtEq00KhjYTc6";
    private static final long UPDATE_DEBOUNCE_MS = 100;
    private static int extensionEnginesKey;
    private final int account;
    private int activeMetadataJobs;
    private final HashMap<String, PendingDownload> downloads;
    private final ArrayDeque<MetadataJob> metadataQueue;
    private final HashSet<Long> metadataRequests;
    private boolean metadataUnavailable;
    private boolean observingDownloads;
    private final HashSet<Long> pendingForcedSyncs;
    private final HashSet<Long> pendingUpdates;
    private final Runnable postUpdatesRunnable;
    private final HashSet<Long> queuedDocuments;
    private boolean resolvingFolder;
    private final HashMap<Long, ArrayList<Function1<Integer, Unit>>> syncCallbacks;
    private final HashSet<Long> syncingRepositories;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<DispatchQueue> catalogQueue$delegate = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda20
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PluginCatalogController.$r8$lambda$cy_vJw1XTaRvo2i3PNnQ_57rG7g();
        }
    });
    private static final Lazy<ExecutorService> networkExecutor$delegate = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda21
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Executors.newFixedThreadPool(3);
        }
    });
    private static final HashMap<String, PluginsController.PluginsEngine> extensionEngines = new HashMap<>();
    private static final Lazy<SharedPreferences> preferences$delegate = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda22
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ApplicationLoader.applicationContext.getSharedPreferences("plugin_catalog", 0);
        }
    });
    private static final PluginCatalogController[] instances = new PluginCatalogController[16];

    public /* synthetic */ PluginCatalogController(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    @JvmStatic
    public static final PluginCatalogController getInstance(int i) {
        return INSTANCE.getInstance(i);
    }

    private PluginCatalogController(int i) {
        this.account = i;
        this.syncingRepositories = new HashSet<>();
        this.syncCallbacks = new HashMap<>();
        this.pendingForcedSyncs = new HashSet<>();
        this.metadataRequests = new HashSet<>();
        this.downloads = new HashMap<>();
        this.metadataQueue = new ArrayDeque<>();
        this.queuedDocuments = new HashSet<>();
        this.pendingUpdates = new HashSet<>();
        this.postUpdatesRunnable = new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$qvoWDPwNoq3rxMSQnTTg9UWx1pA(this.f$0);
            }
        };
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00122\u0010\u0004\u001a.\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u00060\u0005j\u0016\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u0006`\t¢\u0006\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR=\u0010\u0004\u001a.\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u00060\u0005j\u0016\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u0006`\t¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/PluginCatalogController$PendingDownload;", _UrlKt.FRAGMENT_ENCODE_SET, "document", "Lorg/telegram/tgnet/TLRPC$Document;", "callbacks", "Ljava/util/ArrayList;", "Lkotlin/Function1;", "Ljava/io/File;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/collections/ArrayList;", "<init>", "(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;)V", "getDocument", "()Lorg/telegram/tgnet/TLRPC$Document;", "getCallbacks", "()Ljava/util/ArrayList;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class PendingDownload {
        private final ArrayList<Function1<File, Unit>> callbacks;
        private final TLRPC.Document document;

        public PendingDownload(TLRPC.Document document, ArrayList<Function1<File, Unit>> arrayList) {
            this.document = document;
            this.callbacks = arrayList;
        }

        public final ArrayList<Function1<File, Unit>> getCallbacks() {
            return this.callbacks;
        }

        public final TLRPC.Document getDocument() {
            return this.document;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/PluginCatalogController$MetadataJob;", _UrlKt.FRAGMENT_ENCODE_SET, "repositoryId", _UrlKt.FRAGMENT_ENCODE_SET, "entry", "Lcom/exteragram/messenger/plugins/catalog/db/CatalogEntryEntity;", "maxSize", "<init>", "(JLcom/exteragram/messenger/plugins/catalog/db/CatalogEntryEntity;J)V", "getRepositoryId", "()J", "getEntry", "()Lcom/exteragram/messenger/plugins/catalog/db/CatalogEntryEntity;", "getMaxSize", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class MetadataJob {
        private final CatalogEntryEntity entry;
        private final long maxSize;
        private final long repositoryId;

        public MetadataJob(long j, CatalogEntryEntity catalogEntryEntity, long j2) {
            this.repositoryId = j;
            this.entry = catalogEntryEntity;
            this.maxSize = j2;
        }

        public final CatalogEntryEntity getEntry() {
            return this.entry;
        }

        public final long getMaxSize() {
            return this.maxSize;
        }

        public final long getRepositoryId() {
            return this.repositoryId;
        }
    }

    private final PluginCatalogDao getDao() {
        return PluginCatalogDatabase.INSTANCE.getInstance().catalogDao();
    }

    private final MessagesController getMessagesController() {
        return MessagesController.getInstance(this.account);
    }

    public static void $r8$lambda$qvoWDPwNoq3rxMSQnTTg9UWx1pA(PluginCatalogController pluginCatalogController) {
        ArrayList arrayList = new ArrayList(pluginCatalogController.pendingUpdates);
        pluginCatalogController.pendingUpdates.clear();
        NotificationCenter notificationCenter = NotificationCenter.getInstance(pluginCatalogController.account);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            notificationCenter.lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginCatalogUpdated, (Long) obj);
        }
    }

    public final void loadRepositories(final Function1<? super List<PluginRepositoryEntity>, Unit> callback) {
        INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$0eWkXD5TqK7sST32UU99qWTL0ZU(this.f$0, callback);
            }
        });
    }

    public static void $r8$lambda$0eWkXD5TqK7sST32UU99qWTL0ZU(final PluginCatalogController pluginCatalogController, final Function1 function1) {
        final List<PluginRepositoryEntity> repositories = pluginCatalogController.getDao().getRepositories();
        ArrayList arrayList = new ArrayList();
        for (Object obj : repositories) {
            if (!((PluginRepositoryEntity) obj).isGit()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj2 = arrayList.get(i2);
            i2++;
            arrayList2.add(Long.valueOf(((PluginRepositoryEntity) obj2).getRepositoryId()));
        }
        final ArrayList arrayList3 = new ArrayList();
        int size2 = arrayList2.size();
        while (i < size2) {
            Object obj3 = arrayList2.get(i);
            i++;
            if (pluginCatalogController.getMessagesController().getChat(Long.valueOf(((Number) obj3).longValue())) == null) {
                arrayList3.add(obj3);
            }
        }
        if (arrayList3.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda55
                @Override // java.lang.Runnable
                public final void run() {
                    function1.invoke(repositories);
                }
            });
        } else {
            final MessagesStorage messagesStorage = MessagesStorage.getInstance(pluginCatalogController.account);
            messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda56
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.$r8$lambda$CvJZnLsWoXxlKNjGn47tgNPyH2s(messagesStorage, arrayList3, pluginCatalogController, function1, repositories);
                }
            });
        }
    }

    public static void $r8$lambda$CvJZnLsWoXxlKNjGn47tgNPyH2s(MessagesStorage messagesStorage, List list, final PluginCatalogController pluginCatalogController, final Function1 function1, final List list2) {
        final ArrayList<TLRPC.Chat> chats = messagesStorage.getChats(new ArrayList<>(list));
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$M2_DrZ8yj1glvk9Touue5kgO1sc(this.f$0, chats, function1, list2);
            }
        });
    }

    public static void $r8$lambda$M2_DrZ8yj1glvk9Touue5kgO1sc(PluginCatalogController pluginCatalogController, ArrayList arrayList, Function1 function1, List list) {
        pluginCatalogController.getMessagesController().putChats(arrayList, true);
        function1.invoke(list);
    }

    public final void loadCatalog(final long repositoryId, final Function1<? super List<CatalogPlugin>, Unit> callback) {
        INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.m3065$r8$lambda$MXMg59Biv5oUoeMvWxUQOPzdb0(this.f$0, repositoryId, callback);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$MXMg-59Biv5oUoeMvWxUQOPzdb0, reason: not valid java name */
    public static void m3065$r8$lambda$MXMg59Biv5oUoeMvWxUQOPzdb0(final PluginCatalogController pluginCatalogController, long j, final Function1 function1) {
        final List<CatalogPlugin> visiblePlugins = pluginCatalogController.getVisiblePlugins(j);
        PluginRepositoryEntity repository = pluginCatalogController.getDao().getRepository(j);
        final boolean z = (repository == null || repository.getSyncedAt() == 0 || repository.getPluginsCount() == visiblePlugins.size()) ? false : true;
        if (z) {
            pluginCatalogController.getDao().updatePluginsCount(j, visiblePlugins.size());
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$c5eNA4DVkvSPxYqg81nEZ5sS9kE(function1, visiblePlugins, z, pluginCatalogController);
            }
        });
    }

    public static void $r8$lambda$c5eNA4DVkvSPxYqg81nEZ5sS9kE(Function1 function1, List list, boolean z, PluginCatalogController pluginCatalogController) {
        function1.invoke(list);
        if (z) {
            pluginCatalogController.postUpdate(0L);
        }
    }

    private final List<CatalogPlugin> getVisiblePlugins(long repositoryId) {
        List<CatalogEntryWithMetadata> entries = getDao().getEntries(repositoryId);
        ArrayList arrayList = new ArrayList();
        for (Object obj : entries) {
            if (INSTANCE.isSupported(((CatalogEntryWithMetadata) obj).getEntry().getFileName())) {
                arrayList.add(obj);
            }
        }
        CatalogPlugin.Companion companion = CatalogPlugin.INSTANCE;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj2 = arrayList.get(i);
            i++;
            arrayList2.add(companion.from((CatalogEntryWithMetadata) obj2));
        }
        List<CatalogPlugin> listLatestVersions = CatalogPlugin.INSTANCE.latestVersions(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : listLatestVersions) {
            if (!((CatalogPlugin) obj3).isFailed()) {
                arrayList3.add(obj3);
            }
        }
        return arrayList3;
    }

    public final boolean isSyncing(long repositoryId) {
        return this.syncingRepositories.contains(Long.valueOf(repositoryId));
    }

    /* JADX INFO: renamed from: isResolvingFolder, reason: from getter */
    public final boolean getResolvingFolder() {
        return this.resolvingFolder;
    }

    public final boolean isMetadataAvailable() {
        return ExteraConfig.getPluginsEngine() && !this.metadataUnavailable;
    }

    public final void refreshFolderRepositories(boolean force) {
        if (this.resolvingFolder) {
            return;
        }
        if (force || System.currentTimeMillis() - INSTANCE.getPreferences().getLong(KEY_FOLDER_RESOLVED_AT, 0L) >= FOLDER_REFRESH_INTERVAL) {
            this.resolvingFolder = true;
            postUpdate(0L);
            TL_chatlists.TL_chatlists_checkChatlistInvite tL_chatlists_checkChatlistInvite = new TL_chatlists.TL_chatlists_checkChatlistInvite();
            tL_chatlists_checkChatlistInvite.slug = TRUSTED_FOLDER_SLUG;
            ConnectionsManager.getInstance(this.account).sendRequest(tL_chatlists_checkChatlistInvite, new RequestDelegate() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda24
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda35
                        @Override // java.lang.Runnable
                        public final void run() {
                            PluginCatalogController.$r8$lambda$klUNLievom9R8lMs0uARtMyJ_KI(tLObject, tL_error, pluginCatalogController);
                        }
                    });
                }
            });
        }
    }

    public static void $r8$lambda$klUNLievom9R8lMs0uARtMyJ_KI(TLObject tLObject, TLRPC.TL_error tL_error, final PluginCatalogController pluginCatalogController) {
        Iterable<TLRPC.Peer> iterablePlus;
        ArrayList<TLRPC.Chat> arrayList;
        ArrayList<TLRPC.User> arrayList2;
        int i = 0;
        if (tLObject instanceof TL_chatlists.TL_chatlists_chatlistInvite) {
            TL_chatlists.TL_chatlists_chatlistInvite tL_chatlists_chatlistInvite = (TL_chatlists.TL_chatlists_chatlistInvite) tLObject;
            iterablePlus = tL_chatlists_chatlistInvite.peers;
            arrayList = tL_chatlists_chatlistInvite.chats;
            arrayList2 = tL_chatlists_chatlistInvite.users;
        } else if (tLObject instanceof TL_chatlists.TL_chatlists_chatlistInviteAlready) {
            TL_chatlists.TL_chatlists_chatlistInviteAlready tL_chatlists_chatlistInviteAlready = (TL_chatlists.TL_chatlists_chatlistInviteAlready) tLObject;
            iterablePlus = CollectionsKt.plus((Collection) tL_chatlists_chatlistInviteAlready.already_peers, (Iterable) tL_chatlists_chatlistInviteAlready.missing_peers);
            arrayList = tL_chatlists_chatlistInviteAlready.chats;
            arrayList2 = tL_chatlists_chatlistInviteAlready.users;
        } else {
            FileLog.m1038e("PluginCatalog: failed to resolve folder: " + (tL_error != null ? tL_error.text : null));
            pluginCatalogController.resolvingFolder = false;
            pluginCatalogController.postUpdate(0L);
            return;
        }
        pluginCatalogController.getMessagesController().putChats(arrayList, false);
        pluginCatalogController.getMessagesController().putUsers(arrayList2, false);
        MessagesStorage.getInstance(pluginCatalogController.account).putUsersAndChats(arrayList2, arrayList, true, true);
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(arrayList, 10)), 16));
        int size = arrayList.size();
        while (i < size) {
            TLRPC.Chat chat = arrayList.get(i);
            i++;
            linkedHashMap.put(Long.valueOf(chat.id), chat);
        }
        final ArrayList arrayList3 = new ArrayList();
        for (TLRPC.Peer peer : iterablePlus) {
            TLRPC.Chat chat2 = (TLRPC.Chat) linkedHashMap.get(Long.valueOf(peer.channel_id));
            if (chat2 == null || peer.channel_id == 0 || !ChatObject.isChannel(chat2)) {
                chat2 = null;
            }
            if (chat2 != null) {
                arrayList3.add(chat2);
            }
        }
        INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$KVyM56gQl4C6y5hW9SeyDsZ3x5Q(this.f$0, arrayList3);
            }
        });
    }

    public static void $r8$lambda$KVyM56gQl4C6y5hW9SeyDsZ3x5Q(final PluginCatalogController pluginCatalogController, List list) {
        PluginRepositoryEntity pluginRepositoryEntity;
        List<PluginRepositoryEntity> repositories = pluginCatalogController.getDao().getRepositories();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(repositories, 10)), 16));
        for (Object obj : repositories) {
            linkedHashMap.put(Long.valueOf(((PluginRepositoryEntity) obj).getRepositoryId()), obj);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj2 : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            TLRPC.Chat chat = (TLRPC.Chat) obj2;
            PluginRepositoryEntity pluginRepositoryEntity2 = (PluginRepositoryEntity) linkedHashMap.get(Long.valueOf(chat.id));
            if (pluginRepositoryEntity2 == null || pluginRepositoryEntity2.getSource() != 1) {
                pluginRepositoryEntity = new PluginRepositoryEntity(chat.id, ChatObject.getPublicUsername(chat), chat.title, 0, i, pluginRepositoryEntity2 != null ? pluginRepositoryEntity2.getAddedAt() : jCurrentTimeMillis, pluginRepositoryEntity2 != null ? pluginRepositoryEntity2.getSyncedAt() : 0L, pluginRepositoryEntity2 != null ? pluginRepositoryEntity2.getPluginsCount() : 0, null, null, 768, null);
            } else {
                pluginRepositoryEntity = null;
            }
            if (pluginRepositoryEntity != null) {
                arrayList.add(pluginRepositoryEntity);
            }
            i = i2;
        }
        pluginCatalogController.getDao().replaceFolderRepositories(arrayList);
        SharedPreferences.Editor editorEdit = INSTANCE.getPreferences().edit();
        editorEdit.putLong(KEY_FOLDER_RESOLVED_AT, jCurrentTimeMillis);
        editorEdit.apply();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$2PkdbUU9QiV9F6qii0bluI0qyGM(this.f$0);
            }
        });
    }

    public static void $r8$lambda$2PkdbUU9QiV9F6qii0bluI0qyGM(PluginCatalogController pluginCatalogController) {
        pluginCatalogController.resolvingFolder = false;
        pluginCatalogController.postUpdate(0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void addRepository$default(PluginCatalogController pluginCatalogController, TLRPC.Chat chat, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        pluginCatalogController.addRepository(chat, function1);
    }

    public final void addRepository(final TLRPC.Chat chat, final Function1<? super Boolean, Unit> callback) {
        if (!ChatObject.isChannel(chat)) {
            if (callback != null) {
                callback.invoke(Boolean.FALSE);
            }
        } else {
            MessagesStorage.getInstance(this.account).putUsersAndChats(null, CollectionsKt.arrayListOf(chat), true, true);
            final String publicUsername = ChatObject.getPublicUsername(chat);
            final String str = chat.title;
            INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.$r8$lambda$7w_z6G8hdAJ3wvLM81og52eUiXo(this.f$0, chat, publicUsername, str, callback);
                }
            });
        }
    }

    public static void $r8$lambda$7w_z6G8hdAJ3wvLM81og52eUiXo(final PluginCatalogController pluginCatalogController, TLRPC.Chat chat, String str, String str2, final Function1 function1) {
        if (pluginCatalogController.getDao().getRepository(chat.id) != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda46
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.$r8$lambda$dbjSOCMIa026qlr1JLQ5UrJObgI(function1);
                }
            });
            return;
        }
        List<PluginRepositoryEntity> repositories = pluginCatalogController.getDao().getRepositories();
        int i = 0;
        if (!(repositories instanceof Collection) || !repositories.isEmpty()) {
            Iterator<T> it = repositories.iterator();
            while (it.hasNext()) {
                if (((PluginRepositoryEntity) it.next()).getSource() == 1 && (i = i + 1) < 0) {
                    CollectionsKt.throwCountOverflow();
                }
            }
        }
        pluginCatalogController.getDao().upsertRepositories(CollectionsKt.listOf(new PluginRepositoryEntity(chat.id, str, str2, 1, i, System.currentTimeMillis(), 0L, 0, null, null, 960, null)));
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.m3062$r8$lambda$E80kNlyzrpSwYRXKZBnPzAGnO8(function1, pluginCatalogController);
            }
        });
    }

    public static void $r8$lambda$dbjSOCMIa026qlr1JLQ5UrJObgI(Function1 function1) {
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$E-80kNlyzrpSwYRXKZBnPzAGnO8, reason: not valid java name */
    public static void m3062$r8$lambda$E80kNlyzrpSwYRXKZBnPzAGnO8(Function1 function1, PluginCatalogController pluginCatalogController) {
        if (function1 != null) {
            function1.invoke(Boolean.TRUE);
        }
        pluginCatalogController.postUpdate(0L);
    }

    public final void addGitRepository(final String url, final Function2<? super Integer, ? super PluginRepositoryEntity, Unit> callback) {
        INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$gyRidbG9Bt0q3BPqdFHXpFq4tSU(this.f$0, url, callback);
            }
        });
    }

    public static void $r8$lambda$gyRidbG9Bt0q3BPqdFHXpFq4tSU(final PluginCatalogController pluginCatalogController, final String str, final Function2 function2) {
        if (pluginCatalogController.getDao().getRepositoryByUrl(str) != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    function2.invoke(1, null);
                }
            });
        } else {
            INSTANCE.getNetworkExecutor().execute(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.$r8$lambda$x4010Qi5ky1RNH8yj_PtPz58ecQ(this.f$0, str, function2);
                }
            });
        }
    }

    public static void $r8$lambda$x4010Qi5ky1RNH8yj_PtPz58ecQ(final PluginCatalogController pluginCatalogController, final String str, final Function2 function2) {
        Pair<GitPluginRepository.IndexResult, String> pairLoadGitIndex = pluginCatalogController.loadGitIndex(str, null, null);
        final GitPluginRepository.IndexResult indexResultComponent1 = pairLoadGitIndex.component1();
        final String strComponent2 = pairLoadGitIndex.component2();
        if (!(indexResultComponent1 instanceof GitPluginRepository.IndexResult.Loaded)) {
            final int i = Intrinsics.areEqual(indexResultComponent1, GitPluginRepository.IndexResult.Unsupported.INSTANCE) ? 3 : 2;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    function2.invoke(Integer.valueOf(i), null);
                }
            });
        } else {
            INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.m3069$r8$lambda$YvO3Xj1xgtsolRLaNmWf7bCzQ(this.f$0, str, indexResultComponent1, strComponent2, function2);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$Yv-O3X-j1xgtsolRLaNmWf7bCzQ, reason: not valid java name */
    public static void m3069$r8$lambda$YvO3Xj1xgtsolRLaNmWf7bCzQ(final PluginCatalogController pluginCatalogController, String str, final GitPluginRepository.IndexResult indexResult, String str2, final Function2 function2) {
        if (pluginCatalogController.getDao().getRepositoryByUrl(str) != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda37
                @Override // java.lang.Runnable
                public final void run() {
                    function2.invoke(1, null);
                }
            });
            return;
        }
        long jNextGitRepositoryId = pluginCatalogController.nextGitRepositoryId();
        GitPluginRepository.IndexResult.Loaded loaded = (GitPluginRepository.IndexResult.Loaded) indexResult;
        String name = loaded.getIndex().getName();
        List<PluginRepositoryEntity> repositories = pluginCatalogController.getDao().getRepositories();
        int i = 0;
        if (!(repositories instanceof Collection) || !repositories.isEmpty()) {
            Iterator<T> it = repositories.iterator();
            while (it.hasNext()) {
                if (((PluginRepositoryEntity) it.next()).getSource() == 1 && (i = i + 1) < 0) {
                    CollectionsKt.throwCountOverflow();
                }
            }
        }
        final PluginRepositoryEntity pluginRepositoryEntity = new PluginRepositoryEntity(jNextGitRepositoryId, null, name, 1, i, System.currentTimeMillis(), 0L, 0, str, loaded.getIndex().getHomepage(), 192, null);
        pluginCatalogController.getDao().upsertRepositories(CollectionsKt.listOf(pluginRepositoryEntity));
        pluginCatalogController.saveEtag(pluginRepositoryEntity.getRepositoryId(), str2, loaded.getEtag());
        Pair<List<CatalogEntryEntity>, List<PluginMetadataEntity>> pairBuildGitEntries = pluginCatalogController.buildGitEntries(pluginRepositoryEntity, loaded.getIndex());
        final List<CatalogEntryEntity> listComponent1 = pairBuildGitEntries.component1();
        final List<PluginMetadataEntity> listComponent2 = pairBuildGitEntries.component2();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$Fz_r5CYJwtVwWzL3ALIzi0IOtsc(this.f$0, pluginRepositoryEntity, listComponent1, listComponent2, indexResult, function2);
            }
        });
    }

    public static void $r8$lambda$Fz_r5CYJwtVwWzL3ALIzi0IOtsc(PluginCatalogController pluginCatalogController, PluginRepositoryEntity pluginRepositoryEntity, List list, List list2, GitPluginRepository.IndexResult indexResult, Function2 function2) {
        pluginCatalogController.syncingRepositories.add(Long.valueOf(pluginRepositoryEntity.getRepositoryId()));
        pluginCatalogController.finishSync(pluginRepositoryEntity.getRepositoryId(), list, list2, ((GitPluginRepository.IndexResult.Loaded) indexResult).getIndex());
        function2.invoke(0, pluginRepositoryEntity);
        pluginCatalogController.postUpdate(0L);
    }

    public final void removeRepository(final long repositoryId) {
        INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.m3066$r8$lambda$NxOzgyod9KES6Cl_gB2zkvk6xU(this.f$0, repositoryId);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$NxOzgyod9K-ES6Cl_gB2zkvk6xU, reason: not valid java name */
    public static void m3066$r8$lambda$NxOzgyod9KES6Cl_gB2zkvk6xU(final PluginCatalogController pluginCatalogController, final long j) {
        PluginRepositoryEntity repository = pluginCatalogController.getDao().getRepository(j);
        if (repository == null || repository.getSource() != 1) {
            return;
        }
        pluginCatalogController.getDao().removeRepository(j);
        Companion companion = INSTANCE;
        SharedPreferences.Editor editorEdit = companion.getPreferences().edit();
        editorEdit.remove(companion.etagKey(j));
        editorEdit.remove(companion.etagUrlKey(j));
        editorEdit.apply();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$BHE_lUjLGIaaXmfaegW1Ik09GYA(this.f$0, j);
            }
        });
    }

    public static void $r8$lambda$BHE_lUjLGIaaXmfaegW1Ik09GYA(PluginCatalogController pluginCatalogController, final long j) {
        CollectionsKt.removeAll((List) pluginCatalogController.metadataQueue, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(PluginCatalogController.m3070$r8$lambda$ZlySIjeSshvm4YhJRs6TIwSO2U(j, (PluginCatalogController.MetadataJob) obj));
            }
        });
        pluginCatalogController.postUpdate(0L);
    }

    /* JADX INFO: renamed from: $r8$lambda$ZlySIj-eSshvm4YhJRs6TIwSO2U, reason: not valid java name */
    public static boolean m3070$r8$lambda$ZlySIjeSshvm4YhJRs6TIwSO2U(long j, MetadataJob metadataJob) {
        return metadataJob.getRepositoryId() == j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void syncRepository$default(PluginCatalogController pluginCatalogController, long j, boolean z, boolean z2, Function1 function1, int i, Object obj) {
        if ((i & 8) != 0) {
            function1 = null;
        }
        pluginCatalogController.syncRepository(j, z, z2, function1);
    }

    public final void syncRepository(final long repositoryId, final boolean force, boolean loadMetadata, Function1<? super Integer, Unit> callback) {
        if (loadMetadata) {
            this.metadataRequests.add(Long.valueOf(repositoryId));
        }
        if (callback != null) {
            HashMap<Long, ArrayList<Function1<Integer, Unit>>> map = this.syncCallbacks;
            Long lValueOf = Long.valueOf(repositoryId);
            ArrayList<Function1<Integer, Unit>> arrayList = map.get(lValueOf);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                map.put(lValueOf, arrayList);
            }
            arrayList.add(callback);
        }
        if (this.syncingRepositories.add(Long.valueOf(repositoryId))) {
            postUpdate(repositoryId);
            final int topMessage = getTopMessage(repositoryId);
            INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.m3068$r8$lambda$WCmvlO5JxKO48iyvE6jFVu4o0U(this.f$0, repositoryId, topMessage, force);
                }
            });
        } else if (force) {
            this.pendingForcedSyncs.add(Long.valueOf(repositoryId));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$WCmvlO5JxKO48iyvE6j-FVu4o0U, reason: not valid java name */
    public static void m3068$r8$lambda$WCmvlO5JxKO48iyvE6jFVu4o0U(final PluginCatalogController pluginCatalogController, final long j, int i, boolean z) {
        final PluginRepositoryEntity repository = pluginCatalogController.getDao().getRepository(j);
        Companion companion = INSTANCE;
        boolean z2 = i > companion.getPreferences().getInt(companion.syncedTopMessageKey(j), 0);
        if (repository == null || (!z && !z2 && System.currentTimeMillis() - repository.getSyncedAt() < SYNC_INTERVAL)) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.m3063$r8$lambda$He8nFtU8LgXZo1YBjst8YYAbo(this.f$0, j, repository);
                }
            });
            return;
        }
        if (repository.isGit()) {
            pluginCatalogController.syncGitRepository(repository);
            return;
        }
        TLRPC.Chat chat = pluginCatalogController.getMessagesController().getChat(Long.valueOf(j));
        if (chat == null) {
            chat = MessagesStorage.getInstance(pluginCatalogController.account).getChatSync(j);
        }
        final TLRPC.Chat chat2 = chat;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController pluginCatalogController2 = this.f$0;
                pluginCatalogController2.resolveInputPeer(repository, chat2, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PluginCatalogController.m3056$r8$lambda$Et1jOtdx8hDTAON1i6bb_62ONc(j, pluginCatalogController2, (TLRPC.InputPeer) obj);
                    }
                });
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$He8nFtU8Lg-XZo1YBjst8YY-Abo, reason: not valid java name */
    public static void m3063$r8$lambda$He8nFtU8LgXZo1YBjst8YYAbo(PluginCatalogController pluginCatalogController, long j, PluginRepositoryEntity pluginRepositoryEntity) {
        pluginCatalogController.syncingRepositories.remove(Long.valueOf(j));
        pluginCatalogController.postUpdate(j);
        pluginCatalogController.completeSync(j, pluginRepositoryEntity != null ? 0 : null);
        if (!pluginCatalogController.metadataRequests.remove(Long.valueOf(j)) || pluginRepositoryEntity == null) {
            return;
        }
        pluginCatalogController.loadMissingMetadata(j);
    }

    /* JADX INFO: renamed from: $r8$lambda$-Et1jOtdx8hDTAON1i6bb_62ONc, reason: not valid java name */
    public static Unit m3056$r8$lambda$Et1jOtdx8hDTAON1i6bb_62ONc(long j, PluginCatalogController pluginCatalogController, TLRPC.InputPeer inputPeer) {
        if (inputPeer == null) {
            FileLog.m1038e("PluginCatalog: cannot resolve repository " + j);
            finishSync$default(pluginCatalogController, j, null, null, null, 12, null);
        } else {
            pluginCatalogController.loadHistoryPage(j, inputPeer, 0, 0, new ArrayList<>());
        }
        return Unit.INSTANCE;
    }

    private final void syncGitRepository(final PluginRepositoryEntity repository) {
        final String url = repository.getUrl();
        if (url == null) {
            return;
        }
        final long repositoryId = repository.getRepositoryId();
        Companion companion = INSTANCE;
        final String string = companion.getPreferences().getString(companion.etagKey(repositoryId), null);
        final String string2 = companion.getPreferences().getString(companion.etagUrlKey(repositoryId), null);
        companion.getNetworkExecutor().execute(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$UPtgZdfYlnQY09ecgjB63vAkTHM(this.f$0, url, string2, string, repository, repositoryId);
            }
        });
    }

    public static void $r8$lambda$UPtgZdfYlnQY09ecgjB63vAkTHM(final PluginCatalogController pluginCatalogController, String str, String str2, String str3, PluginRepositoryEntity pluginRepositoryEntity, final long j) {
        Pair<GitPluginRepository.IndexResult, String> pairLoadGitIndex = pluginCatalogController.loadGitIndex(str, str2, str3);
        final GitPluginRepository.IndexResult indexResultComponent1 = pairLoadGitIndex.component1();
        final String strComponent2 = pairLoadGitIndex.component2();
        if (indexResultComponent1 instanceof GitPluginRepository.IndexResult.Loaded) {
            Pair<List<CatalogEntryEntity>, List<PluginMetadataEntity>> pairBuildGitEntries = pluginCatalogController.buildGitEntries(pluginRepositoryEntity, ((GitPluginRepository.IndexResult.Loaded) indexResultComponent1).getIndex());
            final List<CatalogEntryEntity> listComponent1 = pairBuildGitEntries.component1();
            final List<PluginMetadataEntity> listComponent2 = pairBuildGitEntries.component2();
            INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.m3074$r8$lambda$r4SZuCOK8JXNoLZSB4w0Wg45yc(this.f$0, j, strComponent2, indexResultComponent1);
                }
            });
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.finishSync(j, listComponent1, listComponent2, ((GitPluginRepository.IndexResult.Loaded) indexResultComponent1).getIndex());
                }
            });
            return;
        }
        if (!Intrinsics.areEqual(indexResultComponent1, GitPluginRepository.IndexResult.NotModified.INSTANCE)) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.finishSync$default(this.f$0, j, null, null, null, 12, null);
                }
            });
        } else {
            INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda29
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.m3064$r8$lambda$L69dGZbnOGcrjsq3uYyS6n2N7I(this.f$0, j);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$r4SZuCOK8JXNoLZSB4w0Wg4-5yc, reason: not valid java name */
    public static void m3074$r8$lambda$r4SZuCOK8JXNoLZSB4w0Wg45yc(PluginCatalogController pluginCatalogController, long j, String str, GitPluginRepository.IndexResult indexResult) {
        if (pluginCatalogController.getDao().getRepository(j) != null) {
            pluginCatalogController.saveEtag(j, str, ((GitPluginRepository.IndexResult.Loaded) indexResult).getEtag());
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$L69-dGZbnOGcrjsq3uYyS6n2N7I, reason: not valid java name */
    public static void m3064$r8$lambda$L69dGZbnOGcrjsq3uYyS6n2N7I(final PluginCatalogController pluginCatalogController, final long j) {
        pluginCatalogController.getDao().updateSyncState(j, System.currentTimeMillis(), pluginCatalogController.getVisiblePlugins(j).size());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$f53Lb9WOy4EixPOyf69wLvvAMSE(this.f$0, j);
            }
        });
    }

    public static void $r8$lambda$f53Lb9WOy4EixPOyf69wLvvAMSE(PluginCatalogController pluginCatalogController, long j) {
        pluginCatalogController.syncingRepositories.remove(Long.valueOf(j));
        pluginCatalogController.postUpdate(j);
        pluginCatalogController.postUpdate(0L);
        pluginCatalogController.completeSync(j, 0);
    }

    private final Pair<GitPluginRepository.IndexResult, String> loadGitIndex(String url, String etagUrl, String etag) {
        GitPluginRepository.IndexResult indexResult = GitPluginRepository.IndexResult.Failed.INSTANCE;
        Iterator<String> it = GitPluginRepository.INSTANCE.getIndexUrls(url).iterator();
        while (true) {
            if (it.hasNext()) {
                String next = it.next();
                GitPluginRepository.IndexResult indexResultLoadIndex = GitPluginRepository.INSTANCE.loadIndex(next, Intrinsics.areEqual(next, etagUrl) ? etag : null);
                if (!Intrinsics.areEqual(indexResultLoadIndex, GitPluginRepository.IndexResult.Failed.INSTANCE)) {
                    return TuplesKt.to(indexResultLoadIndex, next);
                }
                indexResult = indexResultLoadIndex;
            } else {
                return TuplesKt.to(indexResult, null);
            }
        }
    }

    private final Pair<List<CatalogEntryEntity>, List<PluginMetadataEntity>> buildGitEntries(PluginRepositoryEntity repository, GitPluginRepository.Index index) {
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (GitPluginRepository.IndexPlugin indexPlugin : index.getPlugins()) {
            int iHashCode = indexPlugin.getId().hashCode();
            while (!hashSet.add(Integer.valueOf(iHashCode))) {
                iHashCode++;
            }
            long jDocumentId = GitPluginRepository.INSTANCE.documentId(repository.getRepositoryId(), indexPlugin.getId(), indexPlugin.getSha256());
            Integer updatedAt = indexPlugin.getUpdatedAt();
            int iIntValue = updatedAt != null ? updatedAt.intValue() : iCurrentTimeMillis;
            arrayList.add(new CatalogEntryEntity(repository.getRepositoryId(), iHashCode, repository.getSyncedAt() == 0 ? iIntValue : iCurrentTimeMillis, jDocumentId, indexPlugin.getFileName(), indexPlugin.getSize(), null, null, 0, iIntValue, indexPlugin.getFileUrl(), indexPlugin.getSha256(), 256, null));
            arrayList2.add(new PluginMetadataEntity(jDocumentId, indexPlugin.getId(), indexPlugin.getName(), indexPlugin.getAuthor(), indexPlugin.getDescription(), indexPlugin.getVersion(), indexPlugin.getIcon(), indexPlugin.getAppVersion(), indexPlugin.getSdkVersion(), indexPlugin.getRequirements(), indexPlugin.getCategories(), null, System.currentTimeMillis(), null));
        }
        return TuplesKt.to(arrayList, arrayList2);
    }

    private final long nextGitRepositoryId() {
        Long minRepositoryId = getDao().getMinRepositoryId();
        long jLongValue = minRepositoryId != null ? minRepositoryId.longValue() : 0L;
        Companion companion = INSTANCE;
        long jMin = Math.min(jLongValue, Math.min(companion.getPreferences().getLong(KEY_LAST_GIT_REPOSITORY_ID, 0L), 0L)) - 1;
        SharedPreferences.Editor editorEdit = companion.getPreferences().edit();
        editorEdit.putLong(KEY_LAST_GIT_REPOSITORY_ID, jMin);
        editorEdit.apply();
        return jMin;
    }

    private final void saveEtag(long repositoryId, String source, String etag) {
        Companion companion = INSTANCE;
        SharedPreferences.Editor editorEdit = companion.getPreferences().edit();
        if (source == null || etag == null) {
            editorEdit.remove(companion.etagKey(repositoryId));
            editorEdit.remove(companion.etagUrlKey(repositoryId));
        } else {
            editorEdit.putString(companion.etagKey(repositoryId), etag);
            editorEdit.putString(companion.etagUrlKey(repositoryId), source);
        }
        editorEdit.apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resolveInputPeer(final PluginRepositoryEntity repository, TLRPC.Chat cachedChat, final Function1<? super TLRPC.InputPeer, Unit> callback) {
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(repository.getRepositoryId()));
        if (chat != null) {
            cachedChat = chat;
        } else if (cachedChat != null) {
            getMessagesController().putChat(cachedChat, true);
        } else {
            cachedChat = null;
        }
        if (cachedChat != null && cachedChat.access_hash != 0) {
            callback.invoke(MessagesController.getInputPeer(cachedChat));
            return;
        }
        String username = repository.getUsername();
        if (username == null || username.length() == 0) {
            callback.invoke(null);
        } else {
            getMessagesController().getUserNameResolver().resolve(username, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    PluginCatalogController.m3071$r8$lambda$fYoI7m8o1aakDxSlCENTVcjm80(repository, this, callback, (Long) obj);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$fYoI7m8o1aakDxSlCE-NTVcjm80, reason: not valid java name */
    public static void m3071$r8$lambda$fYoI7m8o1aakDxSlCENTVcjm80(PluginRepositoryEntity pluginRepositoryEntity, PluginCatalogController pluginCatalogController, Function1 function1, Long l) {
        TLRPC.Chat chat = (l != null && l.longValue() == (-pluginRepositoryEntity.getRepositoryId())) ? pluginCatalogController.getMessagesController().getChat(Long.valueOf(pluginRepositoryEntity.getRepositoryId())) : null;
        function1.invoke(chat != null ? MessagesController.getInputPeer(chat) : null);
    }

    private final void loadHistoryPage(final long repositoryId, final TLRPC.InputPeer peer, int offsetId, final int page, final ArrayList<CatalogEntryEntity> collected) {
        TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
        tL_messages_search.peer = peer;
        tL_messages_search.f1032q = _UrlKt.FRAGMENT_ENCODE_SET;
        tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterDocument();
        tL_messages_search.offset_id = offsetId;
        tL_messages_search.limit = 100;
        ConnectionsManager.getInstance(this.account).sendRequest(tL_messages_search, new RequestDelegate() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda60
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                PluginCatalogController.$r8$lambda$5lRpbzgJ24N4q84mydja1jiM7DM(repositoryId, this, collected, page, peer, tLObject, tL_error);
            }
        });
    }

    public static void $r8$lambda$5lRpbzgJ24N4q84mydja1jiM7DM(final long j, final PluginCatalogController pluginCatalogController, final ArrayList arrayList, final int i, final TLRPC.InputPeer inputPeer, final TLObject tLObject, TLRPC.TL_error tL_error) {
        if (!(tLObject instanceof TLRPC.messages_Messages)) {
            FileLog.m1038e("PluginCatalog: history request failed for " + j + ": " + (tL_error != null ? tL_error.text : null));
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.finishSync$default(this.f$0, j, null, null, null, 12, null);
                }
            });
            return;
        }
        INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                PluginCatalogController.m3079$r8$lambda$zWymV6icvOSd7WpYYg5pNFvEg(tLObject, pluginCatalogController, j, arrayList, i, inputPeer);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$zW-ymV-6icvOSd7WpYYg5pNFvEg, reason: not valid java name */
    public static void m3079$r8$lambda$zWymV6icvOSd7WpYYg5pNFvEg(final TLObject tLObject, final PluginCatalogController pluginCatalogController, final long j, final ArrayList arrayList, final int i, final TLRPC.InputPeer inputPeer) throws Throwable {
        TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
        ArrayList<TLRPC.Message> arrayList2 = messages_messages.messages;
        int size = arrayList2.size();
        boolean z = false;
        int i2 = 0;
        while (i2 < size) {
            TLRPC.Message message = arrayList2.get(i2);
            i2++;
            CatalogEntryEntity catalogEntry = pluginCatalogController.toCatalogEntry(j, message);
            if (catalogEntry != null) {
                arrayList.add(catalogEntry);
            }
        }
        TLRPC.Message message2 = (TLRPC.Message) CollectionsKt.lastOrNull((List) messages_messages.messages);
        final int i3 = message2 != null ? message2.id : 0;
        if (messages_messages.messages.size() >= 100 && i3 != 0 && i + 1 < 20) {
            z = true;
        }
        final boolean z2 = z;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$8dH8LxR5zRkgON4hth66JGMqXXQ(this.f$0, tLObject, z2, j, inputPeer, i3, i, arrayList);
            }
        });
    }

    public static void $r8$lambda$8dH8LxR5zRkgON4hth66JGMqXXQ(PluginCatalogController pluginCatalogController, TLObject tLObject, boolean z, long j, TLRPC.InputPeer inputPeer, int i, int i2, ArrayList arrayList) {
        TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
        pluginCatalogController.getMessagesController().putChats(messages_messages.chats, false);
        pluginCatalogController.getMessagesController().putUsers(messages_messages.users, false);
        if (z) {
            pluginCatalogController.loadHistoryPage(j, inputPeer, i, i2 + 1, arrayList);
        } else {
            finishSync$default(pluginCatalogController, j, arrayList, null, null, 12, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void finishSync$default(PluginCatalogController pluginCatalogController, long j, List list, List list2, GitPluginRepository.Index index, int i, Object obj) {
        if ((i & 4) != 0) {
            list2 = CollectionsKt.emptyList();
        }
        List list3 = list2;
        if ((i & 8) != 0) {
            index = null;
        }
        pluginCatalogController.finishSync(j, list, list3, index);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void finishSync(final long repositoryId, final List<CatalogEntryEntity> entries, final List<PluginMetadataEntity> metadata, final GitPluginRepository.Index index) {
        if (entries == null) {
            this.syncingRepositories.remove(Long.valueOf(repositoryId));
            postUpdate(repositoryId);
            completeSync(repositoryId, null);
            if (this.metadataRequests.remove(Long.valueOf(repositoryId))) {
                loadMissingMetadata(repositoryId);
                return;
            }
            return;
        }
        final int topMessage = getTopMessage(repositoryId);
        INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.m3076$r8$lambda$xGQx38mJQdBeTv7N9xfN80hn5Y(this.f$0, repositoryId, entries, metadata, index, topMessage);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x004f A[SYNTHETIC] */
    /* JADX INFO: renamed from: $r8$lambda$xGQx38mJQdBe-Tv7N9xfN80hn5Y, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m3076$r8$lambda$xGQx38mJQdBeTv7N9xfN80hn5Y(final PluginCatalogController pluginCatalogController, final long j, List list, List list2, GitPluginRepository.Index index, int i) {
        final Ref.IntRef intRef = new Ref.IntRef();
        PluginRepositoryEntity repository = pluginCatalogController.getDao().getRepository(j);
        if (repository != null) {
            List<CatalogEntryVersion> entryVersions = pluginCatalogController.getDao().getEntryVersions(j);
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(entryVersions, 10)), 16));
            for (Object obj : entryVersions) {
                linkedHashMap.put(Integer.valueOf(((CatalogEntryVersion) obj).getEntryId()), obj);
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                CatalogEntryEntity catalogEntryEntity = (CatalogEntryEntity) it.next();
                CatalogEntryVersion catalogEntryVersion = (CatalogEntryVersion) linkedHashMap.get(Integer.valueOf(catalogEntryEntity.getEntryId()));
                if (catalogEntryVersion != null) {
                    catalogEntryEntity.setDate(catalogEntryVersion.getDate());
                }
                if (catalogEntryVersion == null) {
                    if (!repository.isGit()) {
                        catalogEntryEntity.setUpdatedAt(catalogEntryEntity.getDate());
                    }
                    if (((long) catalogEntryEntity.getDate()) * 1000 > repository.getSyncedAt()) {
                        if (!INSTANCE.isSupported(catalogEntryEntity.getFileName())) {
                            intRef.element++;
                        }
                    }
                } else if (catalogEntryVersion.getDocumentId() == catalogEntryEntity.getDocumentId()) {
                    catalogEntryEntity.setUpdatedAt(catalogEntryVersion.getUpdatedAt());
                } else if (!INSTANCE.isSupported(catalogEntryEntity.getFileName())) {
                }
            }
            pluginCatalogController.getDao().replaceEntries(j, list, list2);
            if (index != null) {
                pluginCatalogController.getDao().updateGitInfo(j, index.getName(), index.getHomepage());
            }
            pluginCatalogController.getDao().updateSyncState(j, System.currentTimeMillis(), pluginCatalogController.getVisiblePlugins(j).size());
            if (!repository.isGit()) {
                Companion companion = INSTANCE;
                SharedPreferences.Editor editorEdit = companion.getPreferences().edit();
                editorEdit.putInt(companion.syncedTopMessageKey(j), i);
                editorEdit.apply();
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.m3078$r8$lambda$zA7DTHf74it8RyiS7TJKQRMdY(this.f$0, j, intRef);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$zA-7DTHf74it8-RyiS7TJKQRMdY, reason: not valid java name */
    public static void m3078$r8$lambda$zA7DTHf74it8RyiS7TJKQRMdY(PluginCatalogController pluginCatalogController, long j, Ref.IntRef intRef) {
        pluginCatalogController.syncingRepositories.remove(Long.valueOf(j));
        pluginCatalogController.postUpdate(j);
        pluginCatalogController.postUpdate(0L);
        pluginCatalogController.completeSync(j, Integer.valueOf(intRef.element));
        if (pluginCatalogController.metadataRequests.remove(Long.valueOf(j))) {
            pluginCatalogController.loadMissingMetadata(j);
        }
    }

    private final void completeSync(long repositoryId, Integer changed) {
        if (this.pendingForcedSyncs.remove(Long.valueOf(repositoryId))) {
            syncRepository$default(this, repositoryId, true, false, null, 8, null);
            return;
        }
        ArrayList<Function1<Integer, Unit>> arrayListRemove = this.syncCallbacks.remove(Long.valueOf(repositoryId));
        if (arrayListRemove != null) {
            int size = arrayListRemove.size();
            int i = 0;
            while (i < size) {
                Function1<Integer, Unit> function1 = arrayListRemove.get(i);
                i++;
                function1.invoke(changed);
            }
        }
    }

    private final int getTopMessage(long repositoryId) {
        TLRPC.Dialog dialog;
        if (PluginRepositoryEntity.INSTANCE.isGitId(repositoryId) || (dialog = getMessagesController().dialogs_dict.get(-repositoryId)) == null) {
            return 0;
        }
        return dialog.top_message;
    }

    public final void loadMissingMetadata(final long repositoryId) {
        if (ExteraConfig.getPluginsEngine()) {
            this.metadataUnavailable = false;
            INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda58
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.$r8$lambda$jGJelnY6143gwKEH6QE65dPaGwk(this.f$0, repositoryId);
                }
            });
        }
    }

    public static void $r8$lambda$jGJelnY6143gwKEH6QE65dPaGwk(final PluginCatalogController pluginCatalogController, long j) {
        long j2;
        MetadataJob metadataJob;
        PluginRepositoryEntity repository = pluginCatalogController.getDao().getRepository(j);
        if (repository == null || repository.isGit()) {
            return;
        }
        HashSet hashSet = CollectionsKt.toHashSet(pluginCatalogController.getDao().getDocumentIdsWithError(ERROR_TOO_LARGE));
        List<CatalogEntryEntity> entriesWithoutMetadata = pluginCatalogController.getDao().getEntriesWithoutMetadata(j, PythonPluginsEngine.INSTANCE.getSDK_VERSION(), ERROR_TOO_LARGE);
        final ArrayList arrayList = new ArrayList();
        for (CatalogEntryEntity catalogEntryEntity : entriesWithoutMetadata) {
            Long metadataSizeLimit = INSTANCE.getMetadataSizeLimit(catalogEntryEntity.getFileName());
            if (metadataSizeLimit == null || (catalogEntryEntity.getSize() > metadataSizeLimit.longValue() && hashSet.contains(Long.valueOf(catalogEntryEntity.getDocumentId())))) {
                j2 = j;
                metadataJob = null;
            } else {
                j2 = j;
                metadataJob = new MetadataJob(j2, catalogEntryEntity, metadataSizeLimit.longValue());
            }
            if (metadataJob != null) {
                arrayList.add(metadataJob);
            }
            j = j2;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.m3073$r8$lambda$q2nINw0PcVulrw4aSPirdKRPm0(arrayList, pluginCatalogController);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$q2nINw0PcVulr-w4aSPirdKRPm0, reason: not valid java name */
    public static void m3073$r8$lambda$q2nINw0PcVulrw4aSPirdKRPm0(List list, PluginCatalogController pluginCatalogController) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MetadataJob metadataJob = (MetadataJob) it.next();
            if (pluginCatalogController.queuedDocuments.add(Long.valueOf(metadataJob.getEntry().getDocumentId()))) {
                pluginCatalogController.metadataQueue.addLast(metadataJob);
            }
        }
        pluginCatalogController.pumpMetadataQueue();
    }

    private final void pumpMetadataQueue() {
        final MetadataJob metadataJobRemoveFirstOrNull;
        while (this.activeMetadataJobs < 3 && (metadataJobRemoveFirstOrNull = this.metadataQueue.removeFirstOrNull()) != null) {
            if (metadataJobRemoveFirstOrNull.getEntry().getSize() > metadataJobRemoveFirstOrNull.getMaxSize()) {
                storeMetadata(metadataJobRemoveFirstOrNull, failedMetadata(metadataJobRemoveFirstOrNull.getEntry().getDocumentId(), ERROR_TOO_LARGE));
            } else {
                MessageObject messageObjectCreateMessageObject = createMessageObject(metadataJobRemoveFirstOrNull.getRepositoryId(), metadataJobRemoveFirstOrNull.getEntry());
                if ((messageObjectCreateMessageObject != null ? messageObjectCreateMessageObject.getDocument() : null) == null) {
                    storeMetadata(metadataJobRemoveFirstOrNull, failedMetadata(metadataJobRemoveFirstOrNull.getEntry().getDocumentId(), ERROR_INVALID_MESSAGE));
                } else {
                    this.activeMetadataJobs++;
                    downloadDocument(messageObjectCreateMessageObject, 0, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda14
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return PluginCatalogController.$r8$lambda$leF5SHHu42WH0jIjmuLkumMw1pw(this.f$0, metadataJobRemoveFirstOrNull, (File) obj);
                        }
                    });
                }
            }
        }
    }

    public static Unit $r8$lambda$leF5SHHu42WH0jIjmuLkumMw1pw(PluginCatalogController pluginCatalogController, MetadataJob metadataJob, File file) {
        if (file == null) {
            pluginCatalogController.activeMetadataJobs--;
            pluginCatalogController.queuedDocuments.remove(Long.valueOf(metadataJob.getEntry().getDocumentId()));
            pluginCatalogController.pumpMetadataQueue();
        } else {
            pluginCatalogController.parseMetadata(metadataJob, file);
        }
        return Unit.INSTANCE;
    }

    private final void parseMetadata(final MetadataJob job, File file) {
        final String absolutePath = file.getAbsolutePath();
        PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.m3057$r8$lambda$0k0x5VRY0kVjARBsSVfEgwUoRI(job, absolutePath, this);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$0k0x5VRY0kVjARBsSVfEgwU-oRI, reason: not valid java name */
    public static void m3057$r8$lambda$0k0x5VRY0kVjARBsSVfEgwUoRI(final MetadataJob metadataJob, String str, final PluginCatalogController pluginCatalogController) {
        final PluginMetadataEntity pluginMetadataEntityFailedMetadata;
        String str2;
        String str3;
        PluginsController.PluginsEngine pluginEngine = PluginsController.INSTANCE.getPluginEngine(INSTANCE.probeFile(metadataJob.getEntry().getFileName()));
        Map<String, String> pluginMetadata = null;
        if (pluginEngine != null) {
            try {
                pluginMetadata = pluginEngine.parsePluginMetadata(str);
            } catch (Throwable th) {
                FileLog.m1039e("PluginCatalog: failed to parse " + metadataJob.getEntry().getFileName(), th);
            }
        }
        if (pluginEngine == null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda42
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.$r8$lambda$DLdkxsMo0a4I9NhWNz2JnvK13eE(this.f$0, metadataJob);
                }
            });
            return;
        }
        if (pluginMetadata != null && pluginMetadata.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda43
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.$r8$lambda$_mUB5FQE6dKRlkfjFrJoC78UJnw(this.f$0, metadataJob);
                }
            });
            return;
        }
        if (pluginMetadata == null || (str2 = pluginMetadata.get("id")) == null || str2.length() == 0 || (str3 = pluginMetadata.get("name")) == null || str3.length() == 0) {
            pluginMetadataEntityFailedMetadata = pluginCatalogController.failedMetadata(metadataJob.getEntry().getDocumentId(), ERROR_INVALID_METADATA);
        } else {
            pluginMetadataEntityFailedMetadata = new PluginMetadataEntity(metadataJob.getEntry().getDocumentId(), pluginMetadata.get("id"), pluginMetadata.get("name"), pluginMetadata.get("author"), pluginMetadata.get(MediaTrack.ROLE_DESCRIPTION), pluginMetadata.get("version"), pluginMetadata.get("icon"), pluginMetadata.get("app_version"), pluginMetadata.get("sdk_version"), pluginMetadata.get(Common.ASSET_REQUIREMENTS), pluginMetadata.get("category"), null, System.currentTimeMillis(), PythonPluginsEngine.INSTANCE.getSDK_VERSION());
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$Aw01MRiBjaXb4DAbF7vOnpw9Lbc(this.f$0, metadataJob, pluginMetadataEntityFailedMetadata);
            }
        });
    }

    public static void $r8$lambda$DLdkxsMo0a4I9NhWNz2JnvK13eE(PluginCatalogController pluginCatalogController, MetadataJob metadataJob) {
        pluginCatalogController.activeMetadataJobs--;
        pluginCatalogController.queuedDocuments.remove(Long.valueOf(metadataJob.getEntry().getDocumentId()));
        pluginCatalogController.pumpMetadataQueue();
    }

    public static void $r8$lambda$_mUB5FQE6dKRlkfjFrJoC78UJnw(PluginCatalogController pluginCatalogController, MetadataJob metadataJob) {
        pluginCatalogController.activeMetadataJobs--;
        pluginCatalogController.metadataUnavailable = true;
        pluginCatalogController.metadataQueue.clear();
        pluginCatalogController.queuedDocuments.clear();
        pluginCatalogController.postUpdate(metadataJob.getRepositoryId());
    }

    public static void $r8$lambda$Aw01MRiBjaXb4DAbF7vOnpw9Lbc(PluginCatalogController pluginCatalogController, MetadataJob metadataJob, PluginMetadataEntity pluginMetadataEntity) {
        pluginCatalogController.activeMetadataJobs--;
        pluginCatalogController.storeMetadata(metadataJob, pluginMetadataEntity);
    }

    private final void storeMetadata(final MetadataJob job, final PluginMetadataEntity metadata) {
        INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.m3077$r8$lambda$zihhfjFfPDRnrK23zbFJM1iXo(this.f$0, metadata, job);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$z-ihhfjFfPDRnrK23-zbFJM1iXo, reason: not valid java name */
    public static void m3077$r8$lambda$zihhfjFfPDRnrK23zbFJM1iXo(final PluginCatalogController pluginCatalogController, PluginMetadataEntity pluginMetadataEntity, final MetadataJob metadataJob) {
        pluginCatalogController.getDao().upsertMetadata(pluginMetadataEntity);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$qgF7lw9itSbSvmCP0Eo1Yuc5kJE(this.f$0, metadataJob);
            }
        });
    }

    public static void $r8$lambda$qgF7lw9itSbSvmCP0Eo1Yuc5kJE(PluginCatalogController pluginCatalogController, MetadataJob metadataJob) {
        pluginCatalogController.queuedDocuments.remove(Long.valueOf(metadataJob.getEntry().getDocumentId()));
        pluginCatalogController.postUpdate(metadataJob.getRepositoryId());
        pluginCatalogController.pumpMetadataQueue();
    }

    public final void downloadPlugin(final CatalogPlugin plugin, final Function2<? super File, ? super MessageObject, Unit> callback) {
        INSTANCE.getCatalogQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.m3072$r8$lambda$mtjxFs2DzsxudmR5YFRrpvpZkM(this.f$0, plugin, callback);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$mtjxFs2Dzsx-udmR5YFRrpvpZkM, reason: not valid java name */
    public static void m3072$r8$lambda$mtjxFs2DzsxudmR5YFRrpvpZkM(final PluginCatalogController pluginCatalogController, final CatalogPlugin catalogPlugin, final Function2 function2) {
        final CatalogEntryEntity entry = pluginCatalogController.getDao().getEntry(catalogPlugin.getRepositoryId(), catalogPlugin.getEntryId());
        String fileUrl = entry != null ? entry.getFileUrl() : null;
        String sha256 = entry != null ? entry.getSha256() : null;
        if (fileUrl != null && sha256 != null) {
            pluginCatalogController.downloadGitFile(entry, fileUrl, sha256, catalogPlugin.getMetadata(), new Function1() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda48
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PluginCatalogController.$r8$lambda$LrAPKsAYLwN2KyQIB352t9nW7OY(function2, (File) obj);
                }
            });
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda49
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.$r8$lambda$Zf15lo2BOFuBnov1Ac7Zehra8qY(entry, function2, pluginCatalogController, catalogPlugin);
                }
            });
        }
    }

    public static Unit $r8$lambda$LrAPKsAYLwN2KyQIB352t9nW7OY(Function2 function2, File file) {
        function2.invoke(file, null);
        return Unit.INSTANCE;
    }

    public static void $r8$lambda$Zf15lo2BOFuBnov1Ac7Zehra8qY(CatalogEntryEntity catalogEntryEntity, final Function2 function2, PluginCatalogController pluginCatalogController, CatalogPlugin catalogPlugin) {
        final MessageObject messageObjectCreateMessageObject = catalogEntryEntity != null ? pluginCatalogController.createMessageObject(catalogPlugin.getRepositoryId(), catalogEntryEntity) : null;
        if ((messageObjectCreateMessageObject != null ? messageObjectCreateMessageObject.getDocument() : null) == null) {
            function2.invoke(null, null);
        } else {
            pluginCatalogController.downloadDocument(messageObjectCreateMessageObject, 3, new Function1() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PluginCatalogController.$r8$lambda$cDQIZUJzgex75UqZPnaeAsOr6Hc(function2, messageObjectCreateMessageObject, (File) obj);
                }
            });
        }
    }

    public static Unit $r8$lambda$cDQIZUJzgex75UqZPnaeAsOr6Hc(Function2 function2, MessageObject messageObject, File file) {
        function2.invoke(file, messageObject);
        return Unit.INSTANCE;
    }

    private final void downloadGitFile(final CatalogEntryEntity entry, final String fileUrl, final String sha256, final PluginMetadataEntity metadata, final Function1<? super File, Unit> callback) {
        INSTANCE.getNetworkExecutor().execute(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.m3058$r8$lambda$1m4hZrojjY5ba2i78PPFa5_pa8(fileUrl, entry, sha256, metadata, callback);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$1m4hZrojj-Y5ba2i78PPFa5_pa8, reason: not valid java name */
    public static void m3058$r8$lambda$1m4hZrojjY5ba2i78PPFa5_pa8(String str, final CatalogEntryEntity catalogEntryEntity, String str2, final PluginMetadataEntity pluginMetadataEntity, final Function1 function1) {
        final File fileDownloadFile = GitPluginRepository.INSTANCE.downloadFile(str, catalogEntryEntity.getFileName(), str2, catalogEntryEntity.getSize());
        if (fileDownloadFile == null || pluginMetadataEntity == null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    function1.invoke(null);
                }
            });
        } else {
            PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    PluginCatalogController.$r8$lambda$kd0AyCbzfTOgaaZrqgQXNkyYVPE(fileDownloadFile, catalogEntryEntity, pluginMetadataEntity, function1);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void $r8$lambda$kd0AyCbzfTOgaaZrqgQXNkyYVPE(final File file, CatalogEntryEntity catalogEntryEntity, PluginMetadataEntity pluginMetadataEntity, final Function1 function1) {
        final boolean z;
        String str;
        PluginsController.PluginsEngine pluginEngine;
        String string = null;
        try {
            pluginEngine = PluginsController.INSTANCE.getPluginEngine(file);
        } catch (Throwable th) {
            FileLog.m1039e("PluginCatalog: failed to parse " + catalogEntryEntity.getFileName(), th);
        }
        Map<String, String> pluginMetadata = pluginEngine != null ? pluginEngine.parsePluginMetadata(file.getAbsolutePath()) : null;
        if (Intrinsics.areEqual(pluginMetadata != null ? pluginMetadata.get("id") : null, pluginMetadataEntity.getPluginId())) {
            if (pluginMetadata != null && (str = pluginMetadata.get("version")) != null) {
                string = StringsKt.trim((CharSequence) str).toString();
            }
            if (Intrinsics.areEqual(string, pluginMetadataEntity.getVersion())) {
                z = true;
            }
        } else {
            z = false;
        }
        if (!z) {
            FileLog.m1038e("PluginCatalog: " + catalogEntryEntity.getFileName() + " does not match its index entry");
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.catalog.PluginCatalogController$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                PluginCatalogController.$r8$lambda$uWmwsCQRqQOcTyWZ_FBhjRgtevY(function1, file, z);
            }
        });
    }

    public static void $r8$lambda$uWmwsCQRqQOcTyWZ_FBhjRgtevY(Function1 function1, File file, boolean z) {
        if (!z) {
            file = null;
        }
        function1.invoke(file);
    }

    private final void downloadDocument(MessageObject messageObject, int priority, Function1<? super File, Unit> callback) {
        TLRPC.Document document = messageObject.getDocument();
        File fileFindDownloadedFile = findDownloadedFile(document);
        if (fileFindDownloadedFile != null) {
            callback.invoke(fileFindDownloadedFile);
            return;
        }
        String attachFileName = FileLoader.getAttachFileName(document);
        PendingDownload pendingDownload = this.downloads.get(attachFileName);
        if (pendingDownload != null) {
            pendingDownload.getCallbacks().add(callback);
            if (priority != 0) {
                FileLoader.getInstance(this.account).loadFile(document, messageObject, priority, 1);
                return;
            }
            return;
        }
        this.downloads.put(attachFileName, new PendingDownload(document, CollectionsKt.arrayListOf(callback)));
        if (!this.observingDownloads) {
            this.observingDownloads = true;
            NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.fileLoadFailed);
        }
        FileLoader.getInstance(this.account).loadFile(document, messageObject, priority, 1);
    }

    private final File findDownloadedFile(TLRPC.Document document) {
        FileLoader fileLoader = FileLoader.getInstance(this.account);
        File pathToAttach = fileLoader.getPathToAttach(document, true);
        if (!pathToAttach.exists()) {
            pathToAttach = null;
        }
        if (pathToAttach != null) {
            return pathToAttach;
        }
        File pathToAttach2 = fileLoader.getPathToAttach(document, false);
        if (pathToAttach2.exists()) {
            return pathToAttach2;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x003e  */
    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void didReceivedNotification(int id, int account, Object... args) {
        PendingDownload pendingDownloadRemove;
        int i = NotificationCenter.fileLoaded;
        if (id == i || id == NotificationCenter.fileLoadFailed) {
            HashMap<String, PendingDownload> map = this.downloads;
            Object obj = args[0];
            String str = obj instanceof String ? (String) obj : null;
            if (str == null || (pendingDownloadRemove = map.remove(str)) == null) {
                return;
            }
            if (id == i) {
                Object orNull = ArraysKt.getOrNull(args, 1);
                File file = orNull instanceof File ? (File) orNull : null;
                if (file == null) {
                    fileFindDownloadedFile = findDownloadedFile(pendingDownloadRemove.getDocument());
                } else {
                    fileFindDownloadedFile = file.exists() ? file : null;
                    if (fileFindDownloadedFile == null) {
                    }
                }
            }
            if (this.downloads.isEmpty() && this.observingDownloads) {
                this.observingDownloads = false;
                NotificationCenter.getInstance(this.account).removeObserver(this, i);
                NotificationCenter.getInstance(this.account).removeObserver(this, NotificationCenter.fileLoadFailed);
            }
            Iterator<Function1<File, Unit>> it = pendingDownloadRemove.getCallbacks().iterator();
            while (it.hasNext()) {
                it.next().invoke(fileFindDownloadedFile);
            }
        }
    }

    private final MessageObject createMessageObject(long repositoryId, CatalogEntryEntity entry) {
        byte[] message = entry.getMessage();
        if (message == null) {
            return null;
        }
        SerializedData serializedData = new SerializedData(message);
        try {
            TLRPC.Message messageTLdeserialize = TLRPC.Message.TLdeserialize(serializedData, serializedData.readInt32(false), false);
            if (messageTLdeserialize == null) {
                return null;
            }
            messageTLdeserialize.dialog_id = -repositoryId;
            return new MessageObject(this.account, messageTLdeserialize, false, false);
        } catch (Exception e) {
            FileLog.m1040e(e);
            return null;
        } finally {
            serializedData.cleanup();
        }
        serializedData.cleanup();
    }

    private final CatalogEntryEntity toCatalogEntry(long repositoryId, TLRPC.Message message) throws Throwable {
        TLRPC.Document document;
        String documentFileName;
        SerializedData serializedData;
        TLRPC.MessageMedia messageMedia = message.media;
        if (messageMedia == null || (document = messageMedia.document) == null || (documentFileName = FileLoader.getDocumentFileName(document)) == null) {
            return null;
        }
        SerializedData serializedData2 = new SerializedData(message.getObjectSize());
        try {
            message.serializeToStream(serializedData2);
            int i = message.id;
            int i2 = message.date;
            long j = document.id;
            long j2 = document.size;
            String str = message.message;
            String str2 = (str == null || str.length() <= 0) ? null : str;
            serializedData = serializedData2;
            try {
                try {
                    CatalogEntryEntity catalogEntryEntity = new CatalogEntryEntity(repositoryId, i, i2, j, documentFileName, j2, str2, serializedData2.toByteArray(), message.views, Math.max(message.date, message.edit_date), null, null, 3072, null);
                    serializedData.cleanup();
                    return catalogEntryEntity;
                } catch (Exception e) {
                    e = e;
                    FileLog.m1040e(e);
                    serializedData.cleanup();
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                serializedData.cleanup();
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            serializedData = serializedData2;
        } catch (Throwable th2) {
            th = th2;
            serializedData = serializedData2;
            serializedData.cleanup();
            throw th;
        }
    }

    private final PluginMetadataEntity failedMetadata(long documentId, String error) {
        return new PluginMetadataEntity(documentId, null, null, null, null, null, null, null, null, null, null, error, System.currentTimeMillis(), PythonPluginsEngine.INSTANCE.getSDK_VERSION());
    }

    private final void postUpdate(long repositoryId) {
        this.pendingUpdates.add(Long.valueOf(repositoryId));
        AndroidUtilities.cancelRunOnUIThread(this.postUpdatesRunnable);
        AndroidUtilities.runOnUIThread(this.postUpdatesRunnable, UPDATE_DEBOUNCE_MS);
    }

    @Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0007H\u0002J\u0010\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0007H\u0002J\u0010\u0010%\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0007H\u0002J\u0012\u00107\u001a\u0004\u0018\u0001042\u0006\u00108\u001a\u00020\u0005H\u0002J\u0010\u00109\u001a\u00020:2\u0006\u00108\u001a\u00020\u0005H\u0002J\u0017\u0010;\u001a\u0004\u0018\u00010\u00072\u0006\u00108\u001a\u00020\u0005H\u0002¢\u0006\u0002\u0010<J\u0010\u0010=\u001a\u00020>2\u0006\u00108\u001a\u00020\u0005H\u0002J\u0010\u0010H\u001a\u00020F2\u0006\u0010I\u001a\u00020\tH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R$\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\t8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001b\u0010&\u001a\u00020'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b(\u0010)R#\u0010,\u001a\n .*\u0004\u0018\u00010-0-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010+\u001a\u0004\b/\u00100R.\u00102\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010403j\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u000104`5X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010?\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010+\u001a\u0004\bA\u0010BR\u0018\u0010D\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010F0EX\u0082\u0004¢\u0006\u0004\n\u0002\u0010G¨\u0006J"}, d2 = {"Lcom/exteragram/messenger/plugins/catalog/PluginCatalogController$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TRUSTED_FOLDER_SLUG", _UrlKt.FRAGMENT_ENCODE_SET, "ALL_REPOSITORIES", _UrlKt.FRAGMENT_ENCODE_SET, "ADD_OK", _UrlKt.FRAGMENT_ENCODE_SET, "ADD_EXISTS", "ADD_FAILED", "ADD_UNSUPPORTED", "ERROR_TOO_LARGE", "ERROR_INVALID_MESSAGE", "ERROR_INVALID_METADATA", "PAGE_SIZE", "MAX_PAGES", "MAX_METADATA_JOBS", "MAX_METADATA_FILE_SIZE", "MAX_ARCHIVE_METADATA_FILE_SIZE", "SYNC_INTERVAL", "FOLDER_REFRESH_INTERVAL", "UPDATE_DEBOUNCE_MS", "KEY_FOLDER_RESOLVED_AT", "KEY_SORT_ORDER", "KEY_LAST_GIT_REPOSITORY_ID", "NETWORK_THREADS", "value", PluginCatalogController.KEY_SORT_ORDER, "getSortOrder", "()I", "setSortOrder", "(I)V", "syncedTopMessageKey", "repositoryId", "etagKey", "etagUrlKey", "catalogQueue", "Lorg/telegram/messenger/DispatchQueue;", "getCatalogQueue", "()Lorg/telegram/messenger/DispatchQueue;", "catalogQueue$delegate", "Lkotlin/Lazy;", "networkExecutor", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "getNetworkExecutor", "()Ljava/util/concurrent/ExecutorService;", "networkExecutor$delegate", "extensionEngines", "Ljava/util/HashMap;", "Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;", "Lkotlin/collections/HashMap;", "extensionEnginesKey", "getEngine", "fileName", "isSupported", _UrlKt.FRAGMENT_ENCODE_SET, "getMetadataSizeLimit", "(Ljava/lang/String;)Ljava/lang/Long;", "probeFile", "Ljava/io/File;", "preferences", "Landroid/content/SharedPreferences;", "getPreferences", "()Landroid/content/SharedPreferences;", "preferences$delegate", "instances", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/catalog/PluginCatalogController;", "[Lcom/exteragram/messenger/plugins/catalog/PluginCatalogController;", "getInstance", "account", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nPluginCatalogController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginCatalogController.kt\ncom/exteragram/messenger/plugins/catalog/PluginCatalogController$Companion\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,955:1\n41#2,12:956\n1#3:968\n*S KotlinDebug\n*F\n+ 1 PluginCatalogController.kt\ncom/exteragram/messenger/plugins/catalog/PluginCatalogController$Companion\n*L\n903#1:956,12\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final int getSortOrder() {
            return getPreferences().getInt(PluginCatalogController.KEY_SORT_ORDER, 0);
        }

        public final void setSortOrder(int i) {
            SharedPreferences.Editor editorEdit = getPreferences().edit();
            editorEdit.putInt(PluginCatalogController.KEY_SORT_ORDER, i);
            editorEdit.apply();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String syncedTopMessageKey(long repositoryId) {
            return "syncedTopMessage_" + repositoryId;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String etagKey(long repositoryId) {
            return "etag_" + repositoryId;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String etagUrlKey(long repositoryId) {
            return "etagUrl_" + repositoryId;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final DispatchQueue getCatalogQueue() {
            return (DispatchQueue) PluginCatalogController.catalogQueue$delegate.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ExecutorService getNetworkExecutor() {
            return (ExecutorService) PluginCatalogController.networkExecutor$delegate.getValue();
        }

        private final PluginsController.PluginsEngine getEngine(String fileName) {
            String lowerCase = StringsKt.substringAfterLast(fileName, '.', _UrlKt.FRAGMENT_ENCODE_SET).toLowerCase(Locale.ROOT);
            if (lowerCase.length() == 0) {
                return null;
            }
            PluginsController.Companion companion = PluginsController.INSTANCE;
            int iHashCode = companion.getEngines().keySet().hashCode();
            if (iHashCode != PluginCatalogController.extensionEnginesKey) {
                PluginCatalogController.extensionEngines.clear();
                PluginCatalogController.extensionEnginesKey = iHashCode;
            }
            if (!PluginCatalogController.extensionEngines.containsKey(lowerCase)) {
                PluginCatalogController.extensionEngines.put(lowerCase, companion.getPluginEngine(probeFile(fileName)));
            }
            return (PluginsController.PluginsEngine) PluginCatalogController.extensionEngines.get(lowerCase);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isSupported(String fileName) {
            return getEngine(fileName) != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Long getMetadataSizeLimit(String fileName) {
            PluginsController.PluginsEngine engine = getEngine(fileName);
            if (engine == null) {
                return null;
            }
            return engine instanceof PythonPluginsEngine ? Long.valueOf(PluginCatalogController.MAX_METADATA_FILE_SIZE) : Long.valueOf(PluginCatalogController.MAX_ARCHIVE_METADATA_FILE_SIZE);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final File probeFile(String fileName) {
            return new File("plugin." + StringsKt.substringAfterLast(fileName, '.', _UrlKt.FRAGMENT_ENCODE_SET).toLowerCase(Locale.ROOT));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final SharedPreferences getPreferences() {
            return (SharedPreferences) PluginCatalogController.preferences$delegate.getValue();
        }

        @JvmStatic
        public final PluginCatalogController getInstance(int account) {
            PluginCatalogController pluginCatalogController;
            PluginCatalogController pluginCatalogController2 = PluginCatalogController.instances[account];
            if (pluginCatalogController2 != null) {
                return pluginCatalogController2;
            }
            synchronized (PluginCatalogController.instances) {
                pluginCatalogController = PluginCatalogController.instances[account];
                if (pluginCatalogController == null) {
                    pluginCatalogController = new PluginCatalogController(account, null);
                    PluginCatalogController.instances[account] = pluginCatalogController;
                }
            }
            return pluginCatalogController;
        }
    }

    public static DispatchQueue $r8$lambda$cy_vJw1XTaRvo2i3PNnQ_57rG7g() {
        return new DispatchQueue("pluginCatalogQueue");
    }
}
