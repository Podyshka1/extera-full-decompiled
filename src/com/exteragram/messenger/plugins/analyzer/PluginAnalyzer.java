package com.exteragram.messenger.plugins.analyzer;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteException;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.analyzer.PluginAnalyzer;
import com.sun.jna.Callback;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildConfig;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¥\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b*\u00011\bÆ\u0002\u0018\u00002\u00020\u0001:\u0004cdefB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020D2\u0012\u0010E\u001a\u000e\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020H0FJ\b\u0010I\u001a\u00020HH\u0002J\u0018\u0010J\u001a\u00020G2\u0006\u0010C\u001a\u00020D2\u0006\u0010K\u001a\u00020BH\u0002J\u0012\u0010L\u001a\u0004\u0018\u00010M2\u0006\u0010N\u001a\u00020=H\u0002J\u0016\u0010O\u001a\u0010\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u0005\u0018\u00010PH\u0002J\u0018\u0010Q\u001a\u00020H2\u0006\u0010R\u001a\u00020*2\u0006\u0010S\u001a\u00020\rH\u0002J\u0010\u0010T\u001a\u00020\r2\u0006\u0010U\u001a\u00020\u0005H\u0002J\u0018\u0010V\u001a\u00020H2\u0006\u0010R\u001a\u00020*2\u0006\u0010W\u001a\u00020\u001eH\u0002JL\u0010X\u001a\u0002HY\"\u0004\b\u0000\u0010Y2\u0006\u0010W\u001a\u00020\u001e2\u0006\u0010Z\u001a\u00020\u00052\u0012\u0010[\u001a\u000e\u0012\u0004\u0012\u00020\\\u0012\u0004\u0012\u00020H0F2\u0012\u0010]\u001a\u000e\u0012\u0004\u0012\u00020\\\u0012\u0004\u0012\u0002HY0FH\u0082\b¢\u0006\u0002\u0010^J\n\u0010_\u001a\u0004\u0018\u00010\u001eH\u0002J\u0010\u0010`\u001a\u00020H2\u0006\u0010a\u001a\u00020#H\u0002J\b\u0010b\u001a\u00020HH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010!\u001a\u0012\u0012\u0004\u0012\u00020#0\"j\b\u0012\u0004\u0012\u00020#`$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020(X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010+\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b,\u0010-R\u0010\u00100\u001a\u000201X\u0082\u0004¢\u0006\u0004\n\u0002\u00102R\u0014\u00103\u001a\u0002048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b5\u00106R\u001b\u00107\u001a\u0002088BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u0010/\u001a\u0004\b9\u0010:R\u001d\u0010<\u001a\u0004\u0018\u00010=8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b@\u0010/\u001a\u0004\b>\u0010?¨\u0006g"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/PluginAnalyzer;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "STATUS_DONE", _UrlKt.FRAGMENT_ENCODE_SET, "STATUS_UNAVAILABLE", "STATUS_FAILED", "STATUS_TIMEOUT", "STATUS_CRASHED", "STATUS_TOO_LARGE", "STATUS_MEMORY", "CONNECT_TIMEOUT_MS", _UrlKt.FRAGMENT_ENCODE_SET, "HARD_TIMEOUT_MS", "PREVIOUS_TIMEOUT_MS", "WATCH_INTERVAL_MS", "MAX_FILE_BYTES", "MIB", "RECYCLE_ANON_BYTES", "MIN_ANON_LIMIT_BYTES", "MAX_ANON_LIMIT_BYTES", "ABORT_NONE", "ABORT_TIMEOUT", "ABORT_MEMORY", "ABORT_RELEASED", "queue", "Lorg/telegram/messenger/DispatchQueue;", "watchQueue", "binder", "Landroid/os/IBinder;", "connection", "Landroid/content/ServiceConnection;", "pendingConnects", "Ljava/util/ArrayList;", "Ljava/util/concurrent/CountDownLatch;", "Lkotlin/collections/ArrayList;", "liveTasks", "Ljava/util/concurrent/atomic/AtomicInteger;", "trimCallbacksRegistered", _UrlKt.FRAGMENT_ENCODE_SET, "running", "Lcom/exteragram/messenger/plugins/analyzer/PluginAnalyzer$Running;", "anonLimitBytes", "getAnonLimitBytes", "()J", "anonLimitBytes$delegate", "Lkotlin/Lazy;", "trimCallbacks", "com/exteragram/messenger/plugins/analyzer/PluginAnalyzer$trimCallbacks$1", "Lcom/exteragram/messenger/plugins/analyzer/PluginAnalyzer$trimCallbacks$1;", "snapshotDir", "Ljava/io/File;", "getSnapshotDir", "()Ljava/io/File;", "cache", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerCache;", "getCache", "()Lcom/exteragram/messenger/plugins/analyzer/AnalyzerCache;", "cache$delegate", "buildId", _UrlKt.FRAGMENT_ENCODE_SET, "getBuildId", "()Ljava/lang/String;", "buildId$delegate", "analyze", "Lcom/exteragram/messenger/plugins/analyzer/PluginAnalyzer$Task;", PluginsConstants.REQUEST, "Lcom/exteragram/messenger/plugins/analyzer/PluginAnalyzer$Request;", Callback.METHOD_NAME, "Lkotlin/Function1;", "Lcom/exteragram/messenger/plugins/analyzer/PluginAnalyzer$Result;", _UrlKt.FRAGMENT_ENCODE_SET, "onTaskReleased", "run", "task", "cachedReport", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport;", "sha256", "connectRemote", "Lkotlin/Pair;", "watch", "current", "deadline", "anonBytes", "pid", "recycle", "remote", "call", "T", "code", "write", "Landroid/os/Parcel;", "read", "(Landroid/os/IBinder;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "obtainBinder", "connect", "latch", "unbind", "Request", "Result", "Task", "Running", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginAnalyzer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginAnalyzer.kt\ncom/exteragram/messenger/plugins/analyzer/PluginAnalyzer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,417:1\n336#1,12:419\n336#1,12:431\n1#2:418\n296#3,2:443\n1915#3,2:445\n1915#3,2:447\n*S KotlinDebug\n*F\n+ 1 PluginAnalyzer.kt\ncom/exteragram/messenger/plugins/analyzer/PluginAnalyzer\n*L\n225#1:419,12\n284#1:431,12\n312#1:443,2\n400#1:445,2\n409#1:447,2\n*E\n"})
public final class PluginAnalyzer {
    private static final int ABORT_MEMORY = 2;
    private static final int ABORT_NONE = 0;
    private static final int ABORT_RELEASED = 3;
    private static final int ABORT_TIMEOUT = 1;
    private static final long CONNECT_TIMEOUT_MS = 10000;
    private static final long HARD_TIMEOUT_MS = 45000;
    private static final long MAX_ANON_LIMIT_BYTES = 671088640;
    private static final long MAX_FILE_BYTES = 67108864;
    private static final long MIB = 1048576;
    private static final long MIN_ANON_LIMIT_BYTES = 268435456;
    private static final long PREVIOUS_TIMEOUT_MS = 35000;
    private static final long RECYCLE_ANON_BYTES = 167772160;
    public static final int STATUS_CRASHED = 4;
    public static final int STATUS_DONE = 0;
    public static final int STATUS_FAILED = 2;
    public static final int STATUS_MEMORY = 6;
    public static final int STATUS_TIMEOUT = 3;
    public static final int STATUS_TOO_LARGE = 5;
    public static final int STATUS_UNAVAILABLE = 1;
    private static final long WATCH_INTERVAL_MS = 250;
    private static volatile IBinder binder;
    private static ServiceConnection connection;
    private static volatile Running running;
    private static boolean trimCallbacksRegistered;
    public static final PluginAnalyzer INSTANCE = new PluginAnalyzer();
    private static final DispatchQueue queue = new DispatchQueue("pluginAnalyzer");
    private static final DispatchQueue watchQueue = new DispatchQueue("pluginAnalyzerWatch");
    private static final ArrayList<CountDownLatch> pendingConnects = new ArrayList<>();
    private static final AtomicInteger liveTasks = new AtomicInteger();

