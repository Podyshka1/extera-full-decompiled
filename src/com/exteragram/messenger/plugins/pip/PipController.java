package com.exteragram.messenger.plugins.pip;

import com.chaquo.python.internal.Common;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.pip.PipController;
import com.exteragram.messenger.utils.network.ExteraHttpClient;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.url._UrlKt;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.mvel2.asm.signature.SignatureVisitor;
import org.simplifiles.SimpliFiles;
import org.simplifiles.archive.ArchiveExtractionOptions;
import org.simplifiles.archive.CancellationToken;
import org.simplifiles.archive.ExtractionTargetPolicy;
import org.simplifiles.archive.security.SecurityPolicy;
import org.simplifiles.files.OverwritePolicy;
import org.simplifiles.files.SimpliFile;
import org.telegram.messenger.FileLog;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\"\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001:\u0006wxyz{|B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010,\u001a\u00020\u00102\u0006\u0010-\u001a\u00020\u0010H\u0002J\b\u0010.\u001a\u00020/H\u0002J&\u00100\u001a \u0012\u0004\u0012\u00020\u0010\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0010020101H\u0002J.\u00103\u001a\u00020/2$\u00104\u001a \u0012\u0004\u0012\u00020\u0010\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0010020101H\u0002J\b\u00105\u001a\u00020/H\u0002J\u0006\u00106\u001a\u00020/J.\u00108\u001a\b\u0012\u0004\u0012\u00020\u0010092\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u0010092\u0006\u0010;\u001a\u00020\u00102\n\b\u0002\u0010<\u001a\u0004\u0018\u00010=JV\u0010>\u001a\u00020/2\u0006\u0010?\u001a\u00020\u00102\u0018\u0010@\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100A092\u0018\u0010B\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100A0\u00112\u0006\u0010;\u001a\u00020\u00102\b\u0010<\u001a\u0004\u0018\u00010=H\u0002J*\u0010C\u001a\u00020/2\u0006\u0010;\u001a\u00020\u00102\u0018\u0010D\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100A02H\u0002J\b\u0010E\u001a\u00020/H\u0002J\b\u0010F\u001a\u00020/H\u0002J\f\u0010G\u001a\b\u0012\u0004\u0012\u00020\u001002J\u000e\u0010H\u001a\u00020/2\u0006\u0010;\u001a\u00020\u0010J4\u0010I\u001a\u00020\u00102\u0006\u0010?\u001a\u00020\u00102\u0018\u0010@\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100A092\b\u0010<\u001a\u0004\u0018\u00010=H\u0002J\"\u0010J\u001a\u0004\u0018\u00010K2\u0006\u0010L\u001a\u00020\u00102\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020PH\u0002J\u0016\u0010Q\u001a\u0004\u0018\u00010\u0010*\u00020N2\u0006\u0010-\u001a\u00020\u0010H\u0002J\u001b\u0010R\u001a\u0004\u0018\u00010P*\u00020N2\u0006\u0010-\u001a\u00020\u0010H\u0002¢\u0006\u0002\u0010SJ\u0010\u0010T\u001a\u00020P2\u0006\u0010U\u001a\u00020\u0010H\u0002J\u0010\u0010V\u001a\u00020P2\u0006\u0010W\u001a\u00020\u0010H\u0002J\u001a\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020[2\b\u0010<\u001a\u0004\u0018\u00010=H\u0002J,\u0010\\\u001a\u0004\u0018\u00010\u00102\u0006\u0010?\u001a\u00020\u00102\u0018\u0010@\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100A09H\u0002J,\u0010]\u001a\u0004\u0018\u00010\u00102\u0006\u0010?\u001a\u00020\u00102\u0018\u0010@\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100A09H\u0002J\u0018\u0010^\u001a\u00020\t2\u0006\u0010?\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u0010H\u0002J\u0018\u0010_\u001a\u00020/2\u0006\u0010?\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u0010H\u0002J.\u0010`\u001a \u0012\u0004\u0012\u00020\u0010\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100A090A2\u0006\u0010a\u001a\u00020\u0010H\u0002J\"\u0010b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100A092\u0006\u0010c\u001a\u00020\u0010H\u0002J\u0016\u0010d\u001a\b\u0012\u0004\u0012\u00020\u0010092\u0006\u0010e\u001a\u00020\tH\u0002J\u0010\u0010f\u001a\u00020P2\u0006\u0010g\u001a\u00020\u0010H\u0002J\u001a\u0010h\u001a\u0004\u0018\u00010\t2\u0006\u0010?\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u0010H\u0002J*\u0010i\u001a\u00020P2\u0006\u0010L\u001a\u00020\u00102\u0018\u0010@\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100A09H\u0002J\u0010\u0010j\u001a\u00020P2\u0006\u0010k\u001a\u00020\u0010H\u0002J6\u0010l\u001a\b\u0012\u0004\u0012\u00020\u0010092\f\u0010m\u001a\b\u0012\u0004\u0012\u00020\u0010092\u0018\u0010@\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100A09H\u0002J\"\u0010n\u001a\u00020P2\u0018\u0010@\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100A09H\u0002J\u0010\u0010o\u001a\u00020P2\u0006\u0010L\u001a\u00020\u0010H\u0002J\u0018\u0010p\u001a\u00020P2\u0006\u0010L\u001a\u00020\u00102\u0006\u0010k\u001a\u00020\u0010H\u0002J\u0016\u0010q\u001a\b\u0012\u0004\u0012\u00020r092\u0006\u0010L\u001a\u00020\u0010H\u0002J\u0010\u0010s\u001a\u00020\u00102\u0006\u0010t\u001a\u00020\tH\u0002J\u0010\u0010u\u001a\u00020v2\u0006\u0010L\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR4\u0010\u000e\u001a(\u0012\u0004\u0012\u00020\u0010\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u00110\u000fj\u0002`\u00120\u000fj\u0002`\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00010\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001dX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u001dX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0010X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0010X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0010X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u00107\u001a\b\u0012\u0004\u0012\u00020\u001002X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006}"}, d2 = {"Lcom/exteragram/messenger/plugins/pip/PipController;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "client", "Lokhttp3/OkHttpClient;", "gson", "Lcom/google/gson/Gson;", "libsDir", "Ljava/io/File;", "getLibsDir", "()Ljava/io/File;", "registryFile", "getRegistryFile", "registry", "Ljava/util/concurrent/ConcurrentHashMap;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/pip/VersionMap;", "Lcom/exteragram/messenger/plugins/pip/RegistryMap;", "installLocks", "wheelArchivePolicy", "Lorg/simplifiles/archive/security/SecurityPolicy;", "pythonVersion", "getPythonVersion", "()Ljava/lang/String;", "setPythonVersion", "(Ljava/lang/String;)V", "MAX_REGISTRY_BYTES", _UrlKt.FRAGMENT_ENCODE_SET, "MAX_METADATA_BYTES", "MAX_WHEEL_BYTES", "ENV_SYS_PLATFORM", "ENV_PLATFORM_SYSTEM", "ENV_OS_NAME", "REGEX_NORMALIZE", "Lkotlin/text/Regex;", "REGEX_REQ_PARSE", "REGEX_REQ_SPECS", "REGEX_REQ_EXTRA", "REGEX_REQ_PAREN", "REGEX_VERSION_SPLIT", "REGEX_MARKER_TOKEN", "REGEX_VERSION_WILDCARD", "normalizePackageName", "name", "loadRegistry", _UrlKt.FRAGMENT_ENCODE_SET, "snapshotRegistry", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "restoreRegistry", "snapshot", "saveRegistry", "cleanup", "PREINSTALLED_PACKAGES", "installDependencies", _UrlKt.FRAGMENT_ENCODE_SET, Common.ASSET_REQUIREMENTS, "pluginId", "delegate", "Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;", "resolveAndInstall", "pkg", "specs", "Lkotlin/Pair;", "installedAccumulator", "updateRegistryForPlugin", "currentlyNeeded", "cleanupInternal", "removeOrphanedDirectories", "activeLibraryPaths", "uninstallDependencies", "installPackage", "selectWheelCandidate", "Lcom/exteragram/messenger/plugins/pip/PipController$WheelCandidate;", "version", "artifact", "Lcom/google/gson/JsonObject;", "allowYanked", _UrlKt.FRAGMENT_ENCODE_SET, "getStringOrNull", "getBooleanOrNull", "(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/Boolean;", "isPurePythonWheelCompatible", "filename", "isPythonTagCompatible", "tag", "executeWithRetry", "Lokhttp3/Response;", "request", "Lokhttp3/Request;", "findVersionOnDisk", "findInstalledVersion", "getLibPath", "deletePackage", "parseRequirement", "req", "parseSpecs", "specsString", "parseDependenciesFromMetadata", "metadataFile", "isMarkerCompatible", "marker", "findMetadataFile", "checkVersionSatisfies", "isWildcardVersionSpec", "spec", "filterPreReleases", "versions", "specsAllowPreRelease", "isPreReleaseVersion", "matchesVersionWildcard", "parseVersionReleaseParts", _UrlKt.FRAGMENT_ENCODE_SET, "calculateSha256", "file", "parseVersion", "Lcom/exteragram/messenger/plugins/pip/PipController$ParsedVersion;", "InstallerDelegate", "WheelCandidate", "ParsedVersion", "MarkerParser", "SizeLimitedInputStream", "VersionComparator", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPipController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PipController.kt\ncom/exteragram/messenger/plugins/pip/PipController\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1117:1\n221#2:1118\n221#2,2:1119\n222#2:1121\n221#2:1133\n221#2,2:1134\n222#2:1136\n221#2:1140\n221#2,2:1141\n222#2:1143\n221#2:1146\n221#2,2:1147\n222#2:1149\n221#2:1152\n222#2:1155\n221#2:1158\n221#2,2:1159\n222#2:1161\n221#2:1162\n221#2,2:1163\n222#2:1165\n493#3:1122\n442#3:1123\n493#3:1126\n442#3:1127\n1266#4,2:1124\n1266#4,4:1128\n1269#4:1132\n296#4,2:1137\n1915#4,2:1144\n1915#4,2:1150\n1915#4,2:1153\n1915#4,2:1166\n777#4:1168\n873#4,2:1169\n1807#4,3:1171\n1807#4,3:1174\n777#4:1177\n873#4,2:1178\n832#4:1180\n862#4,2:1181\n1807#4,3:1183\n1807#4,3:1186\n1786#4,3:1189\n1642#4,10:1192\n1915#4:1202\n1916#4:1204\n1652#4:1205\n1586#4:1206\n1661#4,3:1207\n1#5:1139\n1#5:1203\n14048#6,2:1156\n*S KotlinDebug\n*F\n+ 1 PipController.kt\ncom/exteragram/messenger/plugins/pip/PipController\n*L\n120#1:1118\n123#1:1119,2\n120#1:1121\n154#1:1133\n156#1:1134,2\n154#1:1136\n306#1:1140\n307#1:1141,2\n306#1:1143\n330#1:1146\n331#1:1147,2\n330#1:1149\n351#1:1152\n351#1:1155\n376#1:1158\n377#1:1159,2\n376#1:1161\n394#1:1162\n395#1:1163,2\n394#1:1165\n146#1:1122\n146#1:1123\n147#1:1126\n147#1:1127\n146#1:1124,2\n147#1:1128,4\n146#1:1132\n238#1:1137,2\n318#1:1144,2\n338#1:1150,2\n352#1:1153,2\n405#1:1166,2\n449#1:1168\n449#1:1169,2\n453#1:1171,3\n593#1:1174,3\n647#1:1177\n647#1:1178,2\n962#1:1180\n962#1:1181,2\n967#1:1183,3\n971#1:1186,3\n1000#1:1189,3\n1006#1:1192,10\n1006#1:1202\n1006#1:1204\n1006#1:1205\n180#1:1206\n180#1:1207,3\n1006#1:1203\n360#1:1156,2\n*E\n"})
public final class PipController {
    public static final PipController INSTANCE;
    private static final long MAX_METADATA_BYTES = 4194304;
    private static final long MAX_REGISTRY_BYTES = 4194304;
    private static final long MAX_WHEEL_BYTES = 262144000;
    private static final Set<String> PREINSTALLED_PACKAGES;
    private static final Regex REGEX_MARKER_TOKEN;
    private static final Regex REGEX_NORMALIZE;
    private static final Regex REGEX_REQ_EXTRA;
    private static final Regex REGEX_REQ_PAREN;
    private static final Regex REGEX_REQ_PARSE;
    private static final Regex REGEX_REQ_SPECS;
    private static final Regex REGEX_VERSION_SPLIT;
    private static final Regex REGEX_VERSION_WILDCARD;
    private static final OkHttpClient client;
    private static final Gson gson;
    private static final ConcurrentHashMap<String, Object> installLocks;
    private static String pythonVersion;
    private static final ConcurrentHashMap<String, ConcurrentHashMap<String, Set<String>>> registry;
    private static final SecurityPolicy wheelArchivePolicy;
    private static final String ENV_SYS_PLATFORM = Deobfuscator$exteraGramDev$TMessagesProj.getString(-59001982436911L);
    private static final String ENV_PLATFORM_SYSTEM = Deobfuscator$exteraGramDev$TMessagesProj.getString(-59027752240687L);
    private static final String ENV_OS_NAME = Deobfuscator$exteraGramDev$TMessagesProj.getString(-58984802567727L);

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H&¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;", _UrlKt.FRAGMENT_ENCODE_SET, "onProgress", _UrlKt.FRAGMENT_ENCODE_SET, "text", _UrlKt.FRAGMENT_ENCODE_SET, "isCancelled", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public interface InstallerDelegate {
        boolean isCancelled();

