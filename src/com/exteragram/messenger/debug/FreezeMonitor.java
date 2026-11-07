package com.exteragram.messenger.debug;

import android.app.Activity;
import android.os.Build;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.util.SparseArray;
import com.exteragram.messenger.debug.FreezeMonitor;
import com.exteragram.messenger.plugins.Plugin;
import com.exteragram.messenger.plugins.PluginsController;
import com.google.android.gms.cast.CastStatusCodes;
import java.io.File;
import java.io.RandomAccessFile;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
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
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
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
import kotlin.text.Typography;
import kotlin.time.DurationKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.NotificationBadge;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ForegroundDetector;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\r\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002cdB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0015\u0010\u0013J\u001f\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001d\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b\u001f\u0010 J+\u0010&\u001a\b\u0012\u0004\u0012\u00020\t0%2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0!2\u0006\u0010$\u001a\u00020\u0016H\u0002¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\tH\u0002¢\u0006\u0004\b(\u0010\u001cJ\u000f\u0010)\u001a\u00020\tH\u0002¢\u0006\u0004\b)\u0010\u001cJ\u0017\u0010,\u001a\u00020\t2\u0006\u0010+\u001a\u00020*H\u0002¢\u0006\u0004\b,\u0010-J\u0019\u0010/\u001a\u00020\t2\b\u0010.\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\tH\u0002¢\u0006\u0004\b1\u0010\u001cJ!\u00104\u001a\u00020\u001e2\u0010\u00103\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u0003020!H\u0002¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\tH\u0002¢\u0006\u0004\b6\u0010\u001cJ\u000f\u00107\u001a\u00020\tH\u0002¢\u0006\u0004\b7\u0010\u001cJ\u0015\u0010:\u001a\u00020\u00042\u0006\u00109\u001a\u000208¢\u0006\u0004\b:\u0010;J\r\u0010<\u001a\u00020\u0016¢\u0006\u0004\b<\u0010=J\u0015\u0010?\u001a\u00020\u00042\u0006\u0010>\u001a\u00020\u0016¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\bA\u0010\bJ\r\u0010B\u001a\u00020\r¢\u0006\u0004\bB\u0010CJ\u001b\u0010F\u001a\u00020\u00042\f\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00040D¢\u0006\u0004\bF\u0010GJ\u0015\u0010J\u001a\u00020\u00042\u0006\u0010I\u001a\u00020H¢\u0006\u0004\bJ\u0010KR\u001a\u0010L\u001a\b\u0012\u0004\u0012\u00020\t0!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010MR\u001a\u0010N\u001a\b\u0012\u0004\u0012\u00020\t0!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010MR\u001a\u0010O\u001a\b\u0012\u0004\u0012\u00020\t0!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010MR\u001a\u0010P\u001a\b\u0012\u0004\u0012\u00020\t0!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010MR\u0018\u0010R\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0016\u0010T\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0014\u0010V\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010WR'\u0010]\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\t0X8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R\u001b\u0010`\u001a\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b^\u0010Z\u001a\u0004\b_\u0010\bR\u0014\u0010b\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\ba\u0010\b¨\u0006e"}, d2 = {"Lcom/exteragram/messenger/debug/FreezeMonitor;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "init", "Ljava/io/File;", "copyReport", "()Ljava/io/File;", _UrlKt.FRAGMENT_ENCODE_SET, "text", "appendReport", "(Ljava/lang/String;)V", _UrlKt.FRAGMENT_ENCODE_SET, "durationMs", "showFreezeBulletin", "(J)V", "ms", "formatSeconds", "(J)Ljava/lang/String;", "bytes", "formatMb", _UrlKt.FRAGMENT_ENCODE_SET, NotificationBadge.NewHtcHomeBadger.COUNT, "total", "percent", "(II)Ljava/lang/String;", "appLine", "()Ljava/lang/String;", "heapLine", _UrlKt.FRAGMENT_ENCODE_SET, "gcStats", "()[J", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/StackTraceElement;", "trace", "limit", _UrlKt.FRAGMENT_ENCODE_SET, "frameNames", "([Ljava/lang/StackTraceElement;I)Ljava/util/List;", "screenName", "fragmentStack", "Ljava/lang/Thread;", "mainThread", "otherThreads", "(Ljava/lang/Thread;)Ljava/lang/String;", "delegate", "delegateName", "(Ljava/lang/Object;)Ljava/lang/String;", "observers", "Ljava/lang/Class;", "classes", "countInstances", "([Ljava/lang/Class;)[J", "liveObjects", "environment", _UrlKt.FRAGMENT_ENCODE_SET, "enabled", "setEnabled", "(Z)V", "getThresholdMs", "()I", "thresholdMs", "setThresholdMs", "(I)V", "getReport", "getReportsSize", "()J", "Lkotlin/Function0;", "onDone", "deleteReports", "(Lkotlin/jvm/functions/Function0;)V", "Landroid/app/Activity;", "activity", "shareReport", "(Landroid/app/Activity;)V", "APP_FRAME_PREFIXES", "[Ljava/lang/String;", "IDLE_TOP_FRAMES", "COUNTED_CLASSES", "GC_STATS", "Lcom/exteragram/messenger/debug/FreezeMonitor$Watchdog;", "watchdog", "Lcom/exteragram/messenger/debug/FreezeMonitor$Watchdog;", "freezes", "I", "reportLock", "Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "notificationNames$delegate", "Lkotlin/Lazy;", "getNotificationNames", "()Ljava/util/Map;", "notificationNames", "reportsDir$delegate", "getReportsDir", "reportsDir", "getReportFile", "reportFile", "Freeze", "Watchdog", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFreezeMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FreezeMonitor.kt\ncom/exteragram/messenger/debug/FreezeMonitor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,512:1\n1#2:513\n14048#3,2:514\n13213#3,2:520\n3938#3:533\n4474#3,2:534\n14048#3,2:542\n1586#4:516\n1661#4,3:517\n1915#4,2:522\n1080#4:524\n1080#4:525\n777#4:526\n873#4,2:527\n1586#4:529\n1661#4,3:530\n1205#4,2:536\n1282#4,4:538\n*S KotlinDebug\n*F\n+ 1 FreezeMonitor.kt\ncom/exteragram/messenger/debug/FreezeMonitor\n*L\n157#1:514,2\n231#1:520,2\n99#1:533\n99#1:534,2\n135#1:542,2\n210#1:516\n210#1:517,3\n233#1:522,2\n281#1:524\n284#1:525\n316#1:526\n316#1:527,2\n317#1:529\n317#1:530,3\n100#1:536,2\n100#1:538,4\n*E\n"})
public final class FreezeMonitor {
    private static volatile int freezes;
    private static volatile Watchdog watchdog;
    public static final FreezeMonitor INSTANCE = new FreezeMonitor();
    private static final String[] APP_FRAME_PREFIXES = {"org.telegram.", "com.exteragram.", "com.chaquo.", "dev.exterahook."};
    private static final String[] IDLE_TOP_FRAMES = {"android.os.MessageQueue.nativePollOnce", "java.lang.Object.wait", "java.lang.Thread.sleep", "sun.misc.Unsafe.park", "jdk.internal.misc.Unsafe.park", "java.net.", "libcore.io.Linux.", "android.system.Os.", "dalvik.system.VMStack.getThreadStackTrace"};
    private static final String[] COUNTED_CLASSES = {"org.telegram.ui.LaunchActivity", "org.telegram.ui.ActionBar.BaseFragment", "org.telegram.ui.ChatActivity", "org.telegram.ui.DialogsActivity", "org.telegram.ui.ProfileActivity", "org.telegram.ui.Components.ChatActivityEnterView", "org.telegram.ui.Components.EmojiView", "org.telegram.ui.Cells.ChatMessageCell", "org.telegram.messenger.ImageReceiver", "org.telegram.ui.Components.RLottieDrawable", "org.telegram.ui.Components.AnimatedFileDrawable", "org.telegram.ui.Components.AnimatedEmojiDrawable", "android.graphics.Bitmap"};
    private static final String[] GC_STATS = {"art.gc.blocking-gc-count", "art.gc.blocking-gc-time", "art.gc.gc-count", "art.gc.gc-time"};
    private static final Object reportLock = new Object();

