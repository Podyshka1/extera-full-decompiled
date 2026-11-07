package com.exteragram.messenger.debug;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.TrafficStats;
import android.os.Build;
import android.os.PowerManager;
import android.os.Process;
import android.os.SystemClock;
import android.os.health.HealthStats;
import android.os.health.SystemHealthManager;
import android.os.health.TimerStat;
import android.system.Os;
import android.system.OsConstants;
import com.chaquo.python.internal.Common;
import com.exteragram.messenger.debug.LoadMonitor;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.File;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ForegroundDetector;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\bÆ\u0002\u0018\u00002\u00020\u0001:\b\u0087\u0001\u0088\u0001\u0089\u0001\u008a\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\n\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u001a\u001a\u00020\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00060\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010 \u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b \u0010\u001fJ\u000f\u0010!\u001a\u00020\u0006H\u0007¢\u0006\u0004\b!\u0010\u0003J\u001f\u0010#\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u0012H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0006H\u0002¢\u0006\u0004\b%\u0010\u0003J\u000f\u0010&\u001a\u00020\tH\u0002¢\u0006\u0004\b&\u0010\u000bJ\u0011\u0010'\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010*\u001a\u00020)H\u0002¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0015H\u0002¢\u0006\u0004\b,\u0010\u0017J\u000f\u0010-\u001a\u00020\u0015H\u0002¢\u0006\u0004\b-\u0010\u0017J+\u00101\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020/0.j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020/`0H\u0002¢\u0006\u0004\b1\u00102J\u0019\u00104\u001a\u0004\u0018\u00010/2\u0006\u00103\u001a\u00020\u000fH\u0002¢\u0006\u0004\b4\u00105J\u0017\u00107\u001a\u00020\u00152\u0006\u00106\u001a\u00020\u0015H\u0002¢\u0006\u0004\b7\u00108JS\u0010<\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00150.j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0015`02\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020/092\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020/09H\u0002¢\u0006\u0004\b<\u0010=J=\u0010B\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00150A0@2\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0015092\u0006\u0010?\u001a\u00020\tH\u0002¢\u0006\u0004\bB\u0010CJ3\u0010F\u001a\u00020E2\u0018\u0010>\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00150A0@2\b\b\u0002\u0010D\u001a\u00020\u0004H\u0002¢\u0006\u0004\bF\u0010GJ\u0019\u0010I\u001a\u0004\u0018\u00010\u000f2\u0006\u0010H\u001a\u00020\u000fH\u0002¢\u0006\u0004\bI\u0010JJ\u001d\u0010L\u001a\u00020\u00062\f\u0010K\u001a\b\u0012\u0004\u0012\u00020\u000f0@H\u0002¢\u0006\u0004\bL\u0010MJ\u001f\u0010Q\u001a\u0004\u0018\u00010\u000f2\f\u0010P\u001a\b\u0012\u0004\u0012\u00020O0NH\u0002¢\u0006\u0004\bQ\u0010RJ\u0011\u0010T\u001a\u0004\u0018\u00010SH\u0002¢\u0006\u0004\bT\u0010UJ\u001f\u0010X\u001a\u00020\u000f2\u0006\u0010V\u001a\u00020\u000f2\u0006\u0010W\u001a\u00020\tH\u0002¢\u0006\u0004\bX\u0010YJ\u0017\u0010[\u001a\u00020)2\u0006\u0010Z\u001a\u00020SH\u0002¢\u0006\u0004\b[\u0010\\J\u0017\u0010^\u001a\u00020)2\u0006\u0010]\u001a\u00020\u000fH\u0002¢\u0006\u0004\b^\u0010_J\u001f\u0010a\u001a\u00020\u00122\u0006\u0010`\u001a\u00020)2\u0006\u0010]\u001a\u00020\u000fH\u0002¢\u0006\u0004\ba\u0010bJ\u0017\u0010d\u001a\u00020\u000f2\u0006\u0010c\u001a\u00020\u0015H\u0002¢\u0006\u0004\bd\u0010eJ\u001f\u0010h\u001a\u00020\u000f2\u0006\u0010f\u001a\u00020\u00152\u0006\u0010g\u001a\u00020\u0015H\u0002¢\u0006\u0004\bh\u0010iJI\u0010l\u001a\u00020\u000f2\u0006\u0010g\u001a\u00020\u00152\u0006\u0010f\u001a\u00020\u00152\u0006\u0010j\u001a\u00020\u00152\u0006\u0010k\u001a\u00020\u00152\u0018\u0010>\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00150A0@H\u0002¢\u0006\u0004\bl\u0010mR\u001a\u0010n\u001a\b\u0012\u0004\u0012\u00020\u000f0N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bn\u0010oR\"\u0010q\u001a\u0010\u0012\f\u0012\n p*\u0004\u0018\u00010\u000f0\u000f0N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bq\u0010oR\u0018\u0010s\u001a\u0004\u0018\u00010r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010tR\u0018\u0010v\u001a\u0004\u0018\u00010u8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\u001e\u0010z\u001a\n\u0012\u0004\u0012\u00020y\u0018\u00010x8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010{RH\u0010|\u001a6\u0012\u0004\u0012\u00020\u000f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f090.j\u001a\u0012\u0004\u0012\u00020\u000f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f09`08\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b|\u0010}R0\u0010~\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0.j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f`08\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b~\u0010}R0\u0010\u007f\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\t0.j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\t`08\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u007f\u0010}R\u001f\u0010\u0083\u0001\u001a\u00020\u00128FX\u0086\u0084\u0002¢\u0006\u000f\n\u0006\b\u0080\u0001\u0010\u0081\u0001\u001a\u0005\b\u0082\u0001\u0010\u0014R\u001f\u0010\u0086\u0001\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\u000f\n\u0006\b\u0084\u0001\u0010\u0081\u0001\u001a\u0005\b\u0085\u0001\u0010\u0017¨\u0006\u008b\u0001"}, d2 = {"Lcom/exteragram/messenger/debug/LoadMonitor;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "enabled", _UrlKt.FRAGMENT_ENCODE_SET, "setEnabled", "(Z)V", _UrlKt.FRAGMENT_ENCODE_SET, "getCpuPercent", "()I", "percent", "setCpuPercent", "(I)V", _UrlKt.FRAGMENT_ENCODE_SET, "getSummary", "()Ljava/lang/String;", "Ljava/io/File;", "getLastReport", "()Ljava/io/File;", _UrlKt.FRAGMENT_ENCODE_SET, "getReportsSize", "()J", "Lkotlin/Function0;", "onDone", "deleteReports", "(Lkotlin/jvm/functions/Function0;)V", "Landroid/app/Activity;", "activity", "shareLastReport", "(Landroid/app/Activity;)V", "captureAndShare", "init", "file", "share", "(Landroid/app/Activity;Ljava/io/File;)V", "showPendingAlert", "currentState", "isPlugged", "()Ljava/lang/Boolean;", "Lorg/json/JSONObject;", "batteryJson", "()Lorg/json/JSONObject;", "uidRxBytes", "uidTxBytes", "Ljava/util/HashMap;", "Lcom/exteragram/messenger/debug/LoadMonitor$ThreadStat;", "Lkotlin/collections/HashMap;", "readThreads", "()Ljava/util/HashMap;", "stat", "parseStat", "(Ljava/lang/String;)Lcom/exteragram/messenger/debug/LoadMonitor$ThreadStat;", "ticks", "ticksToMs", "(J)J", _UrlKt.FRAGMENT_ENCODE_SET, "previous", "current", "threadDeltas", "(Ljava/util/Map;Ljava/util/Map;)Ljava/util/HashMap;", "threads", "limit", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/Pair;", "topThreads", "(Ljava/util/Map;I)Ljava/util/List;", "withOrigin", "Lorg/json/JSONArray;", "threadsJson", "(Ljava/util/List;Z)Lorg/json/JSONArray;", "name", "originOf", "(Ljava/lang/String;)Ljava/lang/String;", "names", "resolveOrigins", "(Ljava/util/List;)V", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/StackTraceElement;", "trace", "appFrame", "([Ljava/lang/StackTraceElement;)Ljava/lang/String;", "Landroid/os/health/HealthStats;", "takeHealthStats", "()Landroid/os/health/HealthStats;", "dataType", PluginsConstants.Settings.KEY, "healthKeyName", "(Ljava/lang/String;I)Ljava/lang/String;", "stats", "healthJson", "(Landroid/os/health/HealthStats;)Lorg/json/JSONObject;", "trigger", "baseReport", "(Ljava/lang/String;)Lorg/json/JSONObject;", "report", "writeReport", "(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/io/File;", "ms", "formatDuration", "(J)Ljava/lang/String;", "cpuMs", "wallMs", "formatPercent", "(JJ)Ljava/lang/String;", "rxBytes", "txBytes", "describeEpisode", "(JJJJLjava/util/List;)Ljava/lang/String;", "STATE_NAMES", "[Ljava/lang/String;", "kotlin.jvm.PlatformType", "SKIPPED_FRAMES", "Lcom/exteragram/messenger/debug/LoadMonitor$Sampler;", "sampler", "Lcom/exteragram/messenger/debug/LoadMonitor$Sampler;", "Lcom/exteragram/messenger/debug/LoadMonitor$PendingAlert;", "pendingAlert", "Lcom/exteragram/messenger/debug/LoadMonitor$PendingAlert;", "Ljava/lang/ref/WeakReference;", "Lorg/telegram/ui/ActionBar/AlertDialog;", "alertRef", "Ljava/lang/ref/WeakReference;", "healthKeyNames", "Ljava/util/HashMap;", "threadOrigins", "originAttempts", "reportsDir$delegate", "Lkotlin/Lazy;", "getReportsDir", "reportsDir", "clockTicks$delegate", "getClockTicks", "clockTicks", "ThreadStat", "PendingAlert", "Episode", "Sampler", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLoadMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadMonitor.kt\ncom/exteragram/messenger/debug/LoadMonitor\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,696:1\n3938#2:697\n4474#2,2:698\n13213#2,2:723\n3938#2:728\n4474#2,2:729\n3938#2:745\n4474#2,2:746\n14048#2,2:751\n2045#3,14:700\n1080#3:715\n1586#3:716\n1661#3,3:717\n777#3:720\n873#3,2:721\n1205#3,2:731\n1282#3,4:733\n1586#3:741\n1661#3,3:742\n1080#3:748\n1915#3,2:749\n1#4:714\n410#5,3:725\n413#5,4:737\n*S KotlinDebug\n*F\n+ 1 LoadMonitor.kt\ncom/exteragram/messenger/debug/LoadMonitor\n*L\n130#1:697\n130#1:698,2\n291#1:723,2\n308#1:728\n308#1:729,2\n417#1:745\n417#1:746,2\n137#1:751,2\n131#1:700,14\n253#1:715\n253#1:716\n253#1:717,3\n271#1:720\n271#1:721,2\n309#1:731,2\n309#1:733,4\n382#1:741\n382#1:742,3\n418#1:748\n420#1:749,2\n304#1:725,3\n304#1:737,4\n*E\n"})
public final class LoadMonitor {
    private static WeakReference<AlertDialog> alertRef;
    private static volatile PendingAlert pendingAlert;
    private static volatile Sampler sampler;
    public static final LoadMonitor INSTANCE = new LoadMonitor();
    private static final String[] STATE_NAMES = {"foreground", "background", "screenOff"};
    private static final String[] SKIPPED_FRAMES = {"java.", "javax.", "kotlin.", "android.", "com.android.", "dalvik.", "libcore.", "sun.", "jdk.", "de.robv.android.xposed.", LoadMonitor.class.getName()};
    private static final HashMap<String, Map<Integer, String>> healthKeyNames = new HashMap<>();
    private static final HashMap<String, String> threadOrigins = new HashMap<>();
    private static final HashMap<String, Integer> originAttempts = new HashMap<>();