    /* JADX INFO: renamed from: anonLimitBytes$delegate, reason: from kotlin metadata */
    private static final Lazy anonLimitBytes = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Long.valueOf(PluginAnalyzer.$r8$lambda$4f9sf1qZGrcagmKYAefK2QEDaIo());
        }
    });
    private static final PluginAnalyzer$trimCallbacks$1 trimCallbacks = new ComponentCallbacks2() { // from class: com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$trimCallbacks$1
        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration newConfig) {
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int level) {
            PluginAnalyzer.Running running2;
            if ((level == 15 || level >= 40) && (running2 = PluginAnalyzer.running) != null) {
                running2.abort(2);
            }
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
            PluginAnalyzer.Running running2 = PluginAnalyzer.running;
            if (running2 != null) {
                running2.abort(2);
            }
        }
    };

    /* JADX INFO: renamed from: cache$delegate, reason: from kotlin metadata */
    private static final Lazy cache = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PluginAnalyzer.$r8$lambda$4WI0bjV0RXOjdW18rEubqqYb2uc();
        }
    });

    /* JADX INFO: renamed from: buildId$delegate, reason: from kotlin metadata */
    private static final Lazy buildId = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return AnalyzerHashesKt.analyzerBuildId(ApplicationLoader.applicationContext);
        }
    });

    private PluginAnalyzer() {
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/PluginAnalyzer$Request;", _UrlKt.FRAGMENT_ENCODE_SET, "filePath", _UrlKt.FRAGMENT_ENCODE_SET, "name", "previousPath", "useCache", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getFilePath", "()Ljava/lang/String;", "getName", "getPreviousPath", "getUseCache", "()Z", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Request {
        private final String filePath;
        private final String name;
        private final String previousPath;
        private final boolean useCache;

        public Request(String str, String str2, String str3, boolean z) {
            this.filePath = str;
            this.name = str2;
            this.previousPath = str3;
            this.useCache = z;
        }

        public final String getFilePath() {
            return this.filePath;
        }

        public final String getName() {
            return this.name;
        }

        public final String getPreviousPath() {
            return this.previousPath;
        }

        public final boolean getUseCache() {
            return this.useCache;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/PluginAnalyzer$Result;", _UrlKt.FRAGMENT_ENCODE_SET, "status", _UrlKt.FRAGMENT_ENCODE_SET, "snapshot", "Ljava/io/File;", "report", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport;", "diff", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerDiff;", "message", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(ILjava/io/File;Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport;Lcom/exteragram/messenger/plugins/analyzer/AnalyzerDiff;Ljava/lang/String;)V", "getStatus", "()I", "getSnapshot", "()Ljava/io/File;", "getReport", "()Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport;", "getDiff", "()Lcom/exteragram/messenger/plugins/analyzer/AnalyzerDiff;", "getMessage", "()Ljava/lang/String;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Result {
        private final AnalyzerDiff diff;
        private final String message;
        private final AnalyzerReport report;
        private final File snapshot;
        private final int status;

        public Result(int i, File file, AnalyzerReport analyzerReport, AnalyzerDiff analyzerDiff, String str) {
            this.status = i;
            this.snapshot = file;
            this.report = analyzerReport;
            this.diff = analyzerDiff;
            this.message = str;
        }

        public /* synthetic */ Result(int i, File file, AnalyzerReport analyzerReport, AnalyzerDiff analyzerDiff, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, file, (i2 & 4) != 0 ? null : analyzerReport, (i2 & 8) != 0 ? null : analyzerDiff, (i2 & 16) != 0 ? null : str);
        }

        public final int getStatus() {
            return this.status;
        }

        public final File getSnapshot() {
            return this.snapshot;
        }

        public final AnalyzerReport getReport() {
            return this.report;
        }

        public final AnalyzerDiff getDiff() {
            return this.diff;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\fJ\r\u0010\r\u001a\u00020\fH\u0000¢\u0006\u0002\b\u000eR\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/PluginAnalyzer$Task;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "value", _UrlKt.FRAGMENT_ENCODE_SET, "cancelled", "getCancelled", "()Z", "released", "Ljava/util/concurrent/atomic/AtomicBoolean;", "cancel", _UrlKt.FRAGMENT_ENCODE_SET, BuildConfig.BUILD_TYPE, "release$TMessagesProj", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Task {
        private volatile boolean cancelled;
        private final AtomicBoolean released = new AtomicBoolean(false);

        public final boolean getCancelled() {
            return this.cancelled;
        }

        public final void cancel() {
            this.cancelled = true;
            release$TMessagesProj();
        }

        public final void release$TMessagesProj() {
            if (this.released.compareAndSet(false, true)) {
                PluginAnalyzer.INSTANCE.onTaskReleased();
            }
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/PluginAnalyzer$Running;", _UrlKt.FRAGMENT_ENCODE_SET, "pid", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(I)V", "getPid", "()I", "abort", "Ljava/util/concurrent/atomic/AtomicInteger;", "getAbort", "()Ljava/util/concurrent/atomic/AtomicInteger;", _UrlKt.FRAGMENT_ENCODE_SET, "reason", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Running {
        private final AtomicInteger abort = new AtomicInteger(0);
        private final int pid;

        public Running(int i) {
            this.pid = i;
        }

        public final int getPid() {
            return this.pid;
        }

        public final AtomicInteger getAbort() {
            return this.abort;
        }

        public final void abort(int reason) {
            if (this.abort.compareAndSet(0, reason)) {
                Process.killProcess(this.pid);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long getAnonLimitBytes() {
        return ((Number) anonLimitBytes.getValue()).longValue();
    }

    public static long $r8$lambda$4f9sf1qZGrcagmKYAefK2QEDaIo() {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        Object systemService = ApplicationLoader.applicationContext.getSystemService("activity");
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        if (activityManager != null) {
            activityManager.getMemoryInfo(memoryInfo);
        }
        return RangesKt.coerceIn(memoryInfo.totalMem / 8, MIN_ANON_LIMIT_BYTES, MAX_ANON_LIMIT_BYTES);
    }

    private final File getSnapshotDir() {
        return new File(ApplicationLoader.applicationContext.getCacheDir(), "plugin_analyzer");
    }

    public static AnalyzerCache $r8$lambda$4WI0bjV0RXOjdW18rEubqqYb2uc() {
        return new AnalyzerCache(new File(ApplicationLoader.applicationContext.getNoBackupFilesDir(), "plugin_analyzer/reports"));
    }

    private final AnalyzerCache getCache() {
        return (AnalyzerCache) cache.getValue();
    }

    private final String getBuildId() {
        return (String) buildId.getValue();
    }

    public final Task analyze(final Request request, final Function1<? super Result, Unit> callback) {
        final Task task = new Task();
        liveTasks.incrementAndGet();
        queue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                PluginAnalyzer.$r8$lambda$tZrl5AYmjOT7reFxmq097i_pi8k(request, task, callback);
            }
        });
        return task;
    }

    public static void $r8$lambda$tZrl5AYmjOT7reFxmq097i_pi8k(Request request, final Task task, final Function1 function1) throws Throwable {
        final Result resultRun = INSTANCE.run(request, task);
        if (task.getCancelled()) {
            File snapshot = resultRun.getSnapshot();
            if (snapshot != null) {
                snapshot.delete();
                return;
            }
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PluginAnalyzer.m3054$r8$lambda$yBxVuzHKfu2pHrdxPw1qNbK8yc(task, resultRun, function1);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$yBxVu-zHKfu2pHrdxPw1qNbK8yc, reason: not valid java name */
    public static void m3054$r8$lambda$yBxVuzHKfu2pHrdxPw1qNbK8yc(Task task, Result result, Function1 function1) {
        if (task.getCancelled()) {
            File snapshot = result.getSnapshot();
            if (snapshot != null) {
                snapshot.delete();
                return;
            }
            return;
        }
        task.release$TMessagesProj();
        function1.invoke(result);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onTaskReleased() {
        if (liveTasks.decrementAndGet() > 0) {
            return;
        }
        Running running2 = running;
        if (running2 != null) {
            running2.abort(3);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                PluginAnalyzer.$r8$lambda$d6nJO7SAB2XRMOuzhmx3aXWiYKw();
            }
        });
    }

    public static void $r8$lambda$d6nJO7SAB2XRMOuzhmx3aXWiYKw() {
        if (liveTasks.get() == 0) {
            INSTANCE.unbind();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d6  */
    /* JADX WARN: Type inference failed for: r10v12, types: [android.os.Parcel] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r11v7, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$Running] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6, types: [com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$Running] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v2, types: [android.os.Parcel] */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v5, types: [android.os.Parcel] */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r18v9 */
    /* JADX WARN: Type inference failed for: r21v0, types: [com.exteragram.messenger.plugins.analyzer.PluginAnalyzer] */
    /* JADX WARN: Type inference failed for: r2v16, types: [com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$Running] */
    /* JADX WARN: Type inference failed for: r2v17, types: [com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$Running] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26, types: [com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$Running] */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r4v10, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [android.os.IBinder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Result run(Request request, Task task) throws Throwable {
        ?? r4;
        ?? Sha256Hex;
        IBinder iBinderComponent1;
        ?? running2;
        AtomicInteger abort;
        ?? r18;
        ?? r182;
        ?? r42;
        ?? r2;
        Parcel parcel;
        Result result;
        AnalyzerReport analyzerReportCachedReport;
        File file = new File(request.getFilePath());
        if (!file.isFile()) {
            return new Result(2, null, null, null, "file not found", 12, null);
        }
        if (file.length() > MAX_FILE_BYTES) {
            return new Result(5, null, null, null, null, 28, null);
        }
        try {
            String strSha256Hex = AnalyzerHashesKt.sha256Hex(file);
            getSnapshotDir().mkdirs();
            File snapshotDir = getSnapshotDir();
            String extension = FilesKt.getExtension(file);
            if (extension.length() == 0) {
                extension = "plugin";
            }
            File file2 = new File(snapshotDir, strSha256Hex + "." + ((Object) extension));
            if (!file2.isFile() || file2.length() != file.length()) {
                FilesKt.copyTo$default(file, file2, true, 0, 4, null);
            }
            if (task.getCancelled()) {
                return new Result(2, file2, null, null, null, 28, null);
            }
            if (request.getUseCache() && request.getPreviousPath() == null && (analyzerReportCachedReport = cachedReport(strSha256Hex)) != null) {
                return new Result(0, file2, analyzerReportCachedReport, null, null, 24, null);
            }
            String previousPath = request.getPreviousPath();
            if (previousPath != null) {
                File file3 = new File(previousPath);
                if (file3.isFile()) {
                    long length = file3.length();
                    r4 = file3;
                    if (length > MAX_FILE_BYTES) {
                        r4 = 0;
                    }
                }
            }
            if (r4 != 0) {
                try {
                    Sha256Hex = AnalyzerHashesKt.sha256Hex((File) r4);
                } catch (Exception unused) {
                    Sha256Hex = 0;
                }
            } else {
                Sha256Hex = 0;
            }
            try {
                try {
                    Pair<IBinder, Integer> pairConnectRemote = connectRemote();
                    if (pairConnectRemote == null) {
                        Result result2 = new Result(4, file2, null, null, "service did not start", 12, null);
                        running = null;
                        return result2;
                    }
                    iBinderComponent1 = pairConnectRemote.component1();
                    try {
                        running2 = new Running(pairConnectRemote.component2().intValue());
                        try {
                            try {
                                running = running2;
                                if (task.getCancelled()) {
                                    try {
                                        running2.abort(3);
                                    } catch (Throwable th) {
                                        th = th;
                                        running = null;
                                        if (running2 != 0 && iBinderComponent1 != 0 && running2.getAbort().get() == 0 && liveTasks.get() > 1 && anonBytes(running2.getPid()) > RECYCLE_ANON_BYTES) {
                                            recycle(running2, iBinderComponent1);
                                        }
                                        throw th;
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (RemoteException e) {
                            e = e;
                            r4 = iBinderComponent1;
                            Sha256Hex = running2;
                        } catch (Exception e2) {
                            e = e2;
                            r4 = iBinderComponent1;
                            Sha256Hex = running2;
                        }
                        try {
                            watch(running2, System.currentTimeMillis() + HARD_TIMEOUT_MS + (Sha256Hex != 0 ? PREVIOUS_TIMEOUT_MS : 0L));
                            ?? Obtain = Parcel.obtain();
                            Parcel parcelObtain = Parcel.obtain();
                            try {
                                Obtain.writeInterfaceToken(PluginAnalyzerService.DESCRIPTOR);
                                Obtain.writeString(file2.getAbsolutePath());
                                Obtain.writeString(request.getName());
                                Obtain.writeString(strSha256Hex);
                                Obtain.writeInt(request.getUseCache() ? 1 : 0);
                                Obtain.writeString((Sha256Hex == 0 || r4 == 0) ? null : r4.getAbsolutePath());
                                Obtain.writeString(r4 != 0 ? r4.getName() : null);
                                Obtain.writeString(Sha256Hex);
                                try {
                                    if (!iBinderComponent1.transact(2, Obtain, parcelObtain, 0)) {
                                        throw new RemoteException("transaction rejected");
                                    }
                                    int i = parcelObtain.readInt();
                                    if (i == 0) {
                                        r182 = Obtain;
                                        r42 = iBinderComponent1;
                                        r2 = running2;
                                        parcel = parcelObtain;
                                        parcel.readString();
                                        String string = parcel.readString();
                                        String string2 = parcel.readString();
                                        result = new Result(0, file2, string != null ? AnalyzerReport.INSTANCE.parse(string) : null, string2 != null ? AnalyzerDiff.INSTANCE.parse(string2) : null, null, 16, null);
                                    } else if (i != 1) {
                                        try {
                                            r42 = iBinderComponent1;
                                            parcel = parcelObtain;
                                            r182 = Obtain;
                                            r2 = running2;
                                            result = new Result(2, file2, null, null, parcelObtain.readString(), 12, null);
                                        } catch (Throwable th3) {
                                            th = th3;
                                            r18 = Obtain;
                                        }
                                    } else {
                                        r182 = Obtain;
                                        r42 = iBinderComponent1;
                                        r2 = running2;
                                        parcel = parcelObtain;
                                        result = new Result(1, file2, null, null, parcel.readString(), 12, null);
                                    }
                                    r182.recycle();
                                    parcel.recycle();
                                    running = null;
                                    if (r2.getAbort().get() == 0 && liveTasks.get() > 1 && anonBytes(r2.getPid()) > RECYCLE_ANON_BYTES) {
                                        recycle(r2, r42);
                                    }
                                    return result;
                                } catch (Throwable th4) {
                                    th = th4;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                r18 = Obtain;
                            }
                            r18.recycle();
                            parcelObtain.recycle();
                            throw th;
                        } catch (RemoteException e3) {
                            e = e3;
                            binder = null;
                            Integer numValueOf = (Sha256Hex == 0 || (abort = Sha256Hex.getAbort()) == null) ? null : Integer.valueOf(abort.get());
                            Result result3 = new Result((numValueOf == null || numValueOf.intValue() != 1) ? (numValueOf != null && numValueOf.intValue() == 2) ? 6 : 4 : 3, file2, null, null, e.toString(), 12, null);
                            running = null;
                            if (Sha256Hex != 0 && r4 != 0 && Sha256Hex.getAbort().get() == 0 && liveTasks.get() > 1 && anonBytes(Sha256Hex.getPid()) > RECYCLE_ANON_BYTES) {
                                recycle(Sha256Hex, r4);
                            }
                            return result3;
                        } catch (Exception e4) {
                            e = e4;
                            FileLog.m1040e(e);
                            Result result4 = new Result(2, file2, null, null, e.toString(), 12, null);
                            running = null;
                            if (Sha256Hex != 0 && r4 != 0 && Sha256Hex.getAbort().get() == 0 && liveTasks.get() > 1 && anonBytes(Sha256Hex.getPid()) > RECYCLE_ANON_BYTES) {
                                recycle(Sha256Hex, r4);
                            }
                            return result4;
                        }
                    } catch (RemoteException e5) {
                        e = e5;
                        r4 = iBinderComponent1;
                        Sha256Hex = 0;
                    } catch (Exception e6) {
                        e = e6;
                        r4 = iBinderComponent1;
                        Sha256Hex = 0;
                    } catch (Throwable th6) {
                        th = th6;
                        running2 = 0;
                    }
                } catch (Throwable th7) {
                    th = th7;
                    running2 = Sha256Hex;
                    iBinderComponent1 = r4;
                }
            } catch (RemoteException e7) {
                e = e7;
                Sha256Hex = 0;
                r4 = 0;
            } catch (Exception e8) {
                e = e8;
                Sha256Hex = 0;
                r4 = 0;
            } catch (Throwable th8) {
                th = th8;
                iBinderComponent1 = 0;
                running2 = 0;
            }
        } catch (Exception e9) {
            FileLog.m1040e(e9);
            return new Result(2, null, null, null, e9.toString(), 12, null);
        }
    }

    private final AnalyzerReport cachedReport(String sha256) {
        String str;
        String buildId2 = getBuildId();
        if (buildId2 != null && (str = INSTANCE.getCache().get(buildId2, sha256)) != null) {
            try {
                return AnalyzerReport.INSTANCE.parse(str);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }
        return null;
    }

    private final Pair<IBinder, Integer> connectRemote() {
        IBinder iBinderObtainBinder;
        for (int i = 0; i < 2 && (iBinderObtainBinder = INSTANCE.obtainBinder()) != null; i++) {
            try {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    continue;
                    parcelObtain.writeInterfaceToken(PluginAnalyzerService.DESCRIPTOR);
                    if (iBinderObtainBinder.transact(1, parcelObtain, parcelObtain2, 0)) {
                        Integer numValueOf = Integer.valueOf(parcelObtain2.readInt());
                        parcelObtain.recycle();
                        parcelObtain2.recycle();
                        return TuplesKt.to(iBinderObtainBinder, numValueOf);
                    }
                    throw new RemoteException("transaction rejected");
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                    throw th;
                }
            } catch (RemoteException unused) {
                binder = null;
            }
        }
        return null;
    }

    private final void watch(final Running current, final long deadline) {
        watchQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.analyzer.PluginAnalyzer.watch.1
            @Override // java.lang.Runnable
            public void run() {
                Running running2 = PluginAnalyzer.running;
                Running running3 = current;
                if (running2 == running3 && running3.getAbort().get() == 0) {
                    if (System.currentTimeMillis() >= deadline) {
                        current.abort(1);
                        return;
                    }
                    PluginAnalyzer pluginAnalyzer = PluginAnalyzer.INSTANCE;
                    if (pluginAnalyzer.anonBytes(current.getPid()) <= pluginAnalyzer.getAnonLimitBytes()) {
                        PluginAnalyzer.watchQueue.postRunnable(this, PluginAnalyzer.WATCH_INTERVAL_MS);
                    } else {
                        current.abort(2);
                    }
                }
            }
        }, WATCH_INTERVAL_MS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long anonBytes(int pid) {
        Object next;
        String strSubstringAfter$default;
        String string;
        String strSubstringBefore$default;
        Long longOrNull;
        try {
            Iterator it = FilesKt.readLines$default(new File("/proc/" + pid + "/status"), null, 1, null).iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (StringsKt.startsWith$default((String) next, "RssAnon:", false, 2, (Object) null)) {
                    break;
                }
            }
            String str = (String) next;
            if (str != null && (strSubstringAfter$default = StringsKt.substringAfter$default(str, ':', (String) null, 2, (Object) null)) != null && (string = StringsKt.trim((CharSequence) strSubstringAfter$default).toString()) != null && (strSubstringBefore$default = StringsKt.substringBefore$default(string, ' ', (String) null, 2, (Object) null)) != null && (longOrNull = StringsKt.toLongOrNull(strSubstringBefore$default)) != null) {
                return longOrNull.longValue() * 1024;
            }
        } catch (Exception unused) {
        }
        return 0L;
    }

    private final void recycle(Running current, IBinder remote) throws InterruptedException {
        binder = null;
        Process.killProcess(current.getPid());
        long jCurrentTimeMillis = System.currentTimeMillis() + 10000;
        while (remote.isBinderAlive() && System.currentTimeMillis() < jCurrentTimeMillis) {
            Thread.sleep(20L);
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                PluginAnalyzer.m3052$r8$lambda$5ABcGGZozFcJOmAvVTXqumZxvY(countDownLatch);
            }
        });
        countDownLatch.await(10000L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: $r8$lambda$5ABcGGZozFcJOmAvVTXq-umZxvY, reason: not valid java name */
    public static void m3052$r8$lambda$5ABcGGZozFcJOmAvVTXqumZxvY(CountDownLatch countDownLatch) {
        INSTANCE.unbind();
        countDownLatch.countDown();
    }

    private final <T> T call(IBinder remote, int code, Function1<? super Parcel, Unit> write, Function1<? super Parcel, ? extends T> read) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(PluginAnalyzerService.DESCRIPTOR);
            write.invoke(parcelObtain);
            if (!remote.transact(code, parcelObtain, parcelObtain2, 0)) {
                throw new RemoteException("transaction rejected");
            }
            return read.invoke(parcelObtain2);
        } finally {
            InlineMarker.finallyStart(1);
            parcelObtain.recycle();
            parcelObtain2.recycle();
            InlineMarker.finallyEnd(1);
        }
    }

    private final IBinder obtainBinder() throws InterruptedException {
        IBinder iBinder = binder;
        if (iBinder != null) {
            if (!iBinder.isBinderAlive()) {
                iBinder = null;
            }
            if (iBinder != null) {
                return iBinder;
            }
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                PluginAnalyzer.INSTANCE.connect(countDownLatch);
            }
        });
        countDownLatch.await(10000L, TimeUnit.MILLISECONDS);
        IBinder iBinder2 = binder;
        if (iBinder2 == null || !iBinder2.isBinderAlive()) {
            return null;
        }
        return iBinder2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void connect(CountDownLatch latch) {
        boolean zBindService;
        if (!trimCallbacksRegistered) {
            trimCallbacksRegistered = true;
            ApplicationLoader.applicationContext.registerComponentCallbacks(trimCallbacks);
        }
        IBinder iBinder = binder;
        if (iBinder != null && iBinder.isBinderAlive()) {
            latch.countDown();
            return;
        }
        pendingConnects.add(latch);
        if (connection != null) {
            return;
        }
        Context context = ApplicationLoader.applicationContext;
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.exteragram.messenger.plugins.analyzer.PluginAnalyzer$connect$newConnection$1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName name, IBinder service) {
                PluginAnalyzer.binder = service;
                ArrayList arrayList = PluginAnalyzer.pendingConnects;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((CountDownLatch) obj).countDown();
                }
                PluginAnalyzer.pendingConnects.clear();
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName name) {
                PluginAnalyzer.binder = null;
            }

            @Override // android.content.ServiceConnection
            public void onBindingDied(ComponentName name) {
                PluginAnalyzer.binder = null;
                if (PluginAnalyzer.connection == this) {
                    PluginAnalyzer.INSTANCE.unbind();
                }
            }
        };
        int i = 0;
        try {
            zBindService = context.bindService(new Intent(context, (Class<?>) PluginAnalyzerService.class), serviceConnection, 1);
        } catch (Exception e) {
            FileLog.m1040e(e);
            zBindService = false;
        }
        if (zBindService) {
            connection = serviceConnection;
            return;
        }
        ArrayList<CountDownLatch> arrayList = pendingConnects;
        int size = arrayList.size();
        while (i < size) {
            CountDownLatch countDownLatch = arrayList.get(i);
            i++;
            countDownLatch.countDown();
        }
        pendingConnects.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void unbind() {
        ServiceConnection serviceConnection = connection;
        if (serviceConnection == null) {
            return;
        }
        connection = null;
        binder = null;
        ArrayList<CountDownLatch> arrayList = pendingConnects;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            CountDownLatch countDownLatch = arrayList.get(i);
            i++;
            countDownLatch.countDown();
        }
        pendingConnects.clear();
        try {
            ApplicationLoader.applicationContext.unbindService(serviceConnection);
        } catch (Exception unused) {
        }
    }
}