    /* JADX INFO: renamed from: notificationNames$delegate, reason: from kotlin metadata */
    private static final Lazy notificationNames = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.debug.FreezeMonitor$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FreezeMonitor.$r8$lambda$tMil1XBAiJwy7TGwpE9xl4xRcZc();
        }
    });

    /* JADX INFO: renamed from: reportsDir$delegate, reason: from kotlin metadata */
    private static final Lazy reportsDir = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.debug.FreezeMonitor$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DebugFilesKt.debugFilesDir("freezereports");
        }
    });

    private FreezeMonitor() {
    }

    private final Map<Integer, String> getNotificationNames() {
        return (Map) notificationNames.getValue();
    }

    public static Map $r8$lambda$tMil1XBAiJwy7TGwpE9xl4xRcZc() {
        Field[] fields = NotificationCenter.class.getFields();
        ArrayList arrayList = new ArrayList();
        int i = 0;
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
        return linkedHashMap;
    }

    public final File getReportsDir() {
        return (File) reportsDir.getValue();
    }

    private final File getReportFile() {
        return new File(getReportsDir(), "freeze_report.txt");
    }

    @JvmStatic
    public static final void init() {
        if (DebugConfig.getFreezeMonitorEnabled()) {
            watchdog = new Watchdog();
        }
    }

    public final void setEnabled(boolean enabled) {
        if (DebugConfig.getFreezeMonitorEnabled() == enabled) {
            return;
        }
        DebugConfig.setFreezeMonitorEnabled(enabled);
        Watchdog watchdog2 = watchdog;
        if (watchdog2 != null) {
            watchdog2.stop();
        }
        watchdog = enabled ? new Watchdog() : null;
    }

    public final int getThresholdMs() {
        return RangesKt.coerceIn(DebugConfig.getFreezeMonitorThresholdMs(), 200, CastStatusCodes.AUTHENTICATION_FAILED);
    }

    public final void setThresholdMs(int thresholdMs) {
        DebugConfig.setFreezeMonitorThresholdMs(thresholdMs);
    }

    public final File getReport() {
        File reportFile = getReportFile();
        if (reportFile.length() > 0) {
            return reportFile;
        }
        return null;
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
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.debug.FreezeMonitor$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FreezeMonitor.$r8$lambda$RBr0NeeKCHpE5s3sEw4Cjr8pHLo(onDone);
            }
        });
    }

    public static void $r8$lambda$RBr0NeeKCHpE5s3sEw4Cjr8pHLo(final Function0 function0) {
        synchronized (reportLock) {
            try {
                File[] fileArrListFiles = INSTANCE.getReportsDir().listFiles();
                if (fileArrListFiles != null) {
                    for (File file : fileArrListFiles) {
                        file.delete();
                    }
                }
                freezes = 0;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.FreezeMonitor$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                function0.invoke();
            }
        });
    }

    public final void shareReport(final Activity activity) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.debug.FreezeMonitor$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                FreezeMonitor.$r8$lambda$_T9zH3KzMoOoXwuKJLL2JlMLHKY(activity);
            }
        });
    }

    public static void $r8$lambda$_T9zH3KzMoOoXwuKJLL2JlMLHKY(final Activity activity) {
        final Object objM3087constructorimpl;
        FreezeMonitor freezeMonitor = INSTANCE;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM3087constructorimpl = Result.m3087constructorimpl(freezeMonitor.copyReport());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(th));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.FreezeMonitor$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                FreezeMonitor.m2310$r8$lambda$pL8L44MmmW1BoAP12TaTM5KrvU(objM3087constructorimpl, activity);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$pL8L44MmmW1-BoAP12TaTM5KrvU, reason: not valid java name */
    public static void m2310$r8$lambda$pL8L44MmmW1BoAP12TaTM5KrvU(Object obj, Activity activity) {
        if (Result.m3094isSuccessimpl(obj)) {
            DebugFilesKt.shareDebugFile(activity, (File) obj, "text/plain", "Share freeze report");
        }
        Throwable thM3090exceptionOrNullimpl = Result.m3090exceptionOrNullimpl(obj);
        if (thM3090exceptionOrNullimpl != null) {
            FileLog.m992e(thM3090exceptionOrNullimpl);
            BulletinFactory.global().createSimpleBulletin(C2665R.raw.error, "Freeze report failed: " + thM3090exceptionOrNullimpl).show();
        }
    }

    private final File copyReport() {
        File file;
        synchronized (reportLock) {
            try {
                FreezeMonitor freezeMonitor = INSTANCE;
                file = new File(freezeMonitor.getReportsDir(), "freeze_" + BuildVars.BUILD_VERSION_STRING + "_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date()) + ".txt");
                File[] fileArrListFiles = freezeMonitor.getReportsDir().listFiles();
                if (fileArrListFiles != null) {
                    for (File file2 : fileArrListFiles) {
                        if (!Intrinsics.areEqual(file2.getName(), "freeze_report.txt")) {
                            file2.delete();
                        }
                    }
                }
                FilesKt.copyTo$default(INSTANCE.getReportFile(), file, true, 0, 4, null);
            } catch (Throwable th) {
                throw th;
            }
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void appendReport(String text) {
        synchronized (reportLock) {
            try {
                FreezeMonitor freezeMonitor = INSTANCE;
                freezeMonitor.getReportsDir().mkdirs();
                File reportFile = freezeMonitor.getReportFile();
                FilesKt.appendText$default(reportFile, text, null, 2, null);
                if (reportFile.length() > 2000000) {
                    byte[] bArr = new byte[DurationKt.NANOS_IN_MILLIS];
                    RandomAccessFile randomAccessFile = new RandomAccessFile(reportFile, "r");
                    try {
                        randomAccessFile.seek(randomAccessFile.length() - 1000000);
                        randomAccessFile.readFully(bArr);
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(randomAccessFile, null);
                        FilesKt.writeBytes(reportFile, ArraysKt.plus("##### (older records trimmed)\n".getBytes(Charsets.UTF_8), bArr));
                    } finally {
                    }
                }
            } catch (Exception e) {
                FileLog.m992e(e);
            }
            Unit unit2 = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showFreezeBulletin(long durationMs) {
        final LaunchActivity launchActivity = LaunchActivity.instance;
        if (watchdog == null || launchActivity == null || launchActivity.isFinishing()) {
            return;
        }
        BulletinFactory.global().createSimpleBulletin(C2665R.raw.error, "Main thread froze for " + formatSeconds(durationMs), "Share", new Runnable() { // from class: com.exteragram.messenger.debug.FreezeMonitor$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                FreezeMonitor.INSTANCE.shareReport(launchActivity);
            }
        }).show();
    }

    private final String formatSeconds(long ms) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format(Locale.US, "%.1f s", Arrays.copyOf(new Object[]{Double.valueOf(ms / 1000.0d)}, 1));
    }

    private final String formatMb(long bytes) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format(Locale.US, "%.1f MB", Arrays.copyOf(new Object[]{Double.valueOf(bytes / 1048576.0d)}, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String percent(int count, int total) {
        return StringsKt.padStart$default(String.valueOf((count * 100) / total), 4, (char) 0, 2, (Object) null);
    }

    private final String appLine() {
        return "app " + BuildVars.BUILD_VERSION_STRING + " (" + BuildVars.BUILD_VERSION + "), " + Build.MANUFACTURER + " " + Build.MODEL + ", Android " + Build.VERSION.RELEASE + " (API " + Build.VERSION.SDK_INT + ")";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String heapLine() {
        long usedBytes = HeapMonitor.INSTANCE.getUsedBytes();
        long jMaxMemory = Runtime.getRuntime().maxMemory();
        return "java " + formatMb(usedBytes) + " / " + formatMb(jMaxMemory) + " (" + ((usedBytes * 100) / jMaxMemory) + "%), native " + formatMb(Debug.getNativeHeapAllocatedSize());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long[] gcStats() {
        Long longOrNull;
        int length = GC_STATS.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            String runtimeStat = Debug.getRuntimeStat(GC_STATS[i]);
            jArr[i] = (runtimeStat == null || (longOrNull = StringsKt.toLongOrNull(runtimeStat)) == null) ? 0L : longOrNull.longValue();
        }
        return jArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<String> frameNames(StackTraceElement[] trace, int limit) {
        List listTake = ArraysKt.take(trace, limit);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listTake, 10));
        Iterator it = listTake.iterator();
        while (it.hasNext()) {
            arrayList.add(((StackTraceElement) it.next()).toString());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String screenName() {
        Object objM3087constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            BaseFragment lastFragmentIncludeMainTabs = LaunchActivity.getLastFragmentIncludeMainTabs();
            objM3087constructorimpl = Result.m3087constructorimpl(lastFragmentIncludeMainTabs != null ? lastFragmentIncludeMainTabs.getClass().getName() : "none");
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3093isFailureimpl(objM3087constructorimpl)) {
            objM3087constructorimpl = "unknown";
        }
        return (String) objM3087constructorimpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String fragmentStack() {
        Object objM3087constructorimpl;
        List<BaseFragment> listEmptyList;
        INavigationLayout actionBarLayout;
        try {
            Result.Companion companion = Result.INSTANCE;
            LaunchActivity launchActivity = LaunchActivity.instance;
            if (launchActivity == null || (actionBarLayout = launchActivity.getActionBarLayout()) == null || (listEmptyList = actionBarLayout.getFragmentStack()) == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(listEmptyList);
            objM3087constructorimpl = Result.m3087constructorimpl("(" + arrayList.size() + ") " + CollectionsKt.joinToString$default(arrayList, " > ", null, null, 0, null, new Function1() { // from class: com.exteragram.messenger.debug.FreezeMonitor$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ((BaseFragment) obj).getClass().getSimpleName();
                }
            }, 30, null));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3093isFailureimpl(objM3087constructorimpl)) {
            objM3087constructorimpl = "unavailable";
        }
        return (String) objM3087constructorimpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String otherThreads(Thread mainThread) {
        Thread.State state;
        StringBuilder sb = new StringBuilder();
        try {
            int i = 0;
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                StackTraceElement[] value = entry.getValue();
                if (Intrinsics.areEqual(key, mainThread) || Intrinsics.areEqual(key, Thread.currentThread()) || ((state = key.getState()) != Thread.State.RUNNABLE && state != Thread.State.BLOCKED)) {
                }
                List<String> listFrameNames = frameNames(value, 20);
                String str = (String) CollectionsKt.firstOrNull((List) listFrameNames);
                if (str != null) {
                    String[] strArr = IDLE_TOP_FRAMES;
                    int length = strArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length) {
                            if (StringsKt.startsWith$default(str, strArr[i2], false, 2, (Object) null)) {
                                break;
                            }
                            i2++;
                        } else {
                            sb.append(Typography.quote);
                            sb.append(key.getName());
                            sb.append("\" ");
                            sb.append(state);
                            sb.append('\n');
                            for (String str2 : listFrameNames) {
                                sb.append("    at ");
                                sb.append(str2);
                                sb.append('\n');
                            }
                            i++;
                            if (i >= 40) {
                                break;
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            sb.append("thread dump failed: ");
            sb.append(e);
            sb.append('\n');
        }
        return sb.length() > 0 ? sb.toString() : "(none)\n";
    }

    private final String delegateName(Object delegate) {
        Object objM3087constructorimpl;
        if (delegate == null) {
            return "null";
        }
        Class<?> cls = delegate.getClass();
        if (StringsKt.endsWith$default(cls.getName(), "WeakObserversGroupImpl", false, 2, (Object) null)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Field declaredField = cls.getDeclaredField("reference");
                declaredField.setAccessible(true);
                objM3087constructorimpl = Result.m3087constructorimpl(((WeakReference) declaredField.get(delegate)).get());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m3090exceptionOrNullimpl(objM3087constructorimpl) == null) {
                return (objM3087constructorimpl != null ? objM3087constructorimpl.getClass().getName() : "cleared").concat(" (weak)");
            }
            return cls.getName();
        }
        return cls.getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String observers() {
        Pair[] pairArr;
        int i;
        StringBuilder sb = new StringBuilder();
        Pair[] pairArr2 = {TuplesKt.to("account", NotificationCenter.getInstance(UserConfig.selectedAccount)), TuplesKt.to("global", NotificationCenter.getGlobalInstance())};
        int i2 = 0;
        while (i2 < 2) {
            Pair pair = pairArr2[i2];
            String str = (String) pair.component1();
            NotificationCenter notificationCenter = (NotificationCenter) pair.component2();
            try {
                Field declaredField = NotificationCenter.class.getDeclaredField("observers");
                boolean z = true;
                declaredField.setAccessible(true);
                SparseArray sparseArray = (SparseArray) declaredField.get(notificationCenter);
                ArrayList arrayList = new ArrayList();
                HashMap map = new HashMap();
                int size = sparseArray.size();
                int i3 = 0;
                int size2 = 0;
                while (i3 < size) {
                    List list = (List) sparseArray.valueAt(i3);
                    size2 += list.size();
                    Integer numValueOf = Integer.valueOf(list.size());
                    String strValueOf = getNotificationNames().get(Integer.valueOf(sparseArray.keyAt(i3)));
                    if (strValueOf == null) {
                        strValueOf = String.valueOf(sparseArray.keyAt(i3));
                    }
                    arrayList.add(TuplesKt.to(numValueOf, strValueOf));
                    int size3 = list.size();
                    int i4 = 0;
                    while (i4 < size3) {
                        boolean z2 = z;
                        try {
                            pairArr = pairArr2;
                            i = size3;
                        } catch (Exception e) {
                            e = e;
                            pairArr = pairArr2;
                            sb.append(str + ": failed " + e + "\n");
                            i2++;
                            pairArr2 = pairArr;
                        }
                        try {
                            String strSubstringAfterLast$default = StringsKt.substringAfterLast$default(delegateName(list.get(i4)), '.', (String) null, 2, (Object) null);
                            Integer num = (Integer) map.get(strSubstringAfterLast$default);
                            map.put(strSubstringAfterLast$default, Integer.valueOf((num != null ? num.intValue() : 0) + 1));
                            i4++;
                            z = z2;
                            pairArr2 = pairArr;
                            size3 = i;
                        } catch (Exception e2) {
                            e = e2;
                            sb.append(str + ": failed " + e + "\n");
                            i2++;
                            pairArr2 = pairArr;
                        }
                    }
                    i3++;
                    z = z;
                }
                pairArr = pairArr2;
                sb.append(str + ": " + size2 + " registrations in " + arrayList.size() + " ids\n");
                sb.append("  biggest ids: ");
                sb.append(CollectionsKt.joinToString$default(CollectionsKt.take(CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.exteragram.messenger.debug.FreezeMonitor$observers$$inlined$sortedByDescending$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues((Integer) ((Pair) t2).getFirst(), (Integer) ((Pair) t).getFirst());
                    }
                }), 8), ", ", null, null, 0, null, new Function1() { // from class: com.exteragram.messenger.debug.FreezeMonitor$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return FreezeMonitor.m2311$r8$lambda$sZJ7txUfGJHOdvGde6glWfp5qw((Pair) obj);
                    }
                }, 30, null));
                sb.append('\n');
                sb.append("  by class: ");
                sb.append(CollectionsKt.joinToString$default(CollectionsKt.take(CollectionsKt.sortedWith(map.entrySet(), new Comparator() { // from class: com.exteragram.messenger.debug.FreezeMonitor$observers$$inlined$sortedByDescending$2
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues((Integer) ((Map.Entry) t2).getValue(), (Integer) ((Map.Entry) t).getValue());
                    }
                }), 12), ", ", null, null, 0, null, new Function1() { // from class: com.exteragram.messenger.debug.FreezeMonitor$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return FreezeMonitor.m2309$r8$lambda$3IFPcz9IrhrqK662FxzsQxwz70((Map.Entry) obj);
                    }
                }, 30, null));
                sb.append('\n');
            } catch (Exception e3) {
                e = e3;
            }
            i2++;
            pairArr2 = pairArr;
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: $r8$lambda$sZJ7txUfGJHOdvGde6glWf-p5qw, reason: not valid java name */
    public static CharSequence m2311$r8$lambda$sZJ7txUfGJHOdvGde6glWfp5qw(Pair pair) {
        return pair.getSecond() + " " + pair.getFirst();
    }

    /* JADX INFO: renamed from: $r8$lambda$3IFPcz9IrhrqK662FxzsQxw-z70, reason: not valid java name */
    public static CharSequence m2309$r8$lambda$3IFPcz9IrhrqK662FxzsQxwz70(Map.Entry entry) {
        return entry.getKey() + " " + entry.getValue();
    }

    private final long[] countInstances(Class<?>[] classes) throws NoSuchMethodException, ClassNotFoundException {
        Class cls = Boolean.TYPE;
        Class<?> cls2 = Class.forName("dalvik.system.VMDebug");
        try {
            return (long[]) cls2.getDeclaredMethod("countInstancesOfClasses", classes.getClass(), cls).invoke(null, classes, Boolean.TRUE);
        } catch (ReflectiveOperationException unused) {
            Method declaredMethod = cls2.getDeclaredMethod("countInstancesOfClass", Class.class, cls);
            int length = classes.length;
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                jArr[i] = ((Long) declaredMethod.invoke(null, classes[i], Boolean.TRUE)).longValue();
            }
            return jArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String liveObjects() {
        try {
            int length = COUNTED_CLASSES.length;
            final Class<?>[] clsArr = new Class[length];
            for (int i = 0; i < length; i++) {
                clsArr[i] = Class.forName(COUNTED_CLASSES[i]);
            }
            HeapMonitor.INSTANCE.collectGarbage$TMessagesProj();
            final long[] jArrCountInstances = countInstances(clsArr);
            return CollectionsKt.joinToString$default(ArraysKt.getIndices(clsArr), "\n", null, "\n", 0, null, new Function1() { // from class: com.exteragram.messenger.debug.FreezeMonitor$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return FreezeMonitor.$r8$lambda$_4ZBAwpZNPPivCMaGPNiCgkjd9c(jArrCountInstances, clsArr, ((Integer) obj).intValue());
                }
            }, 26, null);
        } catch (Throwable th) {
            return "unavailable: " + th + "\n";
        }
    }

    public static CharSequence $r8$lambda$_4ZBAwpZNPPivCMaGPNiCgkjd9c(long[] jArr, Class[] clsArr, int i) {
        return StringsKt.padStart$default(String.valueOf(jArr[i]), 7, (char) 0, 2, (Object) null) + "  " + clsArr[i].getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String environment() {
        Object objM3087constructorimpl;
        Object objM3087constructorimpl2;
        try {
            Result.Companion companion = Result.INSTANCE;
            Collection<Plugin> collectionValues = PluginsController.INSTANCE.getInstance().getPlugins().values();
            ArrayList arrayList = new ArrayList();
            for (Object obj : collectionValues) {
                if (((Plugin) obj).isEnabled()) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                Plugin plugin = (Plugin) obj2;
                arrayList2.add(plugin.getId() + " " + plugin.getVersion());
            }
            String strJoinToString$default = CollectionsKt.joinToString$default(CollectionsKt.sorted(arrayList2), ", ", null, null, 0, null, null, 62, null);
            if (strJoinToString$default.length() == 0) {
                strJoinToString$default = "none";
            }
            objM3087constructorimpl = Result.m3087constructorimpl(strJoinToString$default);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM3090exceptionOrNullimpl = Result.m3090exceptionOrNullimpl(objM3087constructorimpl);
        if (thM3090exceptionOrNullimpl != null) {
            objM3087constructorimpl = "unavailable: " + thM3090exceptionOrNullimpl;
        }
        String str = (String) objM3087constructorimpl;
        try {
            objM3087constructorimpl2 = Result.m3087constructorimpl(Boolean.valueOf(UserConfig.getInstance(UserConfig.selectedAccount).isPremium()));
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM3087constructorimpl2 = Result.m3087constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m3093isFailureimpl(objM3087constructorimpl2)) {
            objM3087constructorimpl2 = null;
        }
        Boolean bool = (Boolean) objM3087constructorimpl2;
        String strAppLine = appLine();
        long jElapsedRealtime = (SystemClock.elapsedRealtime() - Process.getStartElapsedRealtime()) / 1000;
        ForegroundDetector foregroundDetector = ForegroundDetector.getInstance();
        return "-- environment --\n" + strAppLine + "\nprocess uptime " + jElapsedRealtime + " s, foreground " + (foregroundDetector != null ? Boolean.valueOf(foregroundDetector.isForeground()) : null) + "\nheap now: " + heapLine() + "\naccounts active " + UserConfig.getActivatedAccountsCount() + ", premium " + bool + "\nenabled plugins: " + str + "\n";
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0019\b\u0002\u0018\u00002\u00020\u0001BÅ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u000f\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u000f\u0012\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u000f\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u000f\u0012\u0018\u0010\u0013\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u0014\u0012\u0004\u0012\u00020\u00050\u000f\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001cR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001aR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\n\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b!\u0010 R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0011\u0010\r\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b$\u0010 R\u001d\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u000f¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u001d\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u000f¢\u0006\b\n\u0000\u001a\u0004\b'\u0010&R\u001d\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u000f¢\u0006\b\n\u0000\u001a\u0004\b(\u0010&R\u001d\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u000f¢\u0006\b\n\u0000\u001a\u0004\b)\u0010&R#\u0010\u0013\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u0014\u0012\u0004\u0012\u00020\u00050\u000f¢\u0006\b\n\u0000\u001a\u0004\b*\u0010&R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b+\u0010 R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b,\u0010 ¨\u0006-"}, d2 = {"Lcom/exteragram/messenger/debug/FreezeMonitor$Freeze;", _UrlKt.FRAGMENT_ENCODE_SET, "durationMs", _UrlKt.FRAGMENT_ENCODE_SET, "thresholdMs", _UrlKt.FRAGMENT_ENCODE_SET, "samples", "maxGapMs", "screen", _UrlKt.FRAGMENT_ENCODE_SET, "fragmentStack", "gcBefore", _UrlKt.FRAGMENT_ENCODE_SET, "heapBefore", "states", _UrlKt.FRAGMENT_ENCODE_SET, "hot", "hotDepth", "topFrames", "stacks", _UrlKt.FRAGMENT_ENCODE_SET, "otherThreads", "observers", "<init>", "(JIIJLjava/lang/String;Ljava/lang/String;[JLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V", "getDurationMs", "()J", "getThresholdMs", "()I", "getSamples", "getMaxGapMs", "getScreen", "()Ljava/lang/String;", "getFragmentStack", "getGcBefore", "()[J", "getHeapBefore", "getStates", "()Ljava/util/Map;", "getHot", "getHotDepth", "getTopFrames", "getStacks", "getOtherThreads", "getObservers", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Freeze {
        private final long durationMs;
        private final String fragmentStack;
        private final long[] gcBefore;
        private final String heapBefore;
        private final Map<String, Integer> hot;
        private final Map<String, Integer> hotDepth;
        private final long maxGapMs;
        private final String observers;
        private final String otherThreads;
        private final int samples;
        private final String screen;
        private final Map<List<String>, Integer> stacks;
        private final Map<String, Integer> states;
        private final int thresholdMs;
        private final Map<String, Integer> topFrames;

        public Freeze(long j, int i, int i2, long j2, String str, String str2, long[] jArr, String str3, Map<String, Integer> map, Map<String, Integer> map2, Map<String, Integer> map3, Map<String, Integer> map4, Map<List<String>, Integer> map5, String str4, String str5) {
            this.durationMs = j;
            this.thresholdMs = i;
            this.samples = i2;
            this.maxGapMs = j2;
            this.screen = str;
            this.fragmentStack = str2;
            this.gcBefore = jArr;
            this.heapBefore = str3;
            this.states = map;
            this.hot = map2;
            this.hotDepth = map3;
            this.topFrames = map4;
            this.stacks = map5;
            this.otherThreads = str4;
            this.observers = str5;
        }

        public final long getDurationMs() {
            return this.durationMs;
        }

        public final int getThresholdMs() {
            return this.thresholdMs;
        }

        public final int getSamples() {
            return this.samples;
        }

        public final long getMaxGapMs() {
            return this.maxGapMs;
        }

        public final String getScreen() {
            return this.screen;
        }

        public final String getFragmentStack() {
            return this.fragmentStack;
        }

        public final long[] getGcBefore() {
            return this.gcBefore;
        }

        public final String getHeapBefore() {
            return this.heapBefore;
        }

        public final Map<String, Integer> getStates() {
            return this.states;
        }

        public final Map<String, Integer> getHot() {
            return this.hot;
        }

        public final Map<String, Integer> getHotDepth() {
            return this.hotDepth;
        }

        public final Map<String, Integer> getTopFrames() {
            return this.topFrames;
        }

        public final Map<List<String>, Integer> getStacks() {
            return this.stacks;
        }

        public final String getOtherThreads() {
            return this.otherThreads;
        }

        public final String getObservers() {
            return this.observers;
        }
    }

    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\u0006\u0010\u0012\u001a\u00020\u0010J\b\u0010\u0013\u001a\u00020\u0010H\u0002J\b\u0010\u0014\u001a\u00020\u0010H\u0002J\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0016H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/exteragram/messenger/debug/FreezeMonitor$Watchdog;", "Lorg/telegram/ui/Components/ForegroundDetector$Listener;", "<init>", "()V", "queue", "Lorg/telegram/messenger/DispatchQueue;", "mainHandler", "Landroid/os/Handler;", "mainThread", "Ljava/lang/Thread;", "checkRunnable", "Ljava/lang/Runnable;", "running", _UrlKt.FRAGMENT_ENCODE_SET, "stopped", "onBecameForeground", _UrlKt.FRAGMENT_ENCODE_SET, "onBecameBackground", "stop", "updateRunning", "check", "sample", "Lcom/exteragram/messenger/debug/FreezeMonitor$Freeze;", "ping", "Ljava/util/concurrent/CountDownLatch;", "posted", _UrlKt.FRAGMENT_ENCODE_SET, "record", "freeze", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nFreezeMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FreezeMonitor.kt\ncom/exteragram/messenger/debug/FreezeMonitor$Watchdog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,512:1\n1#2:513\n1924#3,3:514\n1080#3:517\n777#3:518\n873#3:519\n874#3:522\n1915#3,2:523\n1080#3:525\n1915#3,2:526\n1080#3:528\n1915#3:529\n1915#3,2:530\n1916#3:532\n13213#4,2:520\n*S KotlinDebug\n*F\n+ 1 FreezeMonitor.kt\ncom/exteragram/messenger/debug/FreezeMonitor$Watchdog\n*L\n437#1:514,3\n479#1:517\n485#1:518\n485#1:519\n485#1:522\n488#1:523,2\n490#1:525\n491#1:526,2\n493#1:528\n493#1:529\n495#1:530,2\n493#1:532\n485#1:520,2\n*E\n"})
    public static final class Watchdog implements ForegroundDetector.Listener {
        private volatile boolean running;
        private volatile boolean stopped;
        private final DispatchQueue queue = new DispatchQueue("freezeMonitorQueue");
        private final Handler mainHandler = new Handler(Looper.getMainLooper());
        private final Thread mainThread = Looper.getMainLooper().getThread();
        private final Runnable checkRunnable = new Runnable() { // from class: com.exteragram.messenger.debug.FreezeMonitor$Watchdog$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.check();
            }
        };

        public Watchdog() {
            ForegroundDetector foregroundDetector = ForegroundDetector.getInstance();
            if (foregroundDetector != null) {
                foregroundDetector.addListener(this);
            }
            updateRunning();
        }

        @Override // org.telegram.ui.Components.ForegroundDetector.Listener
        public void onBecameForeground() {
            updateRunning();
        }

        @Override // org.telegram.ui.Components.ForegroundDetector.Listener
        public void onBecameBackground() {
            updateRunning();
        }

        public final void stop() {
            ForegroundDetector foregroundDetector = ForegroundDetector.getInstance();
            if (foregroundDetector != null) {
                foregroundDetector.removeListener(this);
            }
            this.stopped = true;
            this.running = false;
            this.queue.cleanupQueue();
            this.queue.recycle();
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0012  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private final void updateRunning() {
            boolean z;
            ForegroundDetector foregroundDetector;
            if (this.stopped || (foregroundDetector = ForegroundDetector.getInstance()) == null) {
                z = false;
            } else {
                z = true;
                if (!foregroundDetector.isForeground()) {
                }
            }
            if (this.running == z) {
                return;
            }
            this.running = z;
            this.queue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.debug.FreezeMonitor$Watchdog$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FreezeMonitor.Watchdog.$r8$lambda$uyHhUaXyy6G60GDDS44GZP7uBiU(this.f$0);
                }
            });
        }

        public static void $r8$lambda$uyHhUaXyy6G60GDDS44GZP7uBiU(Watchdog watchdog) {
            watchdog.queue.cancelRunnable(watchdog.checkRunnable);
            if (watchdog.running) {
                watchdog.queue.postRunnable(watchdog.checkRunnable);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void check() {
            Freeze freezeSample;
            if (this.running) {
                try {
                    final CountDownLatch countDownLatch = new CountDownLatch(1);
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    if (this.mainHandler.post(new Runnable() { // from class: com.exteragram.messenger.debug.FreezeMonitor$Watchdog$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            countDownLatch.countDown();
                        }
                    }) && !countDownLatch.await(100L, TimeUnit.MILLISECONDS) && (freezeSample = sample(countDownLatch, jUptimeMillis)) != null) {
                        record(freezeSample);
                    }
                } catch (Exception e) {
                    FileLog.m992e(e);
                }
                if (this.running) {
                    this.queue.postRunnable(this.checkRunnable, 200L);
                }
            }
        }

        private final Freeze sample(CountDownLatch ping, long posted) {
            int i;
            long j;
            FreezeMonitor freezeMonitor = FreezeMonitor.INSTANCE;
            int thresholdMs = freezeMonitor.getThresholdMs();
            long[] jArrGcStats = freezeMonitor.gcStats();
            String strHeapLine = freezeMonitor.heapLine();
            String strScreenName = freezeMonitor.screenName();
            String strFragmentStack = freezeMonitor.fragmentStack();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            HashMap map4 = new HashMap();
            HashMap map5 = new HashMap();
            long j2 = 0;
            long j3 = posted;
            int i2 = 0;
            String strOtherThreads = null;
            String strObservers = null;
            while (!this.stopped) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                int i3 = thresholdMs;
                long jMax = Math.max(j2, jUptimeMillis - j3);
                long j4 = jUptimeMillis - posted;
                if (j4 < 120000) {
                    String strName = this.mainThread.getState().name();
                    j = 20;
                    List listFrameNames = FreezeMonitor.INSTANCE.frameNames(this.mainThread.getStackTrace(), 150);
                    i2++;
                    Integer num = (Integer) map.get(strName);
                    map.put(strName, Integer.valueOf((num != null ? num.intValue() : 0) + 1));
                    if (!listFrameNames.isEmpty()) {
                        Object obj = listFrameNames.get(0);
                        Integer num2 = (Integer) map4.get(listFrameNames.get(0));
                        map4.put(obj, Integer.valueOf((num2 != null ? num2.intValue() : 0) + 1));
                        List list = listFrameNames;
                        List listTake = CollectionsKt.take(list, 40);
                        Integer num3 = (Integer) map5.get(listTake);
                        map5.put(listTake, Integer.valueOf((num3 != null ? num3.intValue() : 0) + 1));
                        int i4 = 0;
                        for (Object obj2 : list) {
                            int i5 = i4 + 1;
                            if (i4 < 0) {
                                CollectionsKt.throwIndexOverflow();
                            }
                            String str = (String) obj2;
                            Integer num4 = (Integer) map3.get(str);
                            if (i4 > (num4 != null ? num4.intValue() : -1)) {
                                map3.put(str, Integer.valueOf(i4));
                            }
                            i4 = i5;
                        }
                        for (String str2 : CollectionsKt.toHashSet(list)) {
                            Integer num5 = (Integer) map2.get(str2);
                            map2.put(str2, Integer.valueOf((num5 != null ? num5.intValue() : 0) + 1));
                        }
                    }
                    if (strOtherThreads == null) {
                        i = i3;
                        if (j4 + 20 >= i) {
                            FreezeMonitor freezeMonitor2 = FreezeMonitor.INSTANCE;
                            strOtherThreads = freezeMonitor2.otherThreads(this.mainThread);
                            strObservers = freezeMonitor2.observers();
                        }
                    } else {
                        i = i3;
                    }
                } else {
                    i = i3;
                    j = 20;
                }
                int i6 = i2;
                if (ping.await(j, TimeUnit.MILLISECONDS)) {
                    long jUptimeMillis2 = SystemClock.uptimeMillis() - posted;
                    if (jUptimeMillis2 < i) {
                        return null;
                    }
                    return new Freeze(jUptimeMillis2, i, i6, jMax, strScreenName, strFragmentStack, jArrGcStats, strHeapLine, map, map2, map3, map4, map5, strOtherThreads, strObservers);
                }
                i2 = i6;
                j2 = jMax;
                thresholdMs = i;
                j3 = jUptimeMillis;
            }
            return null;
        }

        private final void record(final Freeze freeze) {
            FreezeMonitor freezeMonitor = FreezeMonitor.INSTANCE;
            long[] jArrGcStats = freezeMonitor.gcStats();
            FreezeMonitor.freezes++;
            int i = FreezeMonitor.freezes;
            int samples = freeze.getSamples();
            StringBuilder sb = new StringBuilder();
            sb.append("\n=== Freeze #" + i + " at " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date()) + ": ");
            long durationMs = freeze.getDurationMs();
            StringBuilder sb2 = new StringBuilder("main thread blocked ");
            sb2.append(durationMs);
            sb2.append(" ms\n");
            sb.append(sb2.toString());
            sb.append("threshold " + freeze.getThresholdMs() + " ms, " + samples + " samples every 20 ms from 100 ms\n");
            if (freeze.getMaxGapMs() > 2000) {
                sb.append("WARNING: the monitor thread itself stalled for " + freeze.getMaxGapMs() + " ms, the system probably froze the whole process; this record may be bogus\n");
            }
            sb.append("screen at start: " + freeze.getScreen() + "\n");
            sb.append("fragment stack " + freeze.getFragmentStack() + "\n");
            sb.append("GC during freeze: blocking " + (jArrGcStats[0] - freeze.getGcBefore()[0]) + " (" + (jArrGcStats[1] - freeze.getGcBefore()[1]) + " ms), ");
            sb.append("all " + (jArrGcStats[2] - freeze.getGcBefore()[2]) + " (" + (jArrGcStats[3] - freeze.getGcBefore()[3]) + " ms)\n");
            String heapBefore = freeze.getHeapBefore();
            StringBuilder sb3 = new StringBuilder("heap before: ");
            sb3.append(heapBefore);
            sb3.append("\n");
            sb.append(sb3.toString());
            sb.append("heap after:  " + freezeMonitor.heapLine() + "\n");
            sb.append("main thread states: ");
            sb.append(CollectionsKt.joinToString$default(CollectionsKt.sortedWith(freeze.getStates().entrySet(), new Comparator() { // from class: com.exteragram.messenger.debug.FreezeMonitor$Watchdog$record$$inlined$sortedByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues((Integer) ((Map.Entry) t2).getValue(), (Integer) ((Map.Entry) t).getValue());
                }
            }), ", ", null, null, 0, null, new Function1() { // from class: com.exteragram.messenger.debug.FreezeMonitor$Watchdog$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return FreezeMonitor.Watchdog.$r8$lambda$h1v9OQjRKZY3Ae1g5HeNBHyC0Xg((Map.Entry) obj);
                }
            }, 30, null));
            sb.append('\n');
            if (samples > 0) {
                sb.append("\n-- hot app frames (share of samples, outermost first) --\n");
                Set<Map.Entry<String, Integer>> setEntrySet = freeze.getHot().entrySet();
                ArrayList arrayList = new ArrayList();
                for (Object obj : setEntrySet) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (((Number) entry.getValue()).intValue() * 100 >= samples * 5) {
                        String[] strArr = FreezeMonitor.APP_FRAME_PREFIXES;
                        int length = strArr.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 < length) {
                                if (StringsKt.startsWith$default((String) entry.getKey(), strArr[i2], false, 2, (Object) null)) {
                                    arrayList.add(obj);
                                    break;
                                }
                                i2++;
                            }
                        }
                    }
                }
                final Comparator comparator = new Comparator() { // from class: com.exteragram.messenger.debug.FreezeMonitor$Watchdog$record$$inlined$compareByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues((Comparable) ((Map.Entry) t2).getValue(), (Comparable) ((Map.Entry) t).getValue());
                    }
                };
                for (Map.Entry entry2 : CollectionsKt.take(CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.exteragram.messenger.debug.FreezeMonitor$Watchdog$record$$inlined$thenByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int iCompare = comparator.compare(t, t2);
                        if (iCompare != 0) {
                            return iCompare;
                        }
                        Integer num = freeze.getHotDepth().get(((Map.Entry) t2).getKey());
                        if (num == null) {
                            num = num;
                        }
                        Integer num2 = freeze.getHotDepth().get(((Map.Entry) t).getKey());
                        return ComparisonsKt.compareValues(num, num2 != null ? num2 : 0);
                    }
                }), 60)) {
                    sb.append(FreezeMonitor.INSTANCE.percent(((Number) entry2.getValue()).intValue(), samples) + "%  " + entry2.getKey() + "\n");
                }
                sb.append("\n-- top of stack --\n");
                for (Map.Entry entry3 : CollectionsKt.take(CollectionsKt.sortedWith(freeze.getTopFrames().entrySet(), new Comparator() { // from class: com.exteragram.messenger.debug.FreezeMonitor$Watchdog$record$$inlined$sortedByDescending$2
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues((Integer) ((Map.Entry) t2).getValue(), (Integer) ((Map.Entry) t).getValue());
                    }
                }), 10)) {
                    sb.append(FreezeMonitor.INSTANCE.percent(((Number) entry3.getValue()).intValue(), samples) + "%  " + entry3.getKey() + "\n");
                }
                sb.append("\n-- most frequent stacks --\n");
                for (Map.Entry entry4 : CollectionsKt.take(CollectionsKt.sortedWith(freeze.getStacks().entrySet(), new Comparator() { // from class: com.exteragram.messenger.debug.FreezeMonitor$Watchdog$record$$inlined$sortedByDescending$3
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues((Integer) ((Map.Entry) t2).getValue(), (Integer) ((Map.Entry) t).getValue());
                    }
                }), 5)) {
                    List<String> list = (List) entry4.getKey();
                    int iIntValue = ((Number) entry4.getValue()).intValue();
                    sb.append("[" + iIntValue + " samples, " + ((iIntValue * 100) / samples) + "%]\n");
                    for (String str : list) {
                        sb.append("    at ");
                        sb.append(str);
                        sb.append('\n');
                    }
                }
            }
            if (freeze.getOtherThreads() != null) {
                sb.append("\n-- other busy threads at the threshold --\n");
                sb.append(freeze.getOtherThreads());
            }
            if (freeze.getObservers() != null) {
                sb.append("\n-- NotificationCenter observers at the threshold --\n");
                sb.append(freeze.getObservers());
            }
            sb.append('\n');
            FreezeMonitor freezeMonitor2 = FreezeMonitor.INSTANCE;
            sb.append(freezeMonitor2.environment());
            sb.append("\n-- live objects (after GC) --\n");
            sb.append(freezeMonitor2.liveObjects());
            freezeMonitor2.appendReport(sb.toString());
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.FreezeMonitor$Watchdog$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    FreezeMonitor.INSTANCE.showFreezeBulletin(freeze.getDurationMs());
                }
            });
        }

        public static CharSequence $r8$lambda$h1v9OQjRKZY3Ae1g5HeNBHyC0Xg(Map.Entry entry) {
            return entry.getKey() + " " + entry.getValue();
        }
    }
}