    /* JADX INFO: renamed from: reportsDir$delegate, reason: from kotlin metadata */
    private static final Lazy reportsDir = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.debug.LoadMonitor$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DebugFilesKt.debugFilesDir("loadreports");
        }
    });

    /* JADX INFO: renamed from: clockTicks$delegate, reason: from kotlin metadata */
    private static final Lazy clockTicks = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.debug.LoadMonitor$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Long.valueOf(LoadMonitor.$r8$lambda$HqwllwjZJtclxFPulNWPmnOfRKg());
        }
    });

    private LoadMonitor() {
    }

    public final File getReportsDir() {
        return (File) reportsDir.getValue();
    }

    private final long getClockTicks() {
        return ((Number) clockTicks.getValue()).longValue();
    }

    public static long $r8$lambda$HqwllwjZJtclxFPulNWPmnOfRKg() {
        long jSysconf = Os.sysconf(OsConstants._SC_CLK_TCK);
        Long lValueOf = Long.valueOf(jSysconf);
        if (jSysconf <= 0) {
            lValueOf = null;
        }
        if (lValueOf != null) {
            return lValueOf.longValue();
        }
        return 100L;
    }

    @JvmStatic
    public static final void init() {
        if (DebugConfig.getLoadMonitorEnabled()) {
            sampler = new Sampler();
        }
    }

    public final void setEnabled(boolean enabled) {
        if (DebugConfig.getLoadMonitorEnabled() == enabled) {
            return;
        }
        DebugConfig.setLoadMonitorEnabled(enabled);
        Sampler sampler2 = sampler;
        if (sampler2 != null) {
            sampler2.stop();
        }
        sampler = enabled ? new Sampler() : null;
        if (enabled) {
            return;
        }
        pendingAlert = null;
    }

    public final int getCpuPercent() {
        return RangesKt.coerceIn(DebugConfig.getLoadMonitorCpuPercent(), 1, 50);
    }

    public final void setCpuPercent(int percent) {
        DebugConfig.setLoadMonitorCpuPercent(percent);
    }

    public final String getSummary() {
        String summary;
        Sampler sampler2 = sampler;
        if (sampler2 != null && (summary = sampler2.getSummary()) != null) {
            return summary;
        }
        return formatDuration(Process.getElapsedCpuTime()) + " CPU since launch";
    }

    public final File getLastReport() {
        File[] fileArrListFiles = getReportsDir().listFiles();
        Object next = null;
        if (fileArrListFiles == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (File file : fileArrListFiles) {
            if (StringsKt.endsWith$default(file.getName(), ".json", false, 2, (Object) null)) {
                arrayList.add(file);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                long jLastModified = ((File) next).lastModified();
                do {
                    Object next2 = it.next();
                    long jLastModified2 = ((File) next2).lastModified();
                    if (jLastModified < jLastModified2) {
                        next = next2;
                        jLastModified = jLastModified2;
                    }
                } while (it.hasNext());
            }
        }
        return (File) next;
    }

    public final long getReportsSize() {
        File[] fileArrListFiles = getReportsDir().listFiles();
        long length = 0;
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                length += file.length();
            }
        }
        return length;
    }

    public final void deleteReports(final Function0<Unit> onDone) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.debug.LoadMonitor$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                LoadMonitor.$r8$lambda$NdeRMlyzkcIMr7a3YcyRA_FFvjU(onDone);
            }
        });
    }

    public static void $r8$lambda$NdeRMlyzkcIMr7a3YcyRA_FFvjU(final Function0 function0) {
        File[] fileArrListFiles = INSTANCE.getReportsDir().listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                file.delete();
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.LoadMonitor$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                function0.invoke();
            }
        });
    }

    public final void shareLastReport(Activity activity) {
        File lastReport = getLastReport();
        if (lastReport != null) {
            INSTANCE.share(activity, lastReport);
        }
    }

    public final void captureAndShare(final Activity activity) {
        DispatchQueue queue;
        final Sampler sampler2 = sampler;
        if (sampler2 == null || (queue = sampler2.getQueue()) == null) {
            queue = Utilities.globalQueue;
        }
        queue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.debug.LoadMonitor$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                LoadMonitor.$r8$lambda$G5I7fuj0kLwvbL4wsMtBJkoYexs(sampler2, activity);
            }
        });
    }

    public static void $r8$lambda$G5I7fuj0kLwvbL4wsMtBJkoYexs(Sampler sampler2, final Activity activity) {
        final Object objM3608constructorimpl;
        JSONObject jSONObjectBaseReport;
        LoadMonitor loadMonitor = INSTANCE;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (sampler2 == null || (jSONObjectBaseReport = sampler2.captureReport("manual")) == null) {
                jSONObjectBaseReport = loadMonitor.baseReport("manual");
            }
            objM3608constructorimpl = Result.m3608constructorimpl(loadMonitor.writeReport(jSONObjectBaseReport, "manual"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.LoadMonitor$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                LoadMonitor.$r8$lambda$yclvq93EyksPCxohhOabqVuRpcY(objM3608constructorimpl, activity);
            }
        });
    }

    public static void $r8$lambda$yclvq93EyksPCxohhOabqVuRpcY(Object obj, Activity activity) {
        if (Result.m3615isSuccessimpl(obj)) {
            INSTANCE.share(activity, (File) obj);
        }
        Throwable thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(obj);
        if (thM3611exceptionOrNullimpl != null) {
            FileLog.m1040e(thM3611exceptionOrNullimpl);
            BulletinFactory.global().createSimpleBulletin(C2807R.raw.error, "Load report failed: " + thM3611exceptionOrNullimpl).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void share(Activity activity, File file) {
        DebugFilesKt.shareDebugFile(activity, file, "application/json", "Share load report");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showPendingAlert() {
        AlertDialog alertDialog;
        final PendingAlert pendingAlert2 = pendingAlert;
        if (pendingAlert2 == null) {
            return;
        }
        final LaunchActivity launchActivity = LaunchActivity.instance;
        if (sampler == null || launchActivity == null || launchActivity.isFinishing()) {
            return;
        }
        WeakReference<AlertDialog> weakReference = alertRef;
        if (weakReference == null || (alertDialog = weakReference.get()) == null || !alertDialog.isShowing()) {
            pendingAlert = null;
            AlertDialog alertDialogCreate = new AlertDialog.Builder(launchActivity).setTitle("High background load").setMessage(pendingAlert2.getMessage()).setPositiveButton("Share", new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.debug.LoadMonitor$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog2, int i) {
                    LoadMonitor.INSTANCE.share(launchActivity, pendingAlert2.getFile());
                }
            }).setNeutralButton("Turn off", new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.debug.LoadMonitor$$ExternalSyntheticLambda3
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog2, int i) {
                    LoadMonitor.INSTANCE.setEnabled(false);
                }
            }).setNegativeButton("Later", null).create();
            alertRef = new WeakReference<>(alertDialogCreate);
            try {
                alertDialogCreate.show();
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int currentState() {
        Object systemService = ApplicationLoader.applicationContext.getSystemService("power");
        PowerManager powerManager = systemService instanceof PowerManager ? (PowerManager) systemService : null;
        if (powerManager != null && !powerManager.isInteractive()) {
            return 2;
        }
        ForegroundDetector foregroundDetector = ForegroundDetector.getInstance();
        int i = 0;
        if (foregroundDetector != null && foregroundDetector.isForeground()) {
            i = 1;
        }
        return i ^ 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Boolean isPlugged() {
        Object objM3608constructorimpl;
        Boolean boolValueOf;
        try {
            Result.Companion companion = Result.INSTANCE;
            Intent intentRegisterReceiver = ApplicationLoader.applicationContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (intentRegisterReceiver != null) {
                boolValueOf = Boolean.valueOf(intentRegisterReceiver.getIntExtra("plugged", 0) != 0);
            } else {
                boolValueOf = null;
            }
            objM3608constructorimpl = Result.m3608constructorimpl(boolValueOf);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
        }
        return (Boolean) (Result.m3614isFailureimpl(objM3608constructorimpl) ? null : objM3608constructorimpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JSONObject batteryJson() {
        return new JSONObject().put("level", LiteMode.getBatteryLevel()).put("plugged", isPlugged());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long uidRxBytes() {
        return TrafficStats.getUidRxBytes(Process.myUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long uidTxBytes() {
        return TrafficStats.getUidTxBytes(Process.myUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HashMap<Integer, ThreadStat> readThreads() {
        ThreadStat stat;
        HashMap<Integer, ThreadStat> map = new HashMap<>();
        String[] list = new File("/proc/self/task").list();
        if (list != null) {
            byte[] bArr = new byte[1024];
            for (String str : list) {
                Integer intOrNull = StringsKt.toIntOrNull(str);
                if (intOrNull != null) {
                    try {
                        FileInputStream fileInputStream = new FileInputStream("/proc/self/task/" + str + "/stat");
                        try {
                            int i = fileInputStream.read(bArr);
                            CloseableKt.closeFinally(fileInputStream, null);
                            if (i > 0 && (stat = parseStat(new String(bArr, 0, i, Charsets.UTF_8))) != null) {
                                map.put(intOrNull, stat);
                            }
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(fileInputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Exception unused) {
                        continue;
                    }
                }
            }
        }
        return map;
    }

    private final ThreadStat parseStat(String stat) {
        int i;
        Long longOrNull;
        int iIndexOf$default = StringsKt.indexOf$default((CharSequence) stat, '(', 0, false, 6, (Object) null);
        int iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) stat, ')', 0, false, 6, (Object) null);
        if (iIndexOf$default < 0 || iLastIndexOf$default <= iIndexOf$default || (i = iLastIndexOf$default + 2) >= stat.length()) {
            return null;
        }
        List listSplit$default = StringsKt.split$default((CharSequence) stat.substring(i), new char[]{' '}, false, 0, 6, (Object) null);
        if (listSplit$default.size() < 13 || (longOrNull = StringsKt.toLongOrNull((String) listSplit$default.get(11))) == null) {
            return null;
        }
        long jLongValue = longOrNull.longValue();
        Long longOrNull2 = StringsKt.toLongOrNull((String) listSplit$default.get(12));
        if (longOrNull2 != null) {
            return new ThreadStat(stat.substring(iIndexOf$default + 1, iLastIndexOf$default), jLongValue + longOrNull2.longValue());
        }
        return null;
    }

    private final long ticksToMs(long ticks) {
        return (ticks * 1000) / getClockTicks();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HashMap<String, Long> threadDeltas(Map<Integer, ThreadStat> previous, Map<Integer, ThreadStat> current) {
        HashMap<String, Long> map = new HashMap<>();
        for (Map.Entry<Integer, ThreadStat> entry : current.entrySet()) {
            int iIntValue = entry.getKey().intValue();
            ThreadStat value = entry.getValue();
            ThreadStat threadStat = previous.get(Integer.valueOf(iIntValue));
            long ticks = (threadStat == null || !Intrinsics.areEqual(threadStat.getName(), value.getName())) ? value.getTicks() : value.getTicks() - threadStat.getTicks();
            if (ticks > 0) {
                String name = value.getName();
                Long l = map.get(value.getName());
                map.put(name, Long.valueOf((l != null ? l.longValue() : 0L) + ticksToMs(ticks)));
            }
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Pair<String, Long>> topThreads(Map<String, Long> threads, int limit) {
        List<Map.Entry> listTake = CollectionsKt.take(CollectionsKt.sortedWith(threads.entrySet(), new Comparator() { // from class: com.exteragram.messenger.debug.LoadMonitor$topThreads$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues((Long) ((Map.Entry) t2).getValue(), (Long) ((Map.Entry) t).getValue());
            }
        }), limit);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listTake, 10));
        for (Map.Entry entry : listTake) {
            arrayList.add(TuplesKt.to(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    public static /* synthetic */ JSONArray threadsJson$default(LoadMonitor loadMonitor, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return loadMonitor.threadsJson(list, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JSONArray threadsJson(List<Pair<String, Long>> threads, boolean withOrigin) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (Pair<String, Long> pair : threads) {
            String strComponent1 = pair.component1();
            JSONObject jSONObjectPut = new JSONObject().put("name", strComponent1).put("cpuMs", pair.component2().longValue());
            if (withOrigin) {
                jSONObjectPut.put("at", originOf(strComponent1));
            }
            jSONArray.put(jSONObjectPut);
        }
        return jSONArray;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String originOf(String name) {
        String str;
        HashMap<String, String> map = threadOrigins;
        synchronized (map) {
            str = map.get(name);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void resolveOrigins(List<String> names) {
        ArrayList arrayList;
        Object objM3608constructorimpl;
        String strAppFrame;
        synchronized (threadOrigins) {
            try {
                arrayList = new ArrayList();
                Iterator<T> it = names.iterator();
                while (true) {
                    boolean z = true;
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    String str = (String) next;
                    if (Intrinsics.areEqual(str, "<unattributed>") || threadOrigins.containsKey(str)) {
                        z = false;
                    } else {
                        Integer num = originAttempts.get(str);
                        if ((num != null ? num.intValue() : 0) < 8) {
                        }
                    }
                    if (z) {
                        arrayList.add(next);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM3608constructorimpl = Result.m3608constructorimpl(Thread.getAllStackTraces());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m3614isFailureimpl(objM3608constructorimpl)) {
            objM3608constructorimpl = null;
        }
        Map map = (Map) objM3608constructorimpl;
        if (map == null) {
            return;
        }
        synchronized (threadOrigins) {
            try {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    String str2 = (String) obj;
                    HashMap<String, Integer> map2 = originAttempts;
                    Integer num2 = map2.get(str2);
                    map2.put(str2, Integer.valueOf((num2 != null ? num2.intValue() : 0) + 1));
                }
                for (Map.Entry entry : map.entrySet()) {
                    Thread thread = (Thread) entry.getKey();
                    StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) entry.getValue();
                    String strTake = StringsKt.take(thread.getName(), 15);
                    if (arrayList.contains(strTake)) {
                        HashMap<String, String> map3 = threadOrigins;
                        if (!map3.containsKey(strTake) && (strAppFrame = INSTANCE.appFrame(stackTraceElementArr)) != null) {
                            map3.put(strTake, strAppFrame);
                        }
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001b, code lost:
    
        r1 = r1 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final String appFrame(StackTraceElement[] trace) {
        int length = trace.length;
        int i = 0;
        while (i < length) {
            StackTraceElement stackTraceElement = trace[i];
            for (String str : SKIPPED_FRAMES) {
                if (StringsKt.startsWith$default(stackTraceElement.getClassName(), str, false, 2, (Object) null)) {
                    break;
                }
            }
            return StringsKt.substringAfterLast$default(stackTraceElement.getClassName(), '.', (String) null, 2, (Object) null) + "." + stackTraceElement.getMethodName() + ":" + stackTraceElement.getLineNumber();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HealthStats takeHealthStats() {
        Object objM3608constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Object systemService = ApplicationLoader.applicationContext.getSystemService("systemhealth");
            SystemHealthManager systemHealthManager = systemService instanceof SystemHealthManager ? (SystemHealthManager) systemService : null;
            objM3608constructorimpl = Result.m3608constructorimpl(systemHealthManager != null ? systemHealthManager.takeMyUidSnapshot() : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl);
        if (thM3611exceptionOrNullimpl != null) {
            FileLog.m1040e(thM3611exceptionOrNullimpl);
        }
        return (HealthStats) (Result.m3614isFailureimpl(objM3608constructorimpl) ? null : objM3608constructorimpl);
    }

    private final String healthKeyName(String dataType, int key) {
        Object objM3608constructorimpl;
        Map<Integer, String> map;
        HashMap<String, Map<Integer, String>> map2 = healthKeyNames;
        synchronized (map2) {
            try {
                Map<Integer, String> map3 = map2.get(dataType);
                if (map3 == null) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        int i = 0;
                        Field[] fields = Class.forName(StringsKt.contains$default((CharSequence) dataType, '.', false, 2, (Object) null) ? dataType : "android.os.health." + dataType).getFields();
                        ArrayList arrayList = new ArrayList();
                        for (Field field : fields) {
                            if (Modifier.isStatic(field.getModifiers()) && Intrinsics.areEqual(field.getType(), Integer.TYPE)) {
                                arrayList.add(field);
                            }
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(arrayList, 10)), 16));
                        int size = arrayList.size();
                        while (i < size) {
                            Object obj = arrayList.get(i);
                            i++;
                            Field field2 = (Field) obj;
                            Pair pair = TuplesKt.to(Integer.valueOf(field2.getInt(null)), field2.getName());
                            linkedHashMap.put(pair.getFirst(), pair.getSecond());
                        }
                        objM3608constructorimpl = Result.m3608constructorimpl(linkedHashMap);
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
                    }
                    Map mapEmptyMap = MapsKt.emptyMap();
                    if (Result.m3614isFailureimpl(objM3608constructorimpl)) {
                        objM3608constructorimpl = mapEmptyMap;
                    }
                    map3 = (Map) objM3608constructorimpl;
                    map2.put(dataType, map3);
                }
                map = map3;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        String str = map.get(Integer.valueOf(key));
        return str == null ? String.valueOf(key) : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JSONObject healthJson(HealthStats stats) throws JSONException {
        String dataType = stats.getDataType();
        JSONObject jSONObjectPut = new JSONObject().put("type", dataType);
        if (stats.getMeasurementKeyCount() > 0) {
            JSONObject jSONObject = new JSONObject();
            int measurementKeyCount = stats.getMeasurementKeyCount();
            for (int i = 0; i < measurementKeyCount; i++) {
                int measurementKeyAt = stats.getMeasurementKeyAt(i);
                jSONObject.put(healthKeyName(dataType, measurementKeyAt), stats.getMeasurement(measurementKeyAt));
            }
            jSONObjectPut.put("measurements", jSONObject);
        }
        if (stats.getTimerKeyCount() > 0) {
            JSONObject jSONObject2 = new JSONObject();
            int timerKeyCount = stats.getTimerKeyCount();
            for (int i2 = 0; i2 < timerKeyCount; i2++) {
                int timerKeyAt = stats.getTimerKeyAt(i2);
                jSONObject2.put(healthKeyName(dataType, timerKeyAt), new JSONArray().put(stats.getTimerCount(timerKeyAt)).put(stats.getTimerTime(timerKeyAt)));
            }
            jSONObjectPut.put("timers", jSONObject2);
        }
        if (stats.getMeasurementsKeyCount() > 0) {
            JSONObject jSONObject3 = new JSONObject();
            int measurementsKeyCount = stats.getMeasurementsKeyCount();
            for (int i3 = 0; i3 < measurementsKeyCount; i3++) {
                int measurementsKeyAt = stats.getMeasurementsKeyAt(i3);
                JSONObject jSONObject4 = new JSONObject();
                for (Map.Entry<String, Long> entry : stats.getMeasurements(measurementsKeyAt).entrySet()) {
                    jSONObject4.put(entry.getKey(), entry.getValue().longValue());
                }
                jSONObject3.put(healthKeyName(dataType, measurementsKeyAt), jSONObject4);
            }
            jSONObjectPut.put("measurementMaps", jSONObject3);
        }
        if (stats.getTimersKeyCount() > 0) {
            JSONObject jSONObject5 = new JSONObject();
            int timersKeyCount = stats.getTimersKeyCount();
            for (int i4 = 0; i4 < timersKeyCount; i4++) {
                int timersKeyAt = stats.getTimersKeyAt(i4);
                JSONObject jSONObject6 = new JSONObject();
                for (Map.Entry<String, TimerStat> entry2 : stats.getTimers(timersKeyAt).entrySet()) {
                    String key = entry2.getKey();
                    TimerStat value = entry2.getValue();
                    jSONObject6.put(key, new JSONArray().put(value.getCount()).put(value.getTime()));
                }
                jSONObject5.put(healthKeyName(dataType, timersKeyAt), jSONObject6);
            }
            jSONObjectPut.put("timerMaps", jSONObject5);
        }
        if (stats.getStatsKeyCount() > 0) {
            JSONObject jSONObject7 = new JSONObject();
            int statsKeyCount = stats.getStatsKeyCount();
            for (int i5 = 0; i5 < statsKeyCount; i5++) {
                int statsKeyAt = stats.getStatsKeyAt(i5);
                JSONObject jSONObject8 = new JSONObject();
                for (Map.Entry<String, HealthStats> entry3 : stats.getStats(statsKeyAt).entrySet()) {
                    jSONObject8.put(entry3.getKey(), healthJson(entry3.getValue()));
                }
                jSONObject7.put(healthKeyName(dataType, statsKeyAt), jSONObject8);
            }
            jSONObjectPut.put("stats", jSONObject7);
        }
        return jSONObjectPut;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JSONObject baseReport(String trigger) throws JSONException {
        Context context = ApplicationLoader.applicationContext;
        Object systemService = context.getSystemService("power");
        PowerManager powerManager = systemService instanceof PowerManager ? (PowerManager) systemService : null;
        HashMap map = new HashMap();
        for (ThreadStat threadStat : readThreads().values()) {
            String name = threadStat.getName();
            Long l = (Long) map.get(threadStat.getName());
            map.put(name, Long.valueOf((l != null ? l.longValue() : 0L) + ticksToMs(threadStat.getTicks())));
        }
        List<Pair<String, Long>> list = topThreads(map, 30);
        List<Pair<String, Long>> list2 = list;
        List<String> arrayList = new ArrayList<>(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add((String) ((Pair) it.next()).getFirst());
        }
        resolveOrigins(arrayList);
        JSONObject jSONObjectPut = new JSONObject().put("format", 1).put("trigger", trigger).put("createdAt", System.currentTimeMillis()).put(Common.ASSET_APP, new JSONObject().put("version", BuildVars.BUILD_VERSION_STRING).put("code", BuildVars.BUILD_VERSION).put("debug", BuildVars.DEBUG_VERSION)).put("device", new JSONObject().put("manufacturer", Build.MANUFACTURER).put("model", Build.MODEL).put("sdk", Build.VERSION.SDK_INT).put("cores", Runtime.getRuntime().availableProcessors())).put("battery", batteryJson());
        boolean z = false;
        JSONObject jSONObjectPut2 = new JSONObject().put("accounts", UserConfig.getActivatedAccountsCount()).put("proxy", SharedConfig.isProxyEnabled()).put("logs", BuildVars.LOGS_ENABLED).put("powerSave", powerManager != null && powerManager.isPowerSaveMode());
        if (powerManager != null && powerManager.isIgnoringBatteryOptimizations(context.getPackageName())) {
            z = true;
        }
        JSONObject jSONObjectPut3 = jSONObjectPut.put("settings", jSONObjectPut2.put("ignoringBatteryOptimizations", z)).put("process", new JSONObject().put("uptimeMs", SystemClock.elapsedRealtime() - Process.getStartElapsedRealtime()).put("cpuMs", Process.getElapsedCpuTime()).put("state", STATE_NAMES[currentState()]).put("threads", threadsJson(list, true)));
        HealthStats healthStatsTakeHealthStats = takeHealthStats();
        return jSONObjectPut3.put("healthNow", healthStatsTakeHealthStats != null ? INSTANCE.healthJson(healthStatsTakeHealthStats) : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File writeReport(JSONObject report, String trigger) {
        List listDrop;
        getReportsDir().mkdirs();
        File file = new File(getReportsDir(), "load_" + BuildVars.BUILD_VERSION_STRING + "_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date()) + "_" + trigger + ".json");
        FilesKt.writeText$default(file, report.toString(1), null, 2, null);
        File[] fileArrListFiles = getReportsDir().listFiles();
        if (fileArrListFiles != null) {
            ArrayList arrayList = new ArrayList();
            for (File file2 : fileArrListFiles) {
                if (StringsKt.endsWith$default(file2.getName(), ".json", false, 2, (Object) null)) {
                    arrayList.add(file2);
                }
            }
            List listSortedWith = CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.exteragram.messenger.debug.LoadMonitor$writeReport$$inlined$sortedByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(Long.valueOf(((File) t2).lastModified()), Long.valueOf(((File) t).lastModified()));
                }
            });
            if (listSortedWith != null && (listDrop = CollectionsKt.drop(listSortedWith, 10)) != null) {
                Iterator it = listDrop.iterator();
                while (it.hasNext()) {
                    ((File) it.next()).delete();
                }
            }
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String formatDuration(long ms) {
        long j = ms / 1000;
        if (ms < 1000) {
            return ms + "ms";
        }
        if (j < 60) {
            return j + "s";
        }
        if (j < 3600) {
            return (j / 60) + "m " + (j % 60) + "s";
        }
        return (j / 3600) + "h " + ((j % 3600) / 60) + "m";
    }

    private final String formatPercent(long cpuMs, long wallMs) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format(Locale.US, "%.1f%%", Arrays.copyOf(new Object[]{Double.valueOf(wallMs > 0 ? (cpuMs * 100.0d) / wallMs : 0.0d)}, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String describeEpisode(long wallMs, long cpuMs, long rxBytes, long txBytes, List<Pair<String, Long>> threads) {
        StringBuilder sb = new StringBuilder();
        sb.append("In " + formatDuration(wallMs) + " in the background, the app used " + formatPercent(cpuMs, wallMs) + " of one core: ");
        String duration = formatDuration(cpuMs);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(duration);
        sb2.append(" of CPU");
        sb.append(sb2.toString());
        if (rxBytes >= 0 && txBytes >= 0) {
            sb.append(", " + AndroidUtilities.formatFileSize(rxBytes) + " received, " + AndroidUtilities.formatFileSize(txBytes) + " sent");
        }
        sb.append('.');
        if (!threads.isEmpty()) {
            sb.append("\n\nBusiest threads: ");
            sb.append(CollectionsKt.joinToString$default(threads, ", ", null, null, 0, null, new Function1() { // from class: com.exteragram.messenger.debug.LoadMonitor$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoadMonitor.m2413$r8$lambda$EvWZU_AiIxct8eo7VUHXa2A0bw((Pair) obj);
                }
            }, 30, null));
            sb.append('.');
        }
        sb.append("\n\nThe report holds thread names, traffic counters and battery stats, no message content.");
        return sb.toString();
    }

    /* JADX INFO: renamed from: $r8$lambda$EvWZU_-AiIxct8eo7VUHXa2A0bw, reason: not valid java name */
    public static CharSequence m2413$r8$lambda$EvWZU_AiIxct8eo7VUHXa2A0bw(Pair pair) {
        return pair.getFirst() + " " + INSTANCE.formatDuration(((Number) pair.getSecond()).longValue());
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/debug/LoadMonitor$ThreadStat;", _UrlKt.FRAGMENT_ENCODE_SET, "name", _UrlKt.FRAGMENT_ENCODE_SET, "ticks", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;J)V", "getName", "()Ljava/lang/String;", "getTicks", "()J", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class ThreadStat {
        private final String name;
        private final long ticks;

        public ThreadStat(String str, long j) {
            this.name = str;
            this.ticks = j;
        }

        public final String getName() {
            return this.name;
        }

        public final long getTicks() {
            return this.ticks;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/debug/LoadMonitor$PendingAlert;", _UrlKt.FRAGMENT_ENCODE_SET, "file", "Ljava/io/File;", "message", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/io/File;Ljava/lang/String;)V", "getFile", "()Ljava/io/File;", "getMessage", "()Ljava/lang/String;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class PendingAlert {
        private final File file;
        private final String message;

        public PendingAlert(File file, String str) {
            this.file = file;
            this.message = str;
        }

        public final File getFile() {
            return this.file;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u001d\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lcom/exteragram/messenger/debug/LoadMonitor$Episode;", _UrlKt.FRAGMENT_ENCODE_SET, "startedAt", _UrlKt.FRAGMENT_ENCODE_SET, "startRealtime", "cpuMs", "rxBytes", "txBytes", "threads", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/debug/LoadMonitor$ThreadStat;", "health", "Landroid/os/health/HealthStats;", "<init>", "(JJJJJLjava/util/Map;Landroid/os/health/HealthStats;)V", "getStartedAt", "()J", "getStartRealtime", "getCpuMs", "getRxBytes", "getTxBytes", "getThreads", "()Ljava/util/Map;", "getHealth", "()Landroid/os/health/HealthStats;", "reported", _UrlKt.FRAGMENT_ENCODE_SET, "getReported", "()Z", "setReported", "(Z)V", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Episode {
        private final long cpuMs;
        private final HealthStats health;
        private boolean reported;
        private final long rxBytes;
        private final long startRealtime;
        private final long startedAt;
        private final Map<Integer, ThreadStat> threads;
        private final long txBytes;

        public Episode(long j, long j2, long j3, long j4, long j5, Map<Integer, ThreadStat> map, HealthStats healthStats) {
            this.startedAt = j;
            this.startRealtime = j2;
            this.cpuMs = j3;
            this.rxBytes = j4;
            this.txBytes = j5;
            this.threads = map;
            this.health = healthStats;
        }

        public final long getStartedAt() {
            return this.startedAt;
        }

        public final long getStartRealtime() {
            return this.startRealtime;
        }

        public final long getCpuMs() {
            return this.cpuMs;
        }

        public final long getRxBytes() {
            return this.rxBytes;
        }

        public final long getTxBytes() {
            return this.txBytes;
        }

        public final Map<Integer, ThreadStat> getThreads() {
            return this.threads;
        }

        public final HealthStats getHealth() {
            return this.health;
        }

        public final boolean getReported() {
            return this.reported;
        }

        public final void setReported(boolean z) {
            this.reported = z;
        }
    }

    @Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0016\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010$\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0006\u0010.\u001a\u00020/J\b\u00100\u001a\u00020/H\u0016J\b\u00101\u001a\u00020/H\u0016J5\u00102\u001a\u00020/2\u0006\u00103\u001a\u00020\u00182\u0006\u00104\u001a\u00020\u00182\u0016\u00105\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010706\"\u0004\u0018\u000107H\u0016¢\u0006\u0002\u00108J\b\u00109\u001a\u00020/H\u0002J\b\u0010:\u001a\u00020/H\u0002J\b\u0010;\u001a\u00020/H\u0002J<\u0010<\u001a\u00020/2\u0006\u0010=\u001a\u00020\f2\u0006\u0010>\u001a\u00020\f2\u0006\u0010?\u001a\u00020\f2\u0006\u0010@\u001a\u00020\f2\u0012\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001b0BH\u0002J\n\u0010C\u001a\u0004\u0018\u00010\u000eH\u0002J\u000e\u0010D\u001a\u00020\u00102\u0006\u0010E\u001a\u00020%J\u000e\u0010F\u001a\u00020\u00102\u0006\u0010E\u001a\u00020%R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001b0\u001aj\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001b`\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010$\u001a\u001e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020 0\u001aj\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020 `\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00100'X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010+\u001a\u0004\u0018\u00010%2\b\u0010*\u001a\u0004\u0018\u00010%@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-¨\u0006G"}, d2 = {"Lcom/exteragram/messenger/debug/LoadMonitor$Sampler;", "Lorg/telegram/ui/Components/ForegroundDetector$Listener;", "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;", "<init>", "()V", "queue", "Lorg/telegram/messenger/DispatchQueue;", "getQueue", "()Lorg/telegram/messenger/DispatchQueue;", "sampleRunnable", "Ljava/lang/Runnable;", "startedAt", _UrlKt.FRAGMENT_ENCODE_SET, "startHealth", "Landroid/os/health/HealthStats;", "startBattery", "Lorg/json/JSONObject;", "recentHealth", "recentHealthRealtime", "lastRealtime", "lastCpuMs", "lastRxBytes", "lastTxBytes", "lastState", _UrlKt.FRAGMENT_ENCODE_SET, "threads", "Ljava/util/HashMap;", "Lcom/exteragram/messenger/debug/LoadMonitor$ThreadStat;", "Lkotlin/collections/HashMap;", "episode", "Lcom/exteragram/messenger/debug/LoadMonitor$Episode;", "wallMs", _UrlKt.FRAGMENT_ENCODE_SET, "cpuMs", "rxBytes", "txBytes", "threadMs", _UrlKt.FRAGMENT_ENCODE_SET, "samples", "Lkotlin/collections/ArrayDeque;", "observers", "Lorg/telegram/messenger/NotificationCenter$ObserversGroup;", "value", "summary", "getSummary", "()Ljava/lang/String;", "stop", _UrlKt.FRAGMENT_ENCODE_SET, "onBecameForeground", "onBecameBackground", "didReceivedNotification", "id", "account", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(II[Ljava/lang/Object;)V", "scheduleNext", "sample", "updateState", "checkEpisode", "now", "cpu", "rx", "tx", "current", _UrlKt.FRAGMENT_ENCODE_SET, "recentHealthStats", "captureReport", "trigger", "buildReport", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nLoadMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadMonitor.kt\ncom/exteragram/messenger/debug/LoadMonitor$Sampler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,696:1\n777#2:697\n873#2,2:698\n1586#2:700\n1661#2,3:701\n1080#2:712\n410#3,7:704\n1#4:711\n*S KotlinDebug\n*F\n+ 1 LoadMonitor.kt\ncom/exteragram/messenger/debug/LoadMonitor$Sampler\n*L\n567#1:697\n567#1:698,2\n567#1:700\n567#1:701,3\n663#1:712\n574#1:704,7\n*E\n"})
    public static final class Sampler implements ForegroundDetector.Listener, NotificationCenter.NotificationCenterDelegate {
        private final long[] cpuMs;
        private Episode episode;
        private long lastCpuMs;
        private long lastRealtime;
        private long lastRxBytes;
        private int lastState;
        private long lastTxBytes;
        private NotificationCenter.ObserversGroup observers;
        private final DispatchQueue queue;
        private HealthStats recentHealth;
        private long recentHealthRealtime;
        private final long[] rxBytes;
        private final Runnable sampleRunnable;
        private final ArrayDeque<JSONObject> samples;
        private JSONObject startBattery;
        private HealthStats startHealth;
        private final long startedAt;
        private volatile String summary;
        private final HashMap<String, long[]> threadMs;
        private HashMap<Integer, ThreadStat> threads;
        private final long[] txBytes;
        private final long[] wallMs;

        public Sampler() {
            DispatchQueue dispatchQueue = new DispatchQueue("loadMonitorQueue");
            this.queue = dispatchQueue;
            this.sampleRunnable = new Runnable() { // from class: com.exteragram.messenger.debug.LoadMonitor$Sampler$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() throws JSONException {
                    LoadMonitor.Sampler.$r8$lambda$kogUcZhXgMzzA6XabLRzcV5MgzI(this.f$0);
                }
            };
            this.startedAt = System.currentTimeMillis();
            this.lastRxBytes = -1L;
            this.lastTxBytes = -1L;
            this.threads = new HashMap<>();
            this.wallMs = new long[LoadMonitor.STATE_NAMES.length];
            this.cpuMs = new long[LoadMonitor.STATE_NAMES.length];
            this.rxBytes = new long[LoadMonitor.STATE_NAMES.length];
            this.txBytes = new long[LoadMonitor.STATE_NAMES.length];
            this.threadMs = new HashMap<>();
            this.samples = new ArrayDeque<>();
            ForegroundDetector foregroundDetector = ForegroundDetector.getInstance();
            if (foregroundDetector != null) {
                foregroundDetector.addListener(this);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.LoadMonitor$Sampler$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    LoadMonitor.Sampler sampler = this.f$0;
                    sampler.observers = NotificationCenter.getGlobalInstance().createObserversGroup(sampler).add(NotificationCenter.screenStateChanged);
                }
            });
            dispatchQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.debug.LoadMonitor$Sampler$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    LoadMonitor.Sampler.$r8$lambda$glfliRZC8QH3MoG1_ZtmW_f9wTg(this.f$0);
                }
            });
        }

        public final DispatchQueue getQueue() {
            return this.queue;
        }

        public static void $r8$lambda$kogUcZhXgMzzA6XabLRzcV5MgzI(Sampler sampler) throws JSONException {
            sampler.sample();
            sampler.scheduleNext();
        }

        public final String getSummary() {
            return this.summary;
        }

        public static void $r8$lambda$glfliRZC8QH3MoG1_ZtmW_f9wTg(Sampler sampler) {
            sampler.startHealth = sampler.recentHealthStats();
            LoadMonitor loadMonitor = LoadMonitor.INSTANCE;
            sampler.startBattery = loadMonitor.batteryJson();
            sampler.lastRealtime = SystemClock.elapsedRealtime();
            sampler.lastCpuMs = Process.getElapsedCpuTime();
            sampler.lastRxBytes = loadMonitor.uidRxBytes();
            sampler.lastTxBytes = loadMonitor.uidTxBytes();
            sampler.threads = loadMonitor.readThreads();
            sampler.updateState();
            sampler.scheduleNext();
        }

        public final void stop() {
            ForegroundDetector foregroundDetector = ForegroundDetector.getInstance();
            if (foregroundDetector != null) {
                foregroundDetector.removeListener(this);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.LoadMonitor$Sampler$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    LoadMonitor.Sampler.m2415$r8$lambda$EVTY6NAYOMQOkky9ZN8dYzdoOw(this.f$0);
                }
            });
            this.queue.cleanupQueue();
            this.queue.recycle();
        }

        /* JADX INFO: renamed from: $r8$lambda$E-VTY6NAYOMQOkky9ZN8dYzdoOw, reason: not valid java name */
        public static void m2415$r8$lambda$EVTY6NAYOMQOkky9ZN8dYzdoOw(Sampler sampler) {
            NotificationCenter.ObserversGroup observersGroup = sampler.observers;
            if (observersGroup != null) {
                observersGroup.removeAllObservers();
            }
            sampler.observers = null;
        }

        @Override // org.telegram.ui.Components.ForegroundDetector.Listener
        public void onBecameForeground() {
            this.queue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.debug.LoadMonitor$Sampler$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() throws JSONException {
                    this.f$0.sample();
                }
            });
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.LoadMonitor$Sampler$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    LoadMonitor.INSTANCE.showPendingAlert();
                }
            }, 1000L);
        }

        @Override // org.telegram.ui.Components.ForegroundDetector.Listener
        public void onBecameBackground() {
            this.queue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.debug.LoadMonitor$Sampler$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() throws JSONException {
                    this.f$0.sample();
                }
            });
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int id, int account, Object... args) {
            if (id == NotificationCenter.screenStateChanged) {
                this.queue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.debug.LoadMonitor$Sampler$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() throws JSONException {
                        this.f$0.sample();
                    }
                });
            }
        }

        private final void scheduleNext() {
            this.queue.cancelRunnable(this.sampleRunnable);
            this.queue.postRunnable(this.sampleRunnable, 60000L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:11:0x003b  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x008b  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00bc A[LOOP:1: B:29:0x00ba->B:30:0x00bc, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00fd  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0133  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void sample() throws JSONException {
            long j;
            long j2;
            long jSumOfLong;
            long j3;
            HashMap<Integer, ThreadStat> map;
            int size;
            int i;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long elapsedCpuTime = Process.getElapsedCpuTime();
            LoadMonitor loadMonitor = LoadMonitor.INSTANCE;
            long jUidRxBytes = loadMonitor.uidRxBytes();
            long jUidTxBytes = loadMonitor.uidTxBytes();
            HashMap<Integer, ThreadStat> threads = loadMonitor.readThreads();
            int i2 = this.lastState;
            long j4 = jElapsedRealtime - this.lastRealtime;
            long j5 = elapsedCpuTime - this.lastCpuMs;
            if (jUidRxBytes >= 0) {
                j = jUidTxBytes;
                long j6 = this.lastRxBytes;
                long j7 = j6 >= 0 ? jUidRxBytes - j6 : 0L;
                if (j < 0) {
                    j2 = jUidRxBytes;
                    long j8 = this.lastTxBytes;
                    long j9 = j8 >= 0 ? j - j8 : 0L;
                    HashMap mapThreadDeltas = loadMonitor.threadDeltas(this.threads, threads);
                    jSumOfLong = j5 - CollectionsKt.sumOfLong(mapThreadDeltas.values());
                    if (jSumOfLong > 0) {
                        map = threads;
                        j3 = elapsedCpuTime;
                        mapThreadDeltas.put("<unattributed>", Long.valueOf(jSumOfLong));
                    } else {
                        j3 = elapsedCpuTime;
                        map = threads;
                    }
                    List list = loadMonitor.topThreads(mapThreadDeltas, 3);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list) {
                        if (((Number) ((Pair) obj).getSecond()).longValue() >= 200) {
                            arrayList.add(obj);
                        }
                    }
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
                    size = arrayList.size();
                    i = 0;
                    while (i < size) {
                        Object obj2 = arrayList.get(i);
                        i++;
                        arrayList2.add((String) ((Pair) obj2).getFirst());
                    }
                    loadMonitor.resolveOrigins(arrayList2);
                    long[] jArr = this.wallMs;
                    jArr[i2] = jArr[i2] + j4;
                    long[] jArr2 = this.cpuMs;
                    jArr2[i2] = jArr2[i2] + j5;
                    long[] jArr3 = this.rxBytes;
                    jArr3[i2] = jArr3[i2] + j7;
                    long[] jArr4 = this.txBytes;
                    jArr4[i2] = jArr4[i2] + j9;
                    for (Map.Entry entry : mapThreadDeltas.entrySet()) {
                        String str = (String) entry.getKey();
                        long jLongValue = ((Number) entry.getValue()).longValue();
                        HashMap<String, long[]> map2 = this.threadMs;
                        long[] jArr5 = map2.get(str);
                        if (jArr5 == null) {
                            jArr5 = new long[LoadMonitor.STATE_NAMES.length];
                            map2.put(str, jArr5);
                        }
                        long[] jArr6 = jArr5;
                        jArr6[i2] = jArr6[i2] + jLongValue;
                    }
                    if (j4 >= 1000) {
                        ArrayDeque<JSONObject> arrayDeque = this.samples;
                        JSONObject jSONObjectPut = new JSONObject().put("t", System.currentTimeMillis()).put("state", LoadMonitor.STATE_NAMES[i2]).put("wallMs", j4).put("cpuMs", j5).put("rxBytes", j7).put("txBytes", j9);
                        LoadMonitor loadMonitor2 = LoadMonitor.INSTANCE;
                        arrayDeque.addLast(jSONObjectPut.put("plugged", loadMonitor2.isPlugged()).put("threads", LoadMonitor.threadsJson$default(loadMonitor2, loadMonitor2.topThreads(mapThreadDeltas, 3), false, 2, null)));
                        while (this.samples.size() > 240) {
                            this.samples.removeFirst();
                        }
                    }
                    this.lastRealtime = jElapsedRealtime;
                    long j10 = j3;
                    this.lastCpuMs = j10;
                    long j11 = j2;
                    this.lastRxBytes = j11;
                    long j12 = j;
                    this.lastTxBytes = j12;
                    HashMap<Integer, ThreadStat> map3 = map;
                    this.threads = map3;
                    this.summary = LoadMonitor.INSTANCE.formatDuration(ArraysKt.sum(this.cpuMs)) + " CPU, " + AndroidUtilities.formatFileSize(ArraysKt.sum(this.rxBytes) + ArraysKt.sum(this.txBytes));
                    checkEpisode(jElapsedRealtime, j10, j11, j12, map3);
                    updateState();
                }
                j2 = jUidRxBytes;
                HashMap mapThreadDeltas2 = loadMonitor.threadDeltas(this.threads, threads);
                jSumOfLong = j5 - CollectionsKt.sumOfLong(mapThreadDeltas2.values());
                if (jSumOfLong > 0) {
                }
                List list2 = loadMonitor.topThreads(mapThreadDeltas2, 3);
                ArrayList arrayList3 = new ArrayList();
                while (r4.hasNext()) {
                }
                ArrayList arrayList22 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
                size = arrayList3.size();
                i = 0;
                while (i < size) {
                }
                loadMonitor.resolveOrigins(arrayList22);
                long[] jArr7 = this.wallMs;
                jArr7[i2] = jArr7[i2] + j4;
                long[] jArr22 = this.cpuMs;
                jArr22[i2] = jArr22[i2] + j5;
                long[] jArr32 = this.rxBytes;
                jArr32[i2] = jArr32[i2] + j7;
                long[] jArr42 = this.txBytes;
                jArr42[i2] = jArr42[i2] + j9;
                while (r1.hasNext()) {
                }
                if (j4 >= 1000) {
                }
                this.lastRealtime = jElapsedRealtime;
                long j102 = j3;
                this.lastCpuMs = j102;
                long j112 = j2;
                this.lastRxBytes = j112;
                long j122 = j;
                this.lastTxBytes = j122;
                HashMap<Integer, ThreadStat> map32 = map;
                this.threads = map32;
                this.summary = LoadMonitor.INSTANCE.formatDuration(ArraysKt.sum(this.cpuMs)) + " CPU, " + AndroidUtilities.formatFileSize(ArraysKt.sum(this.rxBytes) + ArraysKt.sum(this.txBytes));
                checkEpisode(jElapsedRealtime, j102, j112, j122, map32);
                updateState();
            }
            j = jUidTxBytes;
            if (j < 0) {
            }
            HashMap mapThreadDeltas22 = loadMonitor.threadDeltas(this.threads, threads);
            jSumOfLong = j5 - CollectionsKt.sumOfLong(mapThreadDeltas22.values());
            if (jSumOfLong > 0) {
            }
            List list22 = loadMonitor.topThreads(mapThreadDeltas22, 3);
            ArrayList arrayList32 = new ArrayList();
            while (r4.hasNext()) {
            }
            ArrayList arrayList222 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList32, 10));
            size = arrayList32.size();
            i = 0;
            while (i < size) {
            }
            loadMonitor.resolveOrigins(arrayList222);
            long[] jArr72 = this.wallMs;
            jArr72[i2] = jArr72[i2] + j4;
            long[] jArr222 = this.cpuMs;
            jArr222[i2] = jArr222[i2] + j5;
            long[] jArr322 = this.rxBytes;
            jArr322[i2] = jArr322[i2] + j7;
            long[] jArr422 = this.txBytes;
            jArr422[i2] = jArr422[i2] + j9;
            while (r1.hasNext()) {
            }
            if (j4 >= 1000) {
            }
            this.lastRealtime = jElapsedRealtime;
            long j1022 = j3;
            this.lastCpuMs = j1022;
            long j1122 = j2;
            this.lastRxBytes = j1122;
            long j1222 = j;
            this.lastTxBytes = j1222;
            HashMap<Integer, ThreadStat> map322 = map;
            this.threads = map322;
            this.summary = LoadMonitor.INSTANCE.formatDuration(ArraysKt.sum(this.cpuMs)) + " CPU, " + AndroidUtilities.formatFileSize(ArraysKt.sum(this.rxBytes) + ArraysKt.sum(this.txBytes));
            checkEpisode(jElapsedRealtime, j1022, j1122, j1222, map322);
            updateState();
        }

        private final void updateState() {
            int iCurrentState = LoadMonitor.INSTANCE.currentState();
            this.lastState = iCurrentState;
            if (iCurrentState == 0) {
                this.episode = null;
            } else if (this.episode == null) {
                this.episode = new Episode(System.currentTimeMillis(), this.lastRealtime, this.lastCpuMs, this.lastRxBytes, this.lastTxBytes, this.threads, recentHealthStats());
            }
        }

        private final void checkEpisode(long now, long cpu, long rx, long tx, Map<Integer, ThreadStat> current) {
            Object objM3608constructorimpl;
            Episode episode = this.episode;
            if (episode == null) {
                return;
            }
            long startRealtime = now - episode.getStartRealtime();
            if (episode.getReported() || startRealtime < 300000) {
                return;
            }
            long cpuMs = cpu - episode.getCpuMs();
            long j = 100 * cpuMs;
            LoadMonitor loadMonitor = LoadMonitor.INSTANCE;
            if (j < ((long) loadMonitor.getCpuPercent()) * startRealtime) {
                return;
            }
            episode.setReported(true);
            try {
                Result.Companion companion = Result.INSTANCE;
                objM3608constructorimpl = Result.m3608constructorimpl(loadMonitor.writeReport(buildReport("background"), "background"));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl);
            if (thM3611exceptionOrNullimpl != null) {
                FileLog.m1040e(thM3611exceptionOrNullimpl);
            }
            if (Result.m3614isFailureimpl(objM3608constructorimpl)) {
                objM3608constructorimpl = null;
            }
            File file = (File) objM3608constructorimpl;
            if (file == null) {
                return;
            }
            long txBytes = -1;
            long rxBytes = (rx < 0 || episode.getRxBytes() < 0) ? -1L : rx - episode.getRxBytes();
            if (tx >= 0 && episode.getTxBytes() >= 0) {
                txBytes = tx - episode.getTxBytes();
            }
            LoadMonitor loadMonitor2 = LoadMonitor.INSTANCE;
            LoadMonitor.pendingAlert = new PendingAlert(file, loadMonitor2.describeEpisode(startRealtime, cpuMs, rxBytes, txBytes, loadMonitor2.topThreads(loadMonitor2.threadDeltas(episode.getThreads(), current), 3)));
            ForegroundDetector foregroundDetector = ForegroundDetector.getInstance();
            if (foregroundDetector == null || !foregroundDetector.isForeground()) {
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.LoadMonitor$Sampler$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    LoadMonitor.INSTANCE.showPendingAlert();
                }
            });
        }

        private final HealthStats recentHealthStats() {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.recentHealth == null || jElapsedRealtime - this.recentHealthRealtime > 60000) {
                this.recentHealth = LoadMonitor.INSTANCE.takeHealthStats();
                this.recentHealthRealtime = jElapsedRealtime;
            }
            return this.recentHealth;
        }

        public final JSONObject captureReport(String trigger) throws JSONException {
            sample();
            return buildReport(trigger);
        }

        public final JSONObject buildReport(String trigger) throws JSONException {
            JSONObject jSONObjectBaseReport = LoadMonitor.INSTANCE.baseReport(trigger);
            JSONObject jSONObject = new JSONObject();
            int length = LoadMonitor.STATE_NAMES.length;
            for (int i = 0; i < length; i++) {
                jSONObject.put(LoadMonitor.STATE_NAMES[i], new JSONObject().put("wallMs", this.wallMs[i]).put("cpuMs", this.cpuMs[i]).put("rxBytes", this.rxBytes[i]).put("txBytes", this.txBytes[i]));
            }
            JSONArray jSONArray = new JSONArray();
            Iterator it = CollectionsKt.take(CollectionsKt.sortedWith(this.threadMs.entrySet(), new Comparator() { // from class: com.exteragram.messenger.debug.LoadMonitor$Sampler$buildReport$$inlined$sortedByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(Long.valueOf(ArraysKt.sum((long[]) ((Map.Entry) t2).getValue())), Long.valueOf(ArraysKt.sum((long[]) ((Map.Entry) t).getValue())));
                }
            }), 30).iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                long[] jArr = (long[]) entry.getValue();
                JSONObject jSONObjectPut = new JSONObject().put("name", str).put("cpuMs", ArraysKt.sum(jArr)).put("at", LoadMonitor.INSTANCE.originOf(str));
                int length2 = LoadMonitor.STATE_NAMES.length;
                int i2 = 0;
                while (i2 < length2) {
                    jSONObjectPut.put(LoadMonitor.STATE_NAMES[i2], jArr[i2]);
                    i2++;
                    it = it;
                }
                jSONArray.put(jSONObjectPut);
            }
            jSONObjectBaseReport.put("monitor", new JSONObject().put("startedAt", this.startedAt).put("sampleIntervalMs", 60000L).put("batteryAtStart", this.startBattery).put("states", jSONObject).put("threads", jSONArray).put("samples", new JSONArray((Collection) this.samples)));
            Episode episode = this.episode;
            if (episode != null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long elapsedCpuTime = Process.getElapsedCpuTime();
                LoadMonitor loadMonitor = LoadMonitor.INSTANCE;
                long jUidRxBytes = loadMonitor.uidRxBytes();
                long jUidTxBytes = loadMonitor.uidTxBytes();
                JSONObject jSONObjectPut2 = new JSONObject().put("startedAt", episode.getStartedAt()).put("wallMs", jElapsedRealtime - episode.getStartRealtime()).put("cpuMs", elapsedCpuTime - episode.getCpuMs());
                long txBytes = -1;
                JSONObject jSONObjectPut3 = jSONObjectPut2.put("rxBytes", (jUidRxBytes < 0 || episode.getRxBytes() < 0) ? -1L : jUidRxBytes - episode.getRxBytes());
                if (jUidTxBytes >= 0 && episode.getTxBytes() >= 0) {
                    txBytes = jUidTxBytes - episode.getTxBytes();
                }
                jSONObjectBaseReport.put("episode", jSONObjectPut3.put("txBytes", txBytes).put("threads", loadMonitor.threadsJson(loadMonitor.topThreads(loadMonitor.threadDeltas(episode.getThreads(), loadMonitor.readThreads()), 30), true)));
                HealthStats health = episode.getHealth();
                if (health != null) {
                    jSONObjectBaseReport.put("healthEpisodeStart", loadMonitor.healthJson(health));
                }
            }
            HealthStats healthStats = this.startHealth;
            if (healthStats != null) {
                jSONObjectBaseReport.put("healthStart", LoadMonitor.INSTANCE.healthJson(healthStats));
            }
            return jSONObjectBaseReport;
        }
    }
}