        void onProgress(String text);
    }

    private PipController() {
    }

    static {
        PipController pipController = new PipController();
        INSTANCE = pipController;
        client = ExteraHttpClient.INSTANCE.getClient();
        gson = new Gson();
        registry = new ConcurrentHashMap<>();
        installLocks = new ConcurrentHashMap<>();
        wheelArchivePolicy = SecurityPolicy.INSTANCE.builder().maxEntries(50000L).maxTotalUncompressedSize(524288000L).maxSingleFileSize(MAX_WHEEL_BYTES).maxCompressionRatio(500.0d).build();
        pythonVersion = Deobfuscator$exteraGramDev$TMessagesProj.getString(-59079291848239L);
        REGEX_NORMALIZE = new Regex(Deobfuscator$exteraGramDev$TMessagesProj.getString(-59044932109871L));
        REGEX_REQ_PARSE = new Regex(Deobfuscator$exteraGramDev$TMessagesProj.getString(-57485858981423L));
        REGEX_REQ_SPECS = new Regex(Deobfuscator$exteraGramDev$TMessagesProj.getString(-57524513687087L));
        REGEX_REQ_EXTRA = new Regex(Deobfuscator$exteraGramDev$TMessagesProj.getString(-57657657673263L));
        REGEX_REQ_PAREN = new Regex(Deobfuscator$exteraGramDev$TMessagesProj.getString(-57215276041775L));
        REGEX_VERSION_SPLIT = new Regex(Deobfuscator$exteraGramDev$TMessagesProj.getString(-57228160943663L));
        REGEX_MARKER_TOKEN = new Regex(Deobfuscator$exteraGramDev$TMessagesProj.getString(-57258225714735L));
        REGEX_VERSION_WILDCARD = new Regex(Deobfuscator$exteraGramDev$TMessagesProj.getString(-58220298389039L));
        pipController.loadRegistry();
        Set of = SetsKt.setOf((Object[]) new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-57756441921071L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-57812276495919L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-57915355711023L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-57876701005359L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-57988370155055L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-57941125514799L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-56407822190127L)});
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(of, 10));
        Iterator it = of.iterator();
        while (it.hasNext()) {
            arrayList.add(INSTANCE.normalizePackageName((String) it.next()));
        }
        PREINSTALLED_PACKAGES = CollectionsKt.toSet(arrayList);
    }

    private final File getLibsDir() {
        return SimpliFiles.directory(new File(PluginsController.INSTANCE.getInstance().getPluginsDir(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-84694476801583L))).create().getFile();
    }

    private final File getRegistryFile() {
        return new File(getLibsDir(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-84776081180207L));
    }

    public final String getPythonVersion() {
        return pythonVersion;
    }

    public final void setPythonVersion(String str) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-84836210722351L);
        pythonVersion = str;
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J)\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/exteragram/messenger/plugins/pip/PipController$WheelCandidate;", _UrlKt.FRAGMENT_ENCODE_SET, "version", _UrlKt.FRAGMENT_ENCODE_SET, "downloadUrl", "expectedSha256", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getVersion", "()Ljava/lang/String;", "getDownloadUrl", "getExpectedSha256", "component1", "component2", "component3", "copy", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "other", "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class WheelCandidate {
        private final String downloadUrl;
        private final String expectedSha256;
        private final String version;

        public static /* synthetic */ WheelCandidate copy$default(WheelCandidate wheelCandidate, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = wheelCandidate.version;
            }
            if ((i & 2) != 0) {
                str2 = wheelCandidate.downloadUrl;
            }
            if ((i & 4) != 0) {
                str3 = wheelCandidate.expectedSha256;
            }
            return wheelCandidate.copy(str, str2, str3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getVersion() {
            return this.version;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getDownloadUrl() {
            return this.downloadUrl;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getExpectedSha256() {
            return this.expectedSha256;
        }

        public final WheelCandidate copy(String version, String downloadUrl, String expectedSha256) {
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-84973649675823L);
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-84939289937455L);
            return new WheelCandidate(version, downloadUrl, expectedSha256);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof WheelCandidate)) {
                return false;
            }
            WheelCandidate wheelCandidate = (WheelCandidate) other;
            return Intrinsics.areEqual(this.version, wheelCandidate.version) && Intrinsics.areEqual(this.downloadUrl, wheelCandidate.downloadUrl) && Intrinsics.areEqual(this.expectedSha256, wheelCandidate.expectedSha256);
        }

        public int hashCode() {
            int iHashCode = ((this.version.hashCode() * 31) + this.downloadUrl.hashCode()) * 31;
            String str = this.expectedSha256;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return Deobfuscator$exteraGramDev$TMessagesProj.getString(-85059549021743L) + this.version + Deobfuscator$exteraGramDev$TMessagesProj.getString(-85093908760111L) + this.downloadUrl + Deobfuscator$exteraGramDev$TMessagesProj.getString(-85166923204143L) + this.expectedSha256 + ')';
        }

        public WheelCandidate(String str, String str2, String str3) {
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-86468298294831L);
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-86571377509935L);
            this.version = str;
            this.downloadUrl = str2;
            this.expectedSha256 = str3;
        }

        public final String getVersion() {
            return this.version;
        }

        public final String getDownloadUrl() {
            return this.downloadUrl;
        }

        public final String getExpectedSha256() {
            return this.expectedSha256;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007HÆ\u0003J-\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/exteragram/messenger/plugins/pip/PipController$ParsedVersion;", _UrlKt.FRAGMENT_ENCODE_SET, "epoch", _UrlKt.FRAGMENT_ENCODE_SET, "publicVersion", _UrlKt.FRAGMENT_ENCODE_SET, "parts", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(ILjava/lang/String;Ljava/util/List;)V", "getEpoch", "()I", "getPublicVersion", "()Ljava/lang/String;", "getParts", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "other", "hashCode", "toString", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class ParsedVersion {
        private final int epoch;
        private final List<String> parts;
        private final String publicVersion;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ParsedVersion copy$default(ParsedVersion parsedVersion, int i, String str, List list, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = parsedVersion.epoch;
            }
            if ((i2 & 2) != 0) {
                str = parsedVersion.publicVersion;
            }
            if ((i2 & 4) != 0) {
                list = parsedVersion.parts;
            }
            return parsedVersion.copy(i, str, list);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getEpoch() {
            return this.epoch;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getPublicVersion() {
            return this.publicVersion;
        }

        public final List<String> component3() {
            return this.parts;
        }

        public final ParsedVersion copy(int epoch, String publicVersion, List<String> parts) {
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-71259819099695L);
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-71319948641839L);
            return new ParsedVersion(epoch, publicVersion, parts);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ParsedVersion)) {
                return false;
            }
            ParsedVersion parsedVersion = (ParsedVersion) other;
            return this.epoch == parsedVersion.epoch && Intrinsics.areEqual(this.publicVersion, parsedVersion.publicVersion) && Intrinsics.areEqual(this.parts, parsedVersion.parts);
        }

        public int hashCode() {
            return (((Integer.hashCode(this.epoch) * 31) + this.publicVersion.hashCode()) * 31) + this.parts.hashCode();
        }

        public String toString() {
            return Deobfuscator$exteraGramDev$TMessagesProj.getString(-71276998968879L) + this.epoch + Deobfuscator$exteraGramDev$TMessagesProj.getString(-71358603347503L) + this.publicVersion + Deobfuscator$exteraGramDev$TMessagesProj.getString(-70959171388975L) + this.parts + ')';
        }

        public ParsedVersion(int i, String str, List<String> list) {
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-70624163939887L);
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-71234049295919L);
            this.epoch = i;
            this.publicVersion = str;
            this.parts = list;
        }

        public final int getEpoch() {
            return this.epoch;
        }

        public final String getPublicVersion() {
            return this.publicVersion;
        }

        public final List<String> getParts() {
            return this.parts;
        }
    }

    private final String normalizePackageName(String name) {
        String lowerCase = name.toLowerCase(Locale.ROOT);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-84801850983983L);
        return REGEX_NORMALIZE.replace(lowerCase, Deobfuscator$exteraGramDev$TMessagesProj.getString(-84883455362607L));
    }

    private final synchronized void loadRegistry() {
        Object objM3291constructorimpl;
        if (!getRegistryFile().exists()) {
            registry.clear();
            return;
        }
        try {
            Object objFromJson = gson.fromJson(SimpliFile.readText$default(SimpliFiles.file(getRegistryFile()), 4194304L, null, 2, null), new TypeToken<Map<String, ? extends Map<String, ? extends Set<? extends String>>>>() { // from class: com.exteragram.messenger.plugins.pip.PipController$loadRegistry$type$1
            }.getType());
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-84892045297199L);
            registry.clear();
            for (Map.Entry entry : ((Map) objFromJson).entrySet()) {
                String str = (String) entry.getKey();
                Map map = (Map) entry.getValue();
                String strNormalizePackageName = INSTANCE.normalizePackageName(str);
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                for (Map.Entry entry2 : map.entrySet()) {
                    String str2 = (String) entry2.getKey();
                    Set set = (Set) entry2.getValue();
                    ConcurrentHashMap.KeySetView keySetViewNewKeySet = ConcurrentHashMap.newKeySet();
                    keySetViewNewKeySet.addAll(set);
                    concurrentHashMap.put(str2, keySetViewNewKeySet);
                }
                registry.put(strNormalizePackageName, (ConcurrentHashMap<String, Set<String>>) concurrentHashMap);
            }
        } catch (Exception e) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-85501930653231L), e);
            registry.clear();
            try {
                Result.Companion companion = Result.INSTANCE;
                objM3291constructorimpl = Result.m3291constructorimpl(SimpliFiles.file(getRegistryFile()).moveTo(new File(getLibsDir(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-85729563919919L)), OverwritePolicy.REPLACE));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(objM3291constructorimpl);
            if (thM3294exceptionOrNullimpl != null) {
                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-85257117517359L), thM3294exceptionOrNullimpl);
            }
        }
    }

    private final synchronized Map<String, Map<String, Set<String>>> snapshotRegistry() {
        LinkedHashMap linkedHashMap;
        try {
            ConcurrentHashMap<String, ConcurrentHashMap<String, Set<String>>> concurrentHashMap = registry;
            linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(concurrentHashMap.size()));
            for (Object obj : concurrentHashMap.entrySet()) {
                Object key = ((Map.Entry) obj).getKey();
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) ((Map.Entry) obj).getValue();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(concurrentHashMap2.size()));
                for (Object obj2 : concurrentHashMap2.entrySet()) {
                    linkedHashMap2.put(((Map.Entry) obj2).getKey(), CollectionsKt.toSet((Set) ((Map.Entry) obj2).getValue()));
                }
                linkedHashMap.put(key, linkedHashMap2);
            }
        } catch (Throwable th) {
            throw th;
        }
        return linkedHashMap;
    }

    private final synchronized void restoreRegistry(Map<String, ? extends Map<String, ? extends Set<String>>> snapshot) {
        try {
            registry.clear();
            for (Map.Entry<String, ? extends Map<String, ? extends Set<String>>> entry : snapshot.entrySet()) {
                String key = entry.getKey();
                Map<String, ? extends Set<String>> value = entry.getValue();
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                for (Map.Entry<String, ? extends Set<String>> entry2 : value.entrySet()) {
                    String key2 = entry2.getKey();
                    Set<String> value2 = entry2.getValue();
                    ConcurrentHashMap.KeySetView keySetViewNewKeySet = ConcurrentHashMap.newKeySet();
                    keySetViewNewKeySet.addAll(value2);
                    concurrentHashMap.put(key2, keySetViewNewKeySet);
                }
                registry.put(key, (ConcurrentHashMap<String, Set<String>>) concurrentHashMap);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized void saveRegistry() {
        try {
            SimpliFile simpliFileFile = SimpliFiles.file(getRegistryFile());
            String json = gson.toJson(snapshotRegistry());
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-85476160849455L);
            SimpliFile.writeTextAtomic$default(simpliFileFile, json, null, 2, null);
        } catch (Exception e) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-83878433015343L), e);
        }
    }

    public final void cleanup() {
        cleanupInternal();
    }

    public static /* synthetic */ List installDependencies$default(PipController pipController, List list, String str, InstallerDelegate installerDelegate, int i, Object obj) {
        if ((i & 4) != 0) {
            installerDelegate = null;
        }
        return pipController.installDependencies(list, str, installerDelegate);
    }

    public final List<String> installDependencies(List<String> requirements, String pluginId, InstallerDelegate delegate) {
        PipController pipController;
        String str;
        Exception exc;
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-84037346805295L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-84101771314735L);
        ArrayList arrayList = new ArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Map<String, Map<String, Set<String>>> mapSnapshotRegistry = snapshotRegistry();
        try {
            try {
                for (String str2 : requirements) {
                    if (delegate != null) {
                        try {
                            if (delegate.isCancelled()) {
                                throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-84063116609071L));
                            }
                        } catch (Exception e) {
                            exc = e;
                            pipController = this;
                            str = pluginId;
                            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-83702339356207L) + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-84479728436783L) + requirements, exc);
                            pipController.restoreRegistry(mapSnapshotRegistry);
                            pipController.removeOrphanedDirectories();
                            throw exc;
                        }
                    }
                    if (!StringsKt.isBlank(str2)) {
                        Pair<String, List<Pair<String, String>>> requirement = this.parseRequirement(str2);
                        String strComponent1 = requirement.component1();
                        List<Pair<String, String>> listComponent2 = requirement.component2();
                        String strNormalizePackageName = this.normalizePackageName(strComponent1);
                        if (!PREINSTALLED_PACKAGES.contains(strNormalizePackageName)) {
                            pipController = this;
                            str = pluginId;
                            InstallerDelegate installerDelegate = delegate;
                            try {
                                pipController.resolveAndInstall(strNormalizePackageName, listComponent2, linkedHashSet, str, installerDelegate);
                                this = pipController;
                                pluginId = str;
                                delegate = installerDelegate;
                            } catch (Exception e2) {
                                e = e2;
                                exc = e;
                                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-83702339356207L) + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-84479728436783L) + requirements, exc);
                                pipController.restoreRegistry(mapSnapshotRegistry);
                                pipController.removeOrphanedDirectories();
                                throw exc;
                            }
                        }
                    }
                }
                pipController = this;
                str = pluginId;
                pipController.updateRegistryForPlugin(str, linkedHashSet);
                for (Pair<String, String> pair : linkedHashSet) {
                    String absolutePath = pipController.getLibPath(pair.component1(), pair.component2()).getAbsolutePath();
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-83689454454319L);
                    arrayList.add(absolutePath);
                }
                pipController.saveRegistry();
                return arrayList;
            } finally {
                installLocks.clear();
            }
        } catch (Exception e3) {
            e = e3;
            pipController = this;
            str = pluginId;
        }
    }

    private final void resolveAndInstall(String pkg, List<Pair<String, String>> specs, Set<Pair<String, String>> installedAccumulator, String pluginId, InstallerDelegate delegate) throws IOException {
        Object obj;
        Map.Entry entry;
        String strInstallPackage;
        Set<Map.Entry<String, Set<String>>> setEntrySet;
        Object next;
        PipController pipController = this;
        Set<Pair<String, String>> set = installedAccumulator;
        String str = pluginId;
        InstallerDelegate installerDelegate = delegate;
        if (installerDelegate != null && installerDelegate.isCancelled()) {
            Model$$ExternalSyntheticBUOutline0.m964m(Deobfuscator$exteraGramDev$TMessagesProj.getString(-84484023404079L));
            return;
        }
        ConcurrentHashMap<String, Object> concurrentHashMap = installLocks;
        final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return PipController.$r8$lambda$nM3N8RYnbiCU76VyVnmjZ3F9qY8((String) obj2);
            }
        };
        Object objComputeIfAbsent = concurrentHashMap.computeIfAbsent(pkg, new Function() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj2) {
                return function1.invoke(obj2);
            }
        });
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-84660117063215L);
        synchronized (objComputeIfAbsent) {
            if (installerDelegate != null) {
                try {
                    if (installerDelegate.isCancelled()) {
                        throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-84123246151215L));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            ConcurrentHashMap<String, Set<String>> concurrentHashMap2 = registry.get(pkg);
            obj = null;
            if (concurrentHashMap2 == null || (setEntrySet = concurrentHashMap2.entrySet()) == null) {
                entry = null;
            } else {
                Iterator<T> it = setEntrySet.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    Object value = ((Map.Entry) next).getValue();
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-84299339810351L);
                    if (!((Collection) value).isEmpty()) {
                        break;
                    }
                }
                entry = (Map.Entry) next;
            }
            if (entry != null) {
                Object key = entry.getKey();
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-84363764319791L);
                strInstallPackage = (String) key;
                Object value2 = entry.getValue();
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-82787511322159L);
                String strJoinToString$default = CollectionsKt.joinToString$default((Iterable) value2, Deobfuscator$exteraGramDev$TMessagesProj.getString(-82851935831599L), null, null, 0, null, null, 62, null);
                if (!INSTANCE.checkVersionSatisfies(strInstallPackage, specs)) {
                    throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-82559878055471L) + pkg + Deobfuscator$exteraGramDev$TMessagesProj.getString(-82671547205167L) + strInstallPackage + Deobfuscator$exteraGramDev$TMessagesProj.getString(-83311497332271L) + strJoinToString$default + Deobfuscator$exteraGramDev$TMessagesProj.getString(-83418871514671L) + (!specs.isEmpty() ? CollectionsKt.joinToString$default(specs, Deobfuscator$exteraGramDev$TMessagesProj.getString(-82589942826543L), null, null, 0, null, new Function1() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return PipController.resolveAndInstall$lambda$2$1((Pair) obj2);
                        }
                    }, 30, null) : Deobfuscator$exteraGramDev$TMessagesProj.getString(-82598532761135L)) + Deobfuscator$exteraGramDev$TMessagesProj.getString(-83500475893295L));
                }
                FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-82873410668079L) + strInstallPackage + Deobfuscator$exteraGramDev$TMessagesProj.getString(-82963604981295L) + pkg + Deobfuscator$exteraGramDev$TMessagesProj.getString(-82512633415215L) + strJoinToString$default + Deobfuscator$exteraGramDev$TMessagesProj.getString(-82482568644143L) + str);
            } else {
                PipController pipController2 = INSTANCE;
                String strFindInstalledVersion = pipController2.findInstalledVersion(pkg, specs);
                if (strFindInstalledVersion != null) {
                    strInstallPackage = strFindInstalledVersion;
                } else {
                    strFindInstalledVersion = pipController2.findVersionOnDisk(pkg, specs);
                    if (strFindInstalledVersion != null) {
                        FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-83504770860591L) + pkg + ' ' + strFindInstalledVersion + Deobfuscator$exteraGramDev$TMessagesProj.getString(-83118223803951L));
                        strInstallPackage = strFindInstalledVersion;
                    } else {
                        strInstallPackage = pipController2.installPackage(pkg, specs, installerDelegate);
                    }
                }
            }
        }
        Iterator<T> it2 = set.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next2 = it2.next();
            if (Intrinsics.areEqual(((Pair) next2).getFirst(), pkg)) {
                obj = next2;
                break;
            }
        }
        Pair pair = (Pair) obj;
        if (pair != null) {
            String str2 = (String) pair.getSecond();
            if (VersionComparator.INSTANCE.compare(strInstallPackage, str2) <= 0) {
                return;
            }
            FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-83204123149871L) + pkg + Deobfuscator$exteraGramDev$TMessagesProj.getString(-83247072822831L) + str2 + Deobfuscator$exteraGramDev$TMessagesProj.getString(-81705179563567L) + strInstallPackage + Deobfuscator$exteraGramDev$TMessagesProj.getString(-81649344988719L) + str);
            set.remove(pair);
        }
        ConcurrentHashMap<String, ConcurrentHashMap<String, Set<String>>> concurrentHashMap3 = registry;
        final Function1 function12 = new Function1() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return PipController.m2308$r8$lambda$cKu7WIfB65dGzootwJY_PzblQ((String) obj2);
            }
        };
        ConcurrentHashMap<String, Set<String>> concurrentHashMapComputeIfAbsent = concurrentHashMap3.computeIfAbsent(pkg, new Function() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda7
            @Override // java.util.function.Function
            public final Object apply(Object obj2) {
                return PipController.m2305$r8$lambda$4GaAqKHHkDxhUEp6Ixv2955PQ8(function12, obj2);
            }
        });
        final Function1 function13 = new Function1() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return PipController.$r8$lambda$ba_CzsM0FMRcDjro_ht7norbT1M((String) obj2);
            }
        };
        concurrentHashMapComputeIfAbsent.computeIfAbsent(strInstallPackage, new Function() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda9
            @Override // java.util.function.Function
            public final Object apply(Object obj2) {
                return PipController.$r8$lambda$XFN9dt32lYY3xCJ9NHZLBcosePw(function13, obj2);
            }
        }).add(str);
        set.add(TuplesKt.to(pkg, strInstallPackage));
        File fileFindMetadataFile = pipController.findMetadataFile(pkg, strInstallPackage);
        if (fileFindMetadataFile == null || !fileFindMetadataFile.exists()) {
            return;
        }
        for (String str3 : pipController.parseDependenciesFromMetadata(fileFindMetadataFile)) {
            if (installerDelegate != null && installerDelegate.isCancelled()) {
                Model$$ExternalSyntheticBUOutline0.m964m(Deobfuscator$exteraGramDev$TMessagesProj.getString(-81743834269231L));
                return;
            }
            Pair<String, List<Pair<String, String>>> requirement = pipController.parseRequirement(str3);
            pipController.resolveAndInstall(pipController.normalizePackageName(requirement.component1()), requirement.component2(), set, str, installerDelegate);
            pipController = this;
            set = installedAccumulator;
            str = pluginId;
            installerDelegate = delegate;
        }
    }

    public static Object $r8$lambda$nM3N8RYnbiCU76VyVnmjZ3F9qY8(String str) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-58357737342511L);
        return new Object();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence resolveAndInstall$lambda$2$1(Pair pair) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-58362032309807L);
        return ((String) pair.getFirst()) + ((String) pair.getSecond());
    }

    /* JADX INFO: renamed from: $r8$lambda$4GaAqKHHkDxhUEp6Ixv2955-PQ8, reason: not valid java name */
    public static ConcurrentHashMap m2305$r8$lambda$4GaAqKHHkDxhUEp6Ixv2955PQ8(Function1 function1, Object obj) {
        return (ConcurrentHashMap) function1.invoke(obj);
    }

    /* JADX INFO: renamed from: $r8$lambda$cKu7WIfB65dGzoot-wJY-_PzblQ, reason: not valid java name */
    public static ConcurrentHashMap m2308$r8$lambda$cKu7WIfB65dGzootwJY_PzblQ(String str) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-58452226623023L);
        return new ConcurrentHashMap();
    }

    public static Set $r8$lambda$XFN9dt32lYY3xCJ9NHZLBcosePw(Function1 function1, Object obj) {
        return (Set) function1.invoke(obj);
    }

    public static Set $r8$lambda$ba_CzsM0FMRcDjro_ht7norbT1M(String str) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-58456521590319L);
        return Collections.newSetFromMap(new ConcurrentHashMap());
    }

    private final void updateRegistryForPlugin(String pluginId, Set<Pair<String, String>> currentlyNeeded) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ConcurrentHashMap<String, Set<String>>> entry : registry.entrySet()) {
            String key = entry.getKey();
            for (Map.Entry<String, Set<String>> entry2 : entry.getValue().entrySet()) {
                String key2 = entry2.getKey();
                Set<String> value = entry2.getValue();
                Pair pair = TuplesKt.to(key, key2);
                if (value.contains(pluginId) && !currentlyNeeded.contains(pair)) {
                    value.remove(pluginId);
                    if (value.isEmpty()) {
                        arrayList.add(pair);
                    }
                }
            }
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Pair pair2 = (Pair) obj;
            String str = (String) pair2.component1();
            String str2 = (String) pair2.component2();
            ConcurrentHashMap<String, ConcurrentHashMap<String, Set<String>>> concurrentHashMap = registry;
            ConcurrentHashMap<String, Set<String>> concurrentHashMap2 = concurrentHashMap.get(str);
            if (concurrentHashMap2 != null) {
                concurrentHashMap2.remove(str2);
            }
            ConcurrentHashMap<String, Set<String>> concurrentHashMap3 = concurrentHashMap.get(str);
            if (concurrentHashMap3 != null && concurrentHashMap3.isEmpty()) {
                concurrentHashMap.remove(str);
            }
            INSTANCE.deletePackage(str, str2);
        }
    }

    private final void cleanupInternal() throws IOException {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ConcurrentHashMap<String, Set<String>>> entry : registry.entrySet()) {
            String key = entry.getKey();
            for (Map.Entry<String, Set<String>> entry2 : entry.getValue().entrySet()) {
                String key2 = entry2.getKey();
                if (entry2.getValue().isEmpty()) {
                    arrayList.add(TuplesKt.to(key, key2));
                }
            }
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Pair pair = (Pair) obj;
            String str = (String) pair.component1();
            String str2 = (String) pair.component2();
            ConcurrentHashMap<String, ConcurrentHashMap<String, Set<String>>> concurrentHashMap = registry;
            ConcurrentHashMap<String, Set<String>> concurrentHashMap2 = concurrentHashMap.get(str);
            if (concurrentHashMap2 != null) {
                concurrentHashMap2.remove(str2);
            }
            ConcurrentHashMap<String, Set<String>> concurrentHashMap3 = concurrentHashMap.get(str);
            if (concurrentHashMap3 != null && concurrentHashMap3.isEmpty()) {
                concurrentHashMap.remove(str);
            }
            INSTANCE.deletePackage(str, str2);
        }
        removeOrphanedDirectories();
    }

    private final void removeOrphanedDirectories() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map.Entry<String, ConcurrentHashMap<String, Set<String>>> entry : registry.entrySet()) {
            String key = entry.getKey();
            Set<String> setKeySet = entry.getValue().keySet();
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-81782488974895L);
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                try {
                    linkedHashSet.add(INSTANCE.getLibPath(key, (String) it.next()).getCanonicalPath());
                } catch (IOException unused) {
                }
            }
        }
        File[] fileArrListFiles = getLibsDir().listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (file.isDirectory()) {
                    try {
                        if (!linkedHashSet.contains(file.getCanonicalPath())) {
                            FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-81851208451631L) + file.getName());
                            SimpliFiles.directory(file).deleteRecursively();
                        }
                    } catch (Exception e) {
                        FileLog.m898e(e);
                    }
                }
            }
        }
    }

    public final Set<String> activeLibraryPaths() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map.Entry<String, ConcurrentHashMap<String, Set<String>>> entry : registry.entrySet()) {
            String key = entry.getKey();
            for (Map.Entry<String, Set<String>> entry2 : entry.getValue().entrySet()) {
                String key2 = entry2.getKey();
                if (!entry2.getValue().isEmpty()) {
                    try {
                        linkedHashSet.add(INSTANCE.getLibPath(key, key2).getAbsolutePath());
                    } catch (IOException e) {
                        FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-81546265773615L) + key + ' ' + key2, e);
                    }
                }
            }
        }
        return linkedHashSet;
    }

    public final void uninstallDependencies(String pluginId) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-82220575639087L);
        ArrayList arrayList = new ArrayList();
        int i = 0;
        boolean z = false;
        for (Map.Entry<String, ConcurrentHashMap<String, Set<String>>> entry : registry.entrySet()) {
            String key = entry.getKey();
            for (Map.Entry<String, Set<String>> entry2 : entry.getValue().entrySet()) {
                String key2 = entry2.getKey();
                Set<String> value = entry2.getValue();
                if (value.remove(pluginId)) {
                    if (value.isEmpty()) {
                        arrayList.add(TuplesKt.to(key, key2));
                    }
                    z = true;
                }
            }
        }
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Pair pair = (Pair) obj;
            String str = (String) pair.component1();
            String str2 = (String) pair.component2();
            ConcurrentHashMap<String, ConcurrentHashMap<String, Set<String>>> concurrentHashMap = registry;
            ConcurrentHashMap<String, Set<String>> concurrentHashMap2 = concurrentHashMap.get(str);
            if (concurrentHashMap2 != null) {
                concurrentHashMap2.remove(str2);
            }
            ConcurrentHashMap<String, Set<String>> concurrentHashMap3 = concurrentHashMap.get(str);
            if (concurrentHashMap3 != null && concurrentHashMap3.isEmpty()) {
                concurrentHashMap.remove(str);
            }
            INSTANCE.deletePackage(str, str2);
        }
        if (z) {
            saveRegistry();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$iez_jk-cSyBPRjplKRoDAzlgN2I, reason: not valid java name */
    public static CharSequence m2309$r8$lambda$iez_jkcSyBPRjplKRoDAzlgN2I(Pair pair) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-58477996426799L);
        return ((String) pair.getFirst()) + ((String) pair.getSecond());
    }

    /* JADX WARN: Finally extract failed */
    private final String installPackage(String pkg, List<Pair<String, String>> specs, final InstallerDelegate delegate) throws IOException {
        Object objM3291constructorimpl;
        Object objM3291constructorimpl2;
        FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-82375194461743L) + pkg + ' ' + (!specs.isEmpty() ? CollectionsKt.joinToString$default(specs, Deobfuscator$exteraGramDev$TMessagesProj.getString(-82319359886895L), null, null, 0, null, new Function1() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PipController.m2309$r8$lambda$iez_jkcSyBPRjplKRoDAzlgN2I((Pair) obj);
            }
        }, 30, null) : Deobfuscator$exteraGramDev$TMessagesProj.getString(-82259230344751L)));
        if (delegate != null) {
            delegate.onProgress(Deobfuscator$exteraGramDev$TMessagesProj.getString(-82413849167407L) + pkg + Deobfuscator$exteraGramDev$TMessagesProj.getString(-81919927928367L));
        }
        Response responseExecuteWithRetry = executeWithRetry(new Request.Builder().url(Deobfuscator$exteraGramDev$TMessagesProj.getString(-81937107797551L) + pkg + Deobfuscator$exteraGramDev$TMessagesProj.getString(-82096021587503L)).build(), delegate);
        try {
            if (!responseExecuteWithRetry.getIsSuccessful()) {
                if (responseExecuteWithRetry.code() == 404) {
                    throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-82053071914543L) + pkg + Deobfuscator$exteraGramDev$TMessagesProj.getString(-82169036031535L));
                }
                throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-80592783033903L) + pkg + Deobfuscator$exteraGramDev$TMessagesProj.getString(-80721632052783L) + responseExecuteWithRetry.code());
            }
            JsonObject jsonObject = (JsonObject) gson.fromJson(responseExecuteWithRetry.body().string(), JsonObject.class);
            if (jsonObject == null) {
                throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-80743106889263L) + pkg);
            }
            JsonObject asJsonObject = jsonObject.getAsJsonObject(Deobfuscator$exteraGramDev$TMessagesProj.getString(-80292135323183L));
            if (asJsonObject == null) {
                throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-80339379963439L) + pkg + Deobfuscator$exteraGramDev$TMessagesProj.getString(-80429574276655L));
            }
            Set<String> setKeySet = asJsonObject.keySet();
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-80476818916911L);
            List list = CollectionsKt.toList(setKeySet);
            PipController pipController = INSTANCE;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (INSTANCE.checkVersionSatisfies((String) obj, specs)) {
                    arrayList.add(obj);
                }
            }
            List<String> listSortedWith = CollectionsKt.sortedWith(pipController.filterPreReleases(arrayList, specs), new Comparator() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda1
                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    return PipController.installPackage$lambda$1$1((String) obj2, (String) obj3);
                }
            });
            List<Pair<String, String>> list2 = specs;
            boolean z = false;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                Iterator<T> it = list2.iterator();
                while (it.hasNext()) {
                    Pair pair = (Pair) it.next();
                    if (Intrinsics.areEqual(pair.getFirst(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-81146833815087L)) || Intrinsics.areEqual(pair.getFirst(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-81151128782383L))) {
                        z = true;
                        break;
                    }
                }
            }
            WheelCandidate wheelCandidate = null;
            for (String str : listSortedWith) {
                JsonArray asJsonArray = asJsonObject.getAsJsonArray(str);
                if (asJsonArray != null) {
                    Iterator<JsonElement> it2 = asJsonArray.iterator();
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-81099589174831L);
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        WheelCandidate wheelCandidateSelectWheelCandidate = INSTANCE.selectWheelCandidate(str, it2.next().getAsJsonObject(), z);
                        if (wheelCandidateSelectWheelCandidate != null) {
                            wheelCandidate = wheelCandidateSelectWheelCandidate;
                            break;
                        }
                    }
                    if (wheelCandidate != null) {
                        break;
                    }
                }
            }
            if (wheelCandidate == null) {
                JsonObject asJsonObject2 = jsonObject.getAsJsonObject(Deobfuscator$exteraGramDev$TMessagesProj.getString(-81159718716975L));
                String stringOrNull = asJsonObject2 != null ? INSTANCE.getStringOrNull(asJsonObject2, Deobfuscator$exteraGramDev$TMessagesProj.getString(-81189783488047L)) : null;
                if (stringOrNull != null) {
                    PipController pipController2 = INSTANCE;
                    if (!pipController2.checkVersionSatisfies(pythonVersion, pipController2.parseSpecs(stringOrNull))) {
                        throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-81258502964783L) + pkg + Deobfuscator$exteraGramDev$TMessagesProj.getString(-81357287212591L) + stringOrNull + Deobfuscator$exteraGramDev$TMessagesProj.getString(-80816121333295L) + pythonVersion);
                    }
                }
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(responseExecuteWithRetry, null);
            if (wheelCandidate == null) {
                throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-80893430744623L) + pkg + Deobfuscator$exteraGramDev$TMessagesProj.getString(-81030869698095L));
            }
            File libPath = getLibPath(pkg, wheelCandidate.getVersion());
            File file = SimpliFiles.directory(new File(getLibsDir(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-79617825457711L) + pkg + '_' + System.currentTimeMillis())).create().getFile();
            File file2 = new File(file, Deobfuscator$exteraGramDev$TMessagesProj.getString(-79630710359599L));
            try {
                if (delegate != null) {
                    try {
                        delegate.onProgress(Deobfuscator$exteraGramDev$TMessagesProj.getString(-79604940555823L) + pkg + ' ' + wheelCandidate.getVersion() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-79669365065263L));
                    } catch (Exception e) {
                        FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-79862638593583L) + pkg, e);
                        throw e;
                    }
                }
                File file3 = new File(file, Deobfuscator$exteraGramDev$TMessagesProj.getString(-79205508597295L));
                responseExecuteWithRetry = executeWithRetry(new Request.Builder().url(wheelCandidate.getDownloadUrl()).build(), delegate);
                try {
                    if (!responseExecuteWithRetry.getIsSuccessful()) {
                        throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-79188328728111L) + responseExecuteWithRetry.code());
                    }
                    long contentLength = responseExecuteWithRetry.body().getContentLength();
                    if (contentLength > MAX_WHEEL_BYTES) {
                        throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-79265638139439L) + pkg + Deobfuscator$exteraGramDev$TMessagesProj.getString(-79304292845103L) + contentLength + Deobfuscator$exteraGramDev$TMessagesProj.getString(-79373012321839L));
                    }
                    SimpliFile.writeFrom$default(SimpliFiles.file(file3), new SizeLimitedInputStream(responseExecuteWithRetry.body().byteStream(), MAX_WHEEL_BYTES), 0L, 2, null);
                    CloseableKt.closeFinally(responseExecuteWithRetry, null);
                    if (wheelCandidate.getExpectedSha256() != null && !StringsKt.equals(calculateSha256(file3), wheelCandidate.getExpectedSha256(), true)) {
                        throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-80107451729455L));
                    }
                    if (delegate != null) {
                        delegate.onProgress(Deobfuscator$exteraGramDev$TMessagesProj.getString(-80184761140783L) + pkg + ' ' + wheelCandidate.getVersion() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-80236300748335L));
                    }
                    SimpliFiles.archive(file3).withPolicy(wheelArchivePolicy).extractToDirectory(file2, ArchiveExtractionOptions.INSTANCE.builder().cancellationToken(new CancellationToken() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda2
                        @Override // org.simplifiles.archive.CancellationToken
                        public final boolean isCancellationRequested() {
                            return PipController.$r8$lambda$WCaEarcnhdtxiKzUVomzfeStLN0(delegate);
                        }
                    }).targetPolicy(ExtractionTargetPolicy.REPLACE).build());
                    if (libPath.exists()) {
                        SimpliFiles.directory(libPath).deleteRecursively();
                    }
                    SimpliFiles.directory(file2).moveTo(libPath, OverwritePolicy.REPLACE);
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        objM3291constructorimpl2 = Result.m3291constructorimpl(Boolean.valueOf(SimpliFiles.directory(file).deleteRecursively()));
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM3291constructorimpl2 = Result.m3291constructorimpl(ResultKt.createFailure(th));
                    }
                    Throwable thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(objM3291constructorimpl2);
                    if (thM3294exceptionOrNullimpl != null) {
                        FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-80253480617519L), thM3294exceptionOrNullimpl);
                    }
                    return wheelCandidate.getVersion();
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } catch (Throwable th2) {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    objM3291constructorimpl = Result.m3291constructorimpl(Boolean.valueOf(SimpliFiles.directory(file).deleteRecursively()));
                } catch (Throwable th3) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th3));
                }
                Throwable thM3294exceptionOrNullimpl2 = Result.m3294exceptionOrNullimpl(objM3291constructorimpl);
                if (thM3294exceptionOrNullimpl2 == null) {
                    throw th2;
                }
                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-60883178112559L), thM3294exceptionOrNullimpl2);
                throw th2;
            }
        } catch (Throwable th4) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int installPackage$lambda$1$1(String str, String str2) {
        return VersionComparator.INSTANCE.compare(str2, str);
    }

    public static boolean $r8$lambda$WCaEarcnhdtxiKzUVomzfeStLN0(InstallerDelegate installerDelegate) {
        return installerDelegate != null && installerDelegate.isCancelled();
    }

    private final WheelCandidate selectWheelCandidate(String version, JsonObject artifact, boolean allowYanked) {
        String stringOrNull;
        String stringOrNull2;
        String stringOrNull3 = getStringOrNull(artifact, Deobfuscator$exteraGramDev$TMessagesProj.getString(-60492336088623L));
        if (stringOrNull3 == null || !Intrinsics.areEqual(stringOrNull3, Deobfuscator$exteraGramDev$TMessagesProj.getString(-60543875696175L))) {
            return null;
        }
        if ((!allowYanked && Intrinsics.areEqual(getBooleanOrNull(artifact, Deobfuscator$exteraGramDev$TMessagesProj.getString(-60664134780463L)), Boolean.TRUE)) || (stringOrNull = getStringOrNull(artifact, Deobfuscator$exteraGramDev$TMessagesProj.getString(-60634070009391L))) == null || !isPurePythonWheelCompatible(stringOrNull)) {
            return null;
        }
        String stringOrNull4 = getStringOrNull(artifact, Deobfuscator$exteraGramDev$TMessagesProj.getString(-60732854257199L));
        if ((stringOrNull4 != null && !checkVersionSatisfies(pythonVersion, parseSpecs(stringOrNull4))) || (stringOrNull2 = getStringOrNull(artifact, Deobfuscator$exteraGramDev$TMessagesProj.getString(-61351329547823L))) == null) {
            return null;
        }
        JsonObject asJsonObject = artifact.getAsJsonObject(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61299789940271L));
        return new WheelCandidate(version, stringOrNull2, asJsonObject != null ? getStringOrNull(asJsonObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-61402869155375L)) : null);
    }

    private final String getStringOrNull(JsonObject jsonObject, String str) {
        JsonElement jsonElement;
        if (!jsonObject.has(str) || (jsonElement = jsonObject.get(str)) == null || jsonElement.isJsonNull()) {
            return null;
        }
        return jsonElement.getAsString();
    }

    private final Boolean getBooleanOrNull(JsonObject jsonObject, String str) {
        JsonElement jsonElement;
        Object objM3291constructorimpl;
        if (!jsonObject.has(str) || (jsonElement = jsonObject.get(str)) == null || jsonElement.isJsonNull()) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM3291constructorimpl = Result.m3291constructorimpl(Boolean.valueOf(jsonElement.getAsBoolean()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th));
        }
        return (Boolean) (Result.m3297isFailureimpl(objM3291constructorimpl) ? null : objM3291constructorimpl);
    }

    private final boolean isPurePythonWheelCompatible(String filename) {
        if (!StringsKt.endsWith$default(filename, Deobfuscator$exteraGramDev$TMessagesProj.getString(-61372804384303L), false, 2, (Object) null)) {
            return false;
        }
        List listSplit$default = StringsKt.split$default((CharSequence) StringsKt.removeSuffix(filename, (CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-61385689286191L)), new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-61484473533999L)}, false, 0, 6, (Object) null);
        if (listSplit$default.size() < 5) {
            return false;
        }
        String str = (String) listSplit$default.get(listSplit$default.size() - 3);
        String str2 = (String) listSplit$default.get(listSplit$default.size() - 2);
        String str3 = (String) listSplit$default.get(listSplit$default.size() - 1);
        if (Intrinsics.areEqual(str2, Deobfuscator$exteraGramDev$TMessagesProj.getString(-61493063468591L)) && Intrinsics.areEqual(str3, Deobfuscator$exteraGramDev$TMessagesProj.getString(-61437228893743L))) {
            List listSplit$default2 = StringsKt.split$default((CharSequence) str, new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-61454408762927L)}, false, 0, 6, (Object) null);
            if ((listSplit$default2 instanceof Collection) && listSplit$default2.isEmpty()) {
                return false;
            }
            Iterator it = listSplit$default2.iterator();
            while (it.hasNext()) {
                if (INSTANCE.isPythonTagCompatible((String) it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    private final boolean isPythonTagCompatible(String tag) {
        Integer intOrNull;
        Integer intOrNull2;
        List listSplit$default = StringsKt.split$default((CharSequence) pythonVersion, new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-61462998697519L)}, false, 0, 6, (Object) null);
        String str = (String) CollectionsKt.getOrNull(listSplit$default, 0);
        if (str != null && (intOrNull = StringsKt.toIntOrNull(str)) != null) {
            int iIntValue = intOrNull.intValue();
            String str2 = (String) CollectionsKt.getOrNull(listSplit$default, 1);
            if (str2 != null && (intOrNull2 = StringsKt.toIntOrNull(str2)) != null) {
                int iIntValue2 = intOrNull2.intValue();
                String lowerCase = tag.toLowerCase(Locale.ROOT);
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-61540308108847L);
                if (Intrinsics.areEqual(lowerCase, Deobfuscator$exteraGramDev$TMessagesProj.getString(-61072156673583L) + iIntValue)) {
                    return true;
                }
                if (Intrinsics.areEqual(lowerCase, Deobfuscator$exteraGramDev$TMessagesProj.getString(-61076451640879L) + iIntValue + iIntValue2)) {
                    return true;
                }
                Integer intOrNull3 = StringsKt.toIntOrNull(StringsKt.removePrefix(lowerCase, (CharSequence) (Deobfuscator$exteraGramDev$TMessagesProj.getString(-61029207000623L) + iIntValue)));
                if (intOrNull3 != null && intOrNull3.intValue() <= iIntValue2) {
                    return true;
                }
            }
        }
        return false;
    }

    private final Response executeWithRetry(Request request, InstallerDelegate delegate) throws IOException {
        int i = 0;
        IOException e = null;
        while (i < 3) {
            if (delegate != null && delegate.isCancelled()) {
                Model$$ExternalSyntheticBUOutline0.m964m(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61033501967919L));
                return null;
            }
            try {
                return client.newCall(request).execute();
            } catch (IOException e2) {
                e = e2;
                i++;
                FileLog.m899w(Deobfuscator$exteraGramDev$TMessagesProj.getString(-61209595627055L) + i + Deobfuscator$exteraGramDev$TMessagesProj.getString(-59659112433199L) + e.getMessage());
                try {
                    Thread.sleep(((long) i) * 1000);
                } catch (InterruptedException unused) {
                }
            }
        }
        if (delegate != null && delegate.isCancelled()) {
            Model$$ExternalSyntheticBUOutline0.m964m(Deobfuscator$exteraGramDev$TMessagesProj.getString(-59753601713711L));
            return null;
        }
        if (e != null) {
            throw e;
        }
        throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-59792256419375L));
    }

    private final String findVersionOnDisk(String pkg, final List<Pair<String, String>> specs) {
        Sequence sequenceAsSequence;
        Sequence sequenceFilter;
        Sequence map;
        Sequence sequenceFilter2;
        List<String> list;
        final String str = pkg + SignatureVisitor.SUPER;
        File[] fileArrListFiles = getLibsDir().listFiles();
        if (fileArrListFiles == null || (sequenceAsSequence = ArraysKt.asSequence(fileArrListFiles)) == null || (sequenceFilter = SequencesKt.filter(sequenceAsSequence, new Function1() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(PipController.m2304$r8$lambda$3qb6Nezx6TG2Tac1y7Xa35y3cA(str, (File) obj));
            }
        })) == null || (map = SequencesKt.map(sequenceFilter, new Function1() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PipController.m2307$r8$lambda$LmFvS3nVC4K08Dx0OuVVeARUQM(str, (File) obj);
            }
        })) == null || (sequenceFilter2 = SequencesKt.filter(map, new Function1() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(PipController.m2306$r8$lambda$GBc8aKnKaBWkdqFW6gQZ9PEPeQ(specs, (String) obj));
            }
        })) == null || (list = SequencesKt.toList(sequenceFilter2)) == null) {
            return null;
        }
        return (String) CollectionsKt.maxWithOrNull(filterPreReleases(list, specs), VersionComparator.INSTANCE);
    }

    /* JADX INFO: renamed from: $r8$lambda$3qb6Nezx6TG2Tac-1y7Xa35y3cA, reason: not valid java name */
    public static boolean m2304$r8$lambda$3qb6Nezx6TG2Tac1y7Xa35y3cA(String str, File file) {
        if (file.isDirectory()) {
            String name = file.getName();
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-58413571917359L);
            if (StringsKt.startsWith$default(name, str, false, 2, (Object) null)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: $r8$lambda$Lm-FvS3nVC4K08Dx0OuVVeARUQM, reason: not valid java name */
    public static String m2307$r8$lambda$LmFvS3nVC4K08Dx0OuVVeARUQM(String str, File file) {
        String name = file.getName();
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-58546715903535L);
        String strSubstring = name.substring(str.length());
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-59143716357679L);
        return strSubstring;
    }

    /* JADX INFO: renamed from: $r8$lambda$GBc-8aKnKaBWkdqFW6gQZ9PEPeQ, reason: not valid java name */
    public static boolean m2306$r8$lambda$GBc8aKnKaBWkdqFW6gQZ9PEPeQ(List list, String str) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-59216730801711L);
        return str.length() > 0 && INSTANCE.checkVersionSatisfies(str, list);
    }

    private final String findInstalledVersion(String pkg, List<Pair<String, String>> specs) {
        ConcurrentHashMap<String, Set<String>> concurrentHashMap = registry.get(pkg);
        if (concurrentHashMap == null) {
            return null;
        }
        Set<String> setKeySet = concurrentHashMap.keySet();
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-59886745699887L);
        ArrayList arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            if (INSTANCE.checkVersionSatisfies((String) obj, specs)) {
                arrayList.add(obj);
            }
        }
        return (String) CollectionsKt.maxWithOrNull(filterPreReleases(arrayList, specs), VersionComparator.INSTANCE);
    }

    private final File getLibPath(String pkg, String version) throws IOException {
        if (StringsKt.contains$default((CharSequence) version, (CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-59405709362735L), false, 2, (Object) null) || StringsKt.contains$default((CharSequence) version, (CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-59483018774063L), false, 2, (Object) null) || StringsKt.contains$default((CharSequence) version, (CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-59491608708655L), false, 2, (Object) null)) {
            throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-59495903675951L) + version);
        }
        return new File(getLibsDir(), pkg + SignatureVisitor.SUPER + version);
    }

    private final void deletePackage(String pkg, String version) throws IOException {
        Object objM3291constructorimpl;
        File libPath = getLibPath(pkg, version);
        if (libPath.exists()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                SimpliFiles.directory(libPath).deleteRecursively();
                FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-59573213087279L) + libPath.getName());
                objM3291constructorimpl = Result.m3291constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(objM3291constructorimpl);
            if (thM3294exceptionOrNullimpl != null) {
                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-60260407854639L) + libPath.getName(), thM3294exceptionOrNullimpl);
            }
        }
    }

    private final Pair<String, List<Pair<String, String>>> parseRequirement(String req) {
        String string = StringsKt.trim((CharSequence) REGEX_REQ_PAREN.replace(StringsKt.trim((CharSequence) REGEX_REQ_EXTRA.replace(StringsKt.trim((CharSequence) StringsKt.split$default((CharSequence) req, new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-60445091448367L)}, false, 0, 6, (Object) null).get(0)).toString(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-60453681382959L))).toString(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-60449386415663L))).toString();
        MatchResult matchResultFind$default = Regex.find$default(REGEX_REQ_PARSE, string, 0, 2, null);
        if (matchResultFind$default == null) {
            return TuplesKt.to(string, CollectionsKt.emptyList());
        }
        MatchResult.Destructured destructured = matchResultFind$default.getDestructured();
        return TuplesKt.to(destructured.getMatch().getGroupValues().get(1), parseSpecs(destructured.getMatch().getGroupValues().get(2)));
    }

    private final List<Pair<String, String>> parseSpecs(String specsString) {
        ArrayList arrayList = new ArrayList();
        if (!StringsKt.isBlank(specsString)) {
            Iterator it = StringsKt.split$default((CharSequence) specsString, new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-60462271317551L)}, false, 0, 6, (Object) null).iterator();
            while (it.hasNext()) {
                MatchResult matchResultFind$default = Regex.find$default(REGEX_REQ_SPECS, StringsKt.trim((CharSequence) it.next()).toString(), 0, 2, null);
                if (matchResultFind$default != null) {
                    MatchResult.Destructured destructured = matchResultFind$default.getDestructured();
                    arrayList.add(TuplesKt.to(destructured.getMatch().getGroupValues().get(1), StringsKt.trim((CharSequence) destructured.getMatch().getGroupValues().get(2)).toString()));
                }
            }
        }
        return arrayList;
    }

    private final List<String> parseDependenciesFromMetadata(File metadataFile) {
        final ArrayList arrayList = new ArrayList();
        try {
            SimpliFile.forEachLine$default(SimpliFiles.file(metadataFile), 4194304L, null, new Function1() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PipController.$r8$lambda$3nEd9lhKtncIBzZ9CAoypYcXEk4(arrayList, (String) obj);
                }
            }, 2, null);
            return arrayList;
        } catch (Exception e) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-60470861252143L), e);
            return arrayList;
        }
    }

    public static Unit $r8$lambda$3nEd9lhKtncIBzZ9CAoypYcXEk4(List list, String str) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-59182371063343L);
        if (StringsKt.startsWith$default(str, Deobfuscator$exteraGramDev$TMessagesProj.getString(-59195255965231L), false, 2, (Object) null)) {
            String strSubstring = str.substring(14);
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-59268270409263L);
            String string = StringsKt.trim((CharSequence) strSubstring).toString();
            if (StringsKt.contains$default((CharSequence) string, (CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-59324104984111L), false, 2, (Object) null)) {
                List listSplit$default = StringsKt.split$default((CharSequence) string, new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-59332694918703L)}, false, 2, 2, (Object) null);
                if (!INSTANCE.isMarkerCompatible(StringsKt.trim((CharSequence) listSplit$default.get(1)).toString())) {
                    return Unit.INSTANCE;
                }
                list.add(StringsKt.trim((CharSequence) listSplit$default.get(0)).toString());
            } else {
                list.add(string);
            }
        }
        return Unit.INSTANCE;
    }

    private final boolean isMarkerCompatible(String marker) {
        return new MarkerParser(marker).parse();
    }

    private final File findMetadataFile(String pkg, String version) {
        File[] fileArrListFiles = getLibPath(pkg, version).listFiles(new FilenameFilter() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda11
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                return StringsKt.endsWith$default(str, Deobfuscator$exteraGramDev$TMessagesProj.getString(-58860248516143L), false, 2, (Object) null);
            }
        });
        File file = fileArrListFiles != null ? (File) ArraysKt.firstOrNull(fileArrListFiles) : null;
        if (file != null) {
            return new File(file, Deobfuscator$exteraGramDev$TMessagesProj.getString(-60024184653359L));
        }
        return null;
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0017\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\n\u001a\u00020\u000bJ\b\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\r\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u000bH\u0002J\b\u0010\u000f\u001a\u00020\u000bH\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0002J \u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0003H\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0016\u001a\u00020\u0003H\u0002J\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00032\b\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u0002J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0003H\u0002J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0003H\u0002J\u0010\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u0003H\u0002J\u0010\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u0003H\u0002J\n\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u0002J\u0014\u0010 \u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010!\u001a\u00020\tH\u0002R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/exteragram/messenger/plugins/pip/PipController$MarkerParser;", _UrlKt.FRAGMENT_ENCODE_SET, "marker", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;)V", "tokens", _UrlKt.FRAGMENT_ENCODE_SET, "position", _UrlKt.FRAGMENT_ENCODE_SET, "parse", _UrlKt.FRAGMENT_ENCODE_SET, "parseOr", "parseAnd", "parseFactor", "parseComparison", "nextOperator", "evaluateComparison", "left", "operator", "right", "markerVariableName", "token", "markerValue", "name", "invertVersionOperator", "unquote", "value", "match", "expected", "matchKeyword", "next", "peek", "offset", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class MarkerParser {
        private int position;
        private final List<String> tokens;

        public MarkerParser(String str) {
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-70920516683311L);
            this.tokens = SequencesKt.toList(SequencesKt.map(Regex.findAll$default(PipController.REGEX_MARKER_TOKEN, str, 0, 2, null), new Function1() { // from class: com.exteragram.messenger.plugins.pip.PipController$MarkerParser$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PipController.MarkerParser.$r8$lambda$2nxjO8cTPCazwOsauAZxX68kyv8((MatchResult) obj);
                }
            }));
        }

        public static String $r8$lambda$2nxjO8cTPCazwOsauAZxX68kyv8(MatchResult matchResult) {
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-86756061103663L);
            return matchResult.getValue();
        }

        public final boolean parse() {
            if (this.tokens.isEmpty()) {
                return true;
            }
            try {
                return parseOr();
            } catch (Exception e) {
                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-71027890865711L) + CollectionsKt.joinToString$default(this.tokens, Deobfuscator$exteraGramDev$TMessagesProj.getString(-71135265048111L), null, null, 0, null, null, 62, null), e);
                return true;
            }
        }

        private final boolean parseOr() {
            boolean and = parseAnd();
            while (matchKeyword(Deobfuscator$exteraGramDev$TMessagesProj.getString(-71143854982703L))) {
                and = and || parseAnd();
            }
            return and;
        }

        private final boolean parseAnd() {
            boolean factor = parseFactor();
            while (matchKeyword(Deobfuscator$exteraGramDev$TMessagesProj.getString(-87176967898671L))) {
                factor = factor && parseFactor();
            }
            return factor;
        }

        private final boolean parseFactor() {
            if (match(Deobfuscator$exteraGramDev$TMessagesProj.getString(-87194147767855L))) {
                boolean or = parseOr();
                match(Deobfuscator$exteraGramDev$TMessagesProj.getString(-87202737702447L));
                return or;
            }
            return parseComparison();
        }

        private final boolean parseComparison() {
            String strNextOperator;
            String next;
            String next2 = next();
            if (next2 == null || (strNextOperator = nextOperator()) == null || (next = next()) == null) {
                return true;
            }
            return evaluateComparison(next2, strNextOperator, next);
        }

        private final String nextOperator() {
            String lowerCase;
            String strPeek$default = peek$default(this, 0, 1, null);
            if (strPeek$default == null) {
                return null;
            }
            Locale locale = Locale.ROOT;
            String lowerCase2 = strPeek$default.toLowerCase(locale);
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-87142608160303L);
            if (Intrinsics.areEqual(lowerCase2, Deobfuscator$exteraGramDev$TMessagesProj.getString(-87207032669743L))) {
                String strPeek = peek(1);
                if (strPeek != null) {
                    lowerCase = strPeek.toLowerCase(locale);
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-87224212538927L);
                } else {
                    lowerCase = null;
                }
                if (Intrinsics.areEqual(lowerCase, Deobfuscator$exteraGramDev$TMessagesProj.getString(-87305816917551L))) {
                    this.position += 2;
                    return Deobfuscator$exteraGramDev$TMessagesProj.getString(-87378831361583L);
                }
            }
            int iHashCode = lowerCase2.hashCode();
            if (iHashCode == 60 ? !lowerCase2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-86919269860911L)) : !(iHashCode == 62 ? lowerCase2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-86876320187951L)) : iHashCode == 1084 ? lowerCase2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-86897795024431L)) : iHashCode == 1921 ? lowerCase2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-87353061557807L)) : iHashCode == 1952 ? lowerCase2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-87348766590511L)) : iHashCode == 1983 ? lowerCase2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-86884910122543L)) : iHashCode == 3365 ? lowerCase2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-87374536394287L)) : iHashCode == 3967 ? lowerCase2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-86889205089839L)) : iHashCode == 60573 && lowerCase2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-86927859795503L)))) {
                return null;
            }
            this.position++;
            return lowerCase2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:51:0x00c6, code lost:
        
            if (r9.equals(org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj.getString(-87829802927663L)) == false) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00eb, code lost:
        
            if (r9.equals(org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj.getString(-87761083450927L)) == false) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00f2, code lost:
        
            return kotlin.text.StringsKt.equals(r2, r8, true);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private final boolean evaluateComparison(String left, String operator, String right) {
            String strMarkerVariableName = markerVariableName(left);
            String strMarkerVariableName2 = markerVariableName(right);
            String strMarkerValue = markerValue(strMarkerVariableName);
            if (strMarkerValue == null) {
                strMarkerValue = unquote(left);
            }
            String strMarkerValue2 = markerValue(strMarkerVariableName2);
            if (strMarkerValue2 == null) {
                strMarkerValue2 = unquote(right);
            }
            if (strMarkerVariableName != null && markerValue(strMarkerVariableName) == null) {
                return true;
            }
            if (strMarkerVariableName2 != null && markerValue(strMarkerVariableName2) == null) {
                return true;
            }
            boolean z = Intrinsics.areEqual(strMarkerVariableName, Deobfuscator$exteraGramDev$TMessagesProj.getString(-86979399403055L)) || Intrinsics.areEqual(strMarkerVariableName, Deobfuscator$exteraGramDev$TMessagesProj.getString(-87035233977903L));
            boolean z2 = Intrinsics.areEqual(strMarkerVariableName2, Deobfuscator$exteraGramDev$TMessagesProj.getString(-87121133323823L)) || Intrinsics.areEqual(strMarkerVariableName2, Deobfuscator$exteraGramDev$TMessagesProj.getString(-87743903581743L));
            if (z && !z2) {
                return PipController.INSTANCE.checkVersionSatisfies(strMarkerValue, CollectionsKt.listOf(TuplesKt.to(operator, strMarkerValue2)));
            }
            if (z2 && !z) {
                return PipController.INSTANCE.checkVersionSatisfies(strMarkerValue2, CollectionsKt.listOf(TuplesKt.to(invertVersionOperator(operator), strMarkerValue)));
            }
            int iHashCode = operator.hashCode();
            if (iHashCode == -1039759982) {
                return (operator.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-87765378418223L)) && StringsKt.contains((CharSequence) strMarkerValue2, (CharSequence) strMarkerValue, true)) ? false : true;
            }
            if (iHashCode == 1084) {
                return (operator.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-87877047567919L)) && StringsKt.equals(strMarkerValue, strMarkerValue2, true)) ? false : true;
            }
            if (iHashCode != 1952) {
                if (iHashCode != 3365) {
                    if (iHashCode == 60573) {
                    }
                } else if (operator.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-87872752600623L))) {
                    return StringsKt.contains((CharSequence) strMarkerValue2, (CharSequence) strMarkerValue, true);
                }
            }
            return true;
        }

        private final String markerVariableName(String token) {
            if (!StringsKt.startsWith$default(token, Deobfuscator$exteraGramDev$TMessagesProj.getString(-87846982796847L), false, 2, (Object) null) && !StringsKt.startsWith$default(token, Deobfuscator$exteraGramDev$TMessagesProj.getString(-87855572731439L), false, 2, (Object) null)) {
                String lowerCase = token.toLowerCase(Locale.ROOT);
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-87932882142767L);
                if (new Regex(Deobfuscator$exteraGramDev$TMessagesProj.getString(-87447550838319L)).matches(lowerCase)) {
                    return lowerCase;
                }
            }
            return null;
        }

        private final String markerValue(String name) {
            if (name == null) {
                return null;
            }
            switch (name.hashCode()) {
                case -1182845946:
                    if (name.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-86043096532527L))) {
                        return Deobfuscator$exteraGramDev$TMessagesProj.getString(-85858412938799L);
                    }
                    return null;
                case -920496011:
                    if (name.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-87662299203119L))) {
                        return CollectionsKt.joinToString$default(CollectionsKt.take(StringsKt.split$default((CharSequence) PipController.INSTANCE.getPythonVersion(), new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-85952902219311L)}, false, 0, 6, (Object) null), 2), Deobfuscator$exteraGramDev$TMessagesProj.getString(-85961492153903L), null, null, 0, null, null, 62, null);
                    }
                    return null;
                case -193632853:
                    if (name.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-86270729799215L))) {
                        return PipController.INSTANCE.getPythonVersion();
                    }
                    return null;
                case 96965648:
                    if (name.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-86086046205487L))) {
                        return Deobfuscator$exteraGramDev$TMessagesProj.getString(-85970082088495L);
                    }
                    return null;
                case 117846437:
                    if (name.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-87615054562863L))) {
                        return Deobfuscator$exteraGramDev$TMessagesProj.getString(-85875592807983L);
                    }
                    return null;
                case 178915064:
                    if (name.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-87529155216943L))) {
                        return Deobfuscator$exteraGramDev$TMessagesProj.getString(-85901362611759L);
                    }
                    return null;
                case 1653682043:
                    if (name.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-86202010322479L))) {
                        return Deobfuscator$exteraGramDev$TMessagesProj.getString(-85832643135023L);
                    }
                    return null;
                case 1746933417:
                    if (name.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-86146175747631L))) {
                        return Deobfuscator$exteraGramDev$TMessagesProj.getString(-86004441826863L);
                    }
                    return null;
                default:
                    return null;
            }
        }

        private final String invertVersionOperator(String operator) {
            int iHashCode = operator.hashCode();
            if (iHashCode != 60) {
                if (iHashCode != 62) {
                    if (iHashCode != 1921) {
                        if (iHashCode == 1983 && operator.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-86622917117487L))) {
                            return Deobfuscator$exteraGramDev$TMessagesProj.getString(-86652981888559L);
                        }
                    } else if (operator.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-85982966990383L))) {
                        return Deobfuscator$exteraGramDev$TMessagesProj.getString(-86597147313711L);
                    }
                } else if (operator.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-85995851892271L))) {
                    return Deobfuscator$exteraGramDev$TMessagesProj.getString(-86644391953967L);
                }
            } else if (operator.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-85987261957679L))) {
                return Deobfuscator$exteraGramDev$TMessagesProj.getString(-86588557379119L);
            }
            return operator;
        }

        private final String unquote(String value) {
            if (value.length() >= 2) {
                char cFirst = StringsKt.first(value);
                char cLast = StringsKt.last(value);
                if ((cFirst == '\'' && cLast == '\'') || (cFirst == '\"' && cLast == '\"')) {
                    String strSubstring = value.substring(1, value.length() - 1);
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-86618622150191L);
                    return strSubstring;
                }
            }
            return value;
        }

        private final boolean match(String expected) {
            if (!Intrinsics.areEqual(peek$default(this, 0, 1, null), expected)) {
                return false;
            }
            this.position++;
            return true;
        }

        private final boolean matchKeyword(String expected) {
            String lowerCase = null;
            String strPeek$default = peek$default(this, 0, 1, null);
            if (strPeek$default != null) {
                lowerCase = strPeek$default.toLowerCase(Locale.ROOT);
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-86674456725039L);
            }
            if (!Intrinsics.areEqual(lowerCase, expected)) {
                return false;
            }
            this.position++;
            return true;
        }

        private final String next() {
            String strPeek$default = peek$default(this, 0, 1, null);
            if (strPeek$default == null) {
                return null;
            }
            this.position++;
            return strPeek$default;
        }

        public static /* synthetic */ String peek$default(MarkerParser markerParser, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = 0;
            }
            return markerParser.peek(i);
        }

        private final String peek(int offset) {
            return (String) CollectionsKt.getOrNull(this.tokens, this.position + offset);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean checkVersionSatisfies(String version, List<Pair<String, String>> specs) {
        boolean zMatchesVersionWildcard;
        if (specs.isEmpty()) {
            return true;
        }
        for (Pair<String, String> pair : specs) {
            String strComponent1 = pair.component1();
            String strComponent2 = pair.component2();
            VersionComparator versionComparator = VersionComparator.INSTANCE;
            int iCompare = versionComparator.compare(version, strComponent2);
            int iHashCode = strComponent1.hashCode();
            if (iHashCode != 60) {
                if (iHashCode != 62) {
                    if (iHashCode != 1084) {
                        if (iHashCode != 1921) {
                            if (iHashCode != 1952) {
                                if (iHashCode == 1983) {
                                    zMatchesVersionWildcard = !strComponent1.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-60135853803055L)) || iCompare >= 0;
                                } else if (iHashCode != 3967) {
                                    if (iHashCode == 60573 && strComponent1.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-60178803476015L))) {
                                        zMatchesVersionWildcard = Intrinsics.areEqual(version, strComponent2);
                                    }
                                } else if (strComponent1.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-60140148770351L))) {
                                    if (iCompare >= 0) {
                                        List mutableList = CollectionsKt.toMutableList((Collection) StringsKt.split$default((CharSequence) strComponent2, new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-60161623606831L)}, false, 0, 6, (Object) null));
                                        if (mutableList.size() >= 2) {
                                            mutableList.remove(CollectionsKt.getLastIndex(mutableList));
                                            int lastIndex = CollectionsKt.getLastIndex(mutableList);
                                            Integer intOrNull = StringsKt.toIntOrNull((String) mutableList.get(lastIndex));
                                            if (intOrNull != null) {
                                                mutableList.set(lastIndex, String.valueOf(intOrNull.intValue() + 1));
                                                if (versionComparator.compare(version, CollectionsKt.joinToString$default(mutableList, Deobfuscator$exteraGramDev$TMessagesProj.getString(-58589665576495L), null, null, 0, null, null, 62, null)) < 0) {
                                                }
                                            }
                                        }
                                    }
                                }
                            } else if (strComponent1.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-60122968901167L))) {
                                if (isWildcardVersionSpec(strComponent2)) {
                                    zMatchesVersionWildcard = matchesVersionWildcard(version, strComponent2);
                                } else if (iCompare == 0) {
                                }
                            }
                        } else if (strComponent1.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-60075724260911L)) && iCompare > 0) {
                        }
                    } else if (strComponent1.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-60088609162799L)) && (!isWildcardVersionSpec(strComponent2) ? iCompare == 0 : matchesVersionWildcard(version, strComponent2))) {
                    }
                } else if (strComponent1.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-60195983345199L)) && iCompare <= 0) {
                }
            } else if (strComponent1.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-60080019228207L)) && iCompare >= 0) {
            }
            if (!zMatchesVersionWildcard) {
                return false;
            }
        }
        return true;
    }

    private final boolean isWildcardVersionSpec(String spec) {
        return REGEX_VERSION_WILDCARD.containsMatchIn(StringsKt.trim((CharSequence) spec).toString());
    }

    private final List<String> filterPreReleases(List<String> versions, List<Pair<String, String>> specs) {
        if (versions.isEmpty() || specsAllowPreRelease(specs)) {
            return versions;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : versions) {
            if (!INSTANCE.isPreReleaseVersion((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            versions = arrayList;
        }
        return versions;
    }

    private final boolean specsAllowPreRelease(List<Pair<String, String>> specs) {
        List<Pair<String, String>> list = specs;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (INSTANCE.isPreReleaseVersion((String) ((Pair) it.next()).component2())) {
                return true;
            }
        }
        return false;
    }

    private final boolean isPreReleaseVersion(String version) {
        List<String> parts = parseVersion(version).getParts();
        if ((parts instanceof Collection) && parts.isEmpty()) {
            return false;
        }
        for (String str : parts) {
            switch (str.hashCode()) {
                case 97:
                    if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-58598255511087L))) {
                        return true;
                    }
                    break;
                    break;
                case 98:
                    if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-58611140412975L))) {
                        return true;
                    }
                    break;
                    break;
                case 99:
                    if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-58551010870831L))) {
                        return true;
                    }
                    break;
                    break;
                case 3633:
                    if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-58606845445679L))) {
                        return true;
                    }
                    break;
                    break;
                case 99349:
                    if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-58559600805423L))) {
                        return true;
                    }
                    break;
                    break;
                case 3020272:
                    if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-58671269955119L))) {
                        return true;
                    }
                    break;
                    break;
                case 92909918:
                    if (str.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-58576780674607L))) {
                        return true;
                    }
                    break;
                    break;
            }
        }
        return false;
    }

    private final boolean matchesVersionWildcard(String version, String spec) {
        String strTrimEnd = StringsKt.trimEnd(StringsKt.removeSuffix(StringsKt.removeSuffix(StringsKt.removeSuffix(StringsKt.substringBefore$default(StringsKt.trim((CharSequence) spec).toString(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-58632615249455L), (String) null, 2, (Object) null), (CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-58641205184047L)), (CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-58645500151343L)), (CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-58735694464559L)), '.', SignatureVisitor.SUPER, '_');
        ParsedVersion version2 = parseVersion(strTrimEnd);
        ParsedVersion version3 = parseVersion(version);
        if (StringsKt.contains$default((CharSequence) strTrimEnd, (CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-58739989431855L), false, 2, (Object) null) && version2.getEpoch() != version3.getEpoch()) {
            return false;
        }
        List<Integer> versionReleaseParts = parseVersionReleaseParts(strTrimEnd);
        if (versionReleaseParts.isEmpty()) {
            return true;
        }
        List<Integer> versionReleaseParts2 = parseVersionReleaseParts(version);
        if (versionReleaseParts2.size() < versionReleaseParts.size()) {
            return false;
        }
        Iterable indices = CollectionsKt.getIndices(versionReleaseParts);
        if ((indices instanceof Collection) && ((Collection) indices).isEmpty()) {
            return true;
        }
        Iterator it = indices.iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            if (versionReleaseParts2.get(iNextInt).intValue() != versionReleaseParts.get(iNextInt).intValue()) {
                return false;
            }
        }
        return true;
    }

    private final List<Integer> parseVersionReleaseParts(String version) {
        List<String> listSplit = new Regex(Deobfuscator$exteraGramDev$TMessagesProj.getString(-58748579366447L)).split(parseVersion(version).getPublicVersion(), 0);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listSplit.iterator();
        while (it.hasNext()) {
            Integer intOrNull = StringsKt.toIntOrNull((String) it.next());
            if (intOrNull != null) {
                arrayList.add(intOrNull);
            }
        }
        return arrayList;
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\n\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0016J\b\u0010\u000f\u001a\u00020\tH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/exteragram/messenger/plugins/pip/PipController$SizeLimitedInputStream;", "Ljava/io/InputStream;", "delegate", "maxBytes", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/io/InputStream;J)V", "total", "track", _UrlKt.FRAGMENT_ENCODE_SET, "read", "b", _UrlKt.FRAGMENT_ENCODE_SET, "off", "len", "available", "close", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class SizeLimitedInputStream extends InputStream {
        private final InputStream delegate;
        private final long maxBytes;
        private long total;

        public SizeLimitedInputStream(InputStream inputStream, long j) {
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-86829075547695L);
            this.delegate = inputStream;
            this.maxBytes = j;
        }

        private final int track(int read) throws IOException {
            if (read > 0) {
                long j = this.total + ((long) read);
                this.total = j;
                if (j > this.maxBytes) {
                    throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-86807600711215L) + this.maxBytes + Deobfuscator$exteraGramDev$TMessagesProj.getString(-86506953000495L));
                }
            }
            return read;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            int i = this.delegate.read();
            if (i != -1) {
                track(1);
            }
            return i;
        }

        @Override // java.io.InputStream
        public int read(byte[] b2, int off, int len) {
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-86459708360239L);
            return track(this.delegate.read(b2, off, len));
        }

        @Override // java.io.InputStream
        public int available() {
            return this.delegate.available();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.delegate.close();
        }
    }

    private final String calculateSha256(File file) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(Deobfuscator$exteraGramDev$TMessagesProj.getString(-58718514595375L));
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i != -1) {
                    messageDigest.update(bArr, 0, i);
                } else {
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(fileInputStream, null);
                    byte[] bArrDigest = messageDigest.digest();
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-58821593810479L);
                    return ArraysKt.joinToString$default(bArrDigest, (CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-58323377604143L), (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return PipController.$r8$lambda$7CZkhP2Pq3JYvkGUBl8vqtaliPk(((Byte) obj).byteValue());
                        }
                    }, 30, (Object) null);
                }
            }
        } finally {
        }
    }

    public static CharSequence $r8$lambda$7CZkhP2Pq3JYvkGUBl8vqtaliPk(byte b2) {
        String str = String.format(Deobfuscator$exteraGramDev$TMessagesProj.getString(-58847363614255L), Arrays.copyOf(new Object[]{Byte.valueOf(b2)}, 1));
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-58928967992879L);
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ParsedVersion parseVersion(String version) {
        Integer intOrNull;
        String lowerCase = StringsKt.trim((CharSequence) version).toString().toLowerCase(Locale.ROOT);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-58319082636847L);
        List listSplit$default = StringsKt.split$default((CharSequence) StringsKt.substringBefore$default(StringsKt.removePrefix(lowerCase, (CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-58400687015471L)), Deobfuscator$exteraGramDev$TMessagesProj.getString(-58409276950063L), (String) null, 2, (Object) null), new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-58349147407919L)}, false, 2, 2, (Object) null);
        int iIntValue = (listSplit$default.size() != 2 || (intOrNull = StringsKt.toIntOrNull((String) listSplit$default.get(0))) == null) ? 0 : intOrNull.intValue();
        String str = (String) (listSplit$default.size() == 2 ? listSplit$default.get(1) : listSplit$default.get(0));
        return new ParsedVersion(iIntValue, str, SequencesKt.toList(SequencesKt.map(Regex.findAll$default(REGEX_VERSION_SPLIT, str, 0, 2, null), new Function1() { // from class: com.exteragram.messenger.plugins.pip.PipController$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PipController.m2303$r8$lambda$0MJ3GR4HlLQMQMAksazHxJXIE((MatchResult) obj);
            }
        })));
    }

    /* JADX INFO: renamed from: $r8$lambda$0MJ3GR4HlLQMQMAks-azHx-JXIE, reason: not valid java name */
    public static String m2303$r8$lambda$0MJ3GR4HlLQMQMAksazHxJXIE(MatchResult matchResult) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-58911788123695L);
        return matchResult.getValue();
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\bÂ\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0002H\u0002¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/plugins/pip/PipController$VersionComparator;", "Ljava/util/Comparator;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/Comparator;", "<init>", "()V", "compare", _UrlKt.FRAGMENT_ENCODE_SET, "v1", "v2", "getWeight", "s", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class VersionComparator implements Comparator<String> {
        public static final VersionComparator INSTANCE = new VersionComparator();

        private VersionComparator() {
        }

        @Override // java.util.Comparator
        public int compare(String v1, String v2) {
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-70370760869423L);
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-70392235705903L);
            PipController pipController = PipController.INSTANCE;
            ParsedVersion version = pipController.parseVersion(v1);
            ParsedVersion version2 = pipController.parseVersion(v2);
            int iCompare = Intrinsics.compare(version.getEpoch(), version2.getEpoch());
            if (iCompare != 0) {
                return iCompare;
            }
            List<String> parts = version.getParts();
            List<String> parts2 = version2.getParts();
            int iMax = Math.max(parts.size(), parts2.size());
            for (int i = 0; i < iMax; i++) {
                String string = (String) CollectionsKt.getOrNull(parts, i);
                String string2 = (String) CollectionsKt.getOrNull(parts2, i);
                if (string == null) {
                    if ((string2 != null ? StringsKt.toIntOrNull(string2) : null) != null) {
                        string = Deobfuscator$exteraGramDev$TMessagesProj.getString(-70396530673199L);
                    }
                }
                if (string2 == null) {
                    if ((string != null ? StringsKt.toIntOrNull(string) : null) != null) {
                        string2 = Deobfuscator$exteraGramDev$TMessagesProj.getString(-70473840084527L);
                    }
                }
                if (string == null) {
                    string = Deobfuscator$exteraGramDev$TMessagesProj.getString(-70482430019119L);
                }
                if (string2 == null) {
                    string2 = Deobfuscator$exteraGramDev$TMessagesProj.getString(-70495314921007L);
                }
                if (!Intrinsics.areEqual(string, string2)) {
                    Integer intOrNull = StringsKt.toIntOrNull(string);
                    Integer intOrNull2 = StringsKt.toIntOrNull(string2);
                    if (intOrNull != null && intOrNull2 != null) {
                        int iCompare2 = Intrinsics.compare(intOrNull.intValue(), intOrNull2.intValue());
                        if (iCompare2 != 0) {
                            return iCompare2;
                        }
                    } else {
                        if (intOrNull != null) {
                            return 1;
                        }
                        if (intOrNull2 != null) {
                            return -1;
                        }
                        int weight = getWeight(string);
                        int weight2 = getWeight(string2);
                        if (weight != weight2) {
                            return Intrinsics.compare(weight, weight2);
                        }
                        int iCompareTo = string.compareTo(string2);
                        if (iCompareTo != 0) {
                            return iCompareTo;
                        }
                    }
                }
            }
            return 0;
        }

        private final int getWeight(String s) {
            if (Intrinsics.areEqual(s, Deobfuscator$exteraGramDev$TMessagesProj.getString(-70491019953711L))) {
                return 110;
            }
            if (s.length() == 0) {
                return 100;
            }
            if (Intrinsics.areEqual(s, Deobfuscator$exteraGramDev$TMessagesProj.getString(-70452365248047L)) || Intrinsics.areEqual(s, Deobfuscator$exteraGramDev$TMessagesProj.getString(-70456660215343L))) {
                return 80;
            }
            if (Intrinsics.areEqual(s, Deobfuscator$exteraGramDev$TMessagesProj.getString(-70465250149935L)) || Intrinsics.areEqual(s, Deobfuscator$exteraGramDev$TMessagesProj.getString(-70564034397743L))) {
                return 70;
            }
            if (Intrinsics.areEqual(s, Deobfuscator$exteraGramDev$TMessagesProj.getString(-70572624332335L)) || Intrinsics.areEqual(s, Deobfuscator$exteraGramDev$TMessagesProj.getString(-70529674659375L))) {
                return 60;
            }
            return Intrinsics.areEqual(s, Deobfuscator$exteraGramDev$TMessagesProj.getString(-70538264593967L)) ? 50 : 0;
        }
    }
}
