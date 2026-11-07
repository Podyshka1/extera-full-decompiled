package com.exteragram.messenger.debug;

import android.app.Activity;
import android.os.Debug;
import android.os.SystemClock;
import com.exteragram.messenger.debug.HeapMonitor;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.concurrent.ThreadsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ForegroundDetector;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001DB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ#\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00040\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J3\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000e2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00040\u000bH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\f¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\f¢\u0006\u0004\b \u0010\u001fJ\u0015\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\f¢\u0006\u0004\b\"\u0010#J\r\u0010$\u001a\u00020\u0006¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b&\u0010'J\r\u0010(\u001a\u00020\u0006¢\u0006\u0004\b(\u0010%J\u001b\u0010+\u001a\u00020\u00042\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00040)¢\u0006\u0004\b+\u0010,J\u0015\u0010-\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b-\u0010.J\u001f\u00101\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\b\u00100\u001a\u0004\u0018\u00010/¢\u0006\u0004\b1\u00102J\u000f\u00104\u001a\u00020\u0004H\u0000¢\u0006\u0004\b3\u0010\u0003R\u0018\u00106\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u00108\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u001e\u0010<\u001a\n\u0012\u0004\u0012\u00020;\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u001b\u0010A\u001a\u00020\u000e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u0010'R\u0011\u0010C\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bB\u0010%¨\u0006E"}, d2 = {"Lcom/exteragram/messenger/debug/HeapMonitor;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "init", _UrlKt.FRAGMENT_ENCODE_SET, "used", "limit", "showLimitAlert", "(JJ)V", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, "onProgress", "Ljava/io/File;", "dumpHeap", "(Lkotlin/jvm/functions/Function1;)Ljava/io/File;", "source", "target", "compress", "(Ljava/io/File;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V", "Landroid/app/Activity;", "activity", "file", "share", "(Landroid/app/Activity;Ljava/io/File;)V", _UrlKt.FRAGMENT_ENCODE_SET, "enabled", "setEnabled", "(Z)V", "getLimitMb", "()I", "getMaxLimitMb", "limitMb", "setLimitMb", "(I)V", "getUsedBytes", "()J", "getLastDump", "()Ljava/io/File;", "getDumpsSize", "Lkotlin/Function0;", "onDone", "deleteDumps", "(Lkotlin/jvm/functions/Function0;)V", "shareLastDump", "(Landroid/app/Activity;)V", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "resourcesProvider", "dumpAndShare", "(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V", "collectGarbage$TMessagesProj", "collectGarbage", "Lcom/exteragram/messenger/debug/HeapMonitor$LimitWatcher;", "watcher", "Lcom/exteragram/messenger/debug/HeapMonitor$LimitWatcher;", "dumping", "Z", "Ljava/lang/ref/WeakReference;", "Lorg/telegram/ui/ActionBar/AlertDialog;", "alertRef", "Ljava/lang/ref/WeakReference;", "dumpsDir$delegate", "Lkotlin/Lazy;", "getDumpsDir", "dumpsDir", "getPromptStepBytes", "promptStepBytes", "LimitWatcher", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHeapMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeapMonitor.kt\ncom/exteragram/messenger/debug/HeapMonitor\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,308:1\n3938#2:309\n4474#2,2:310\n14048#2,2:327\n14048#2,2:329\n2045#3,14:312\n1#4:326\n*S KotlinDebug\n*F\n+ 1 HeapMonitor.kt\ncom/exteragram/messenger/debug/HeapMonitor\n*L\n96#1:309\n96#1:310,2\n200#1:327,2\n104#1:329,2\n97#1:312,14\n*E\n"})
public final class HeapMonitor {
    private static WeakReference<AlertDialog> alertRef;
    private static volatile boolean dumping;
    private static volatile LimitWatcher watcher;
    public static final HeapMonitor INSTANCE = new HeapMonitor();

    /* JADX INFO: renamed from: dumpsDir$delegate, reason: from kotlin metadata */
    private static final Lazy dumpsDir = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.debug.HeapMonitor$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DebugFilesKt.debugFilesDir("heapdumps");
        }
    });

    private HeapMonitor() {
    }

    public final File getDumpsDir() {
        return (File) dumpsDir.getValue();
    }

    public final long getPromptStepBytes() {
        return Runtime.getRuntime().maxMemory() / 8;
    }

    @JvmStatic
    public static final void init() {
        if (DebugConfig.getHeapMonitorEnabled()) {
            watcher = new LimitWatcher();
        }
    }

    public final void setEnabled(boolean enabled) {
        if (DebugConfig.getHeapMonitorEnabled() == enabled) {
            return;
        }
        DebugConfig.setHeapMonitorEnabled(enabled);
        LimitWatcher limitWatcher = watcher;
        if (limitWatcher != null) {
            limitWatcher.stop();
        }
        watcher = enabled ? new LimitWatcher() : null;
    }

    public final int getLimitMb() {
        return RangesKt.coerceIn(DebugConfig.getHeapMonitorLimitMb(), 64, getMaxLimitMb());
    }

    public final int getMaxLimitMb() {
        return Math.max(64, ((((int) (Runtime.getRuntime().maxMemory() >> 20)) / 16) - 1) * 16);
    }

    public final void setLimitMb(int limitMb) {
        DebugConfig.setHeapMonitorLimitMb(limitMb);
        LimitWatcher limitWatcher = watcher;
        if (limitWatcher != null) {
            limitWatcher.resetPrompt();
        }
    }

    public final long getUsedBytes() {
        Runtime runtime = Runtime.getRuntime();
        return runtime.totalMemory() - runtime.freeMemory();
    }

    public final File getLastDump() {
        File[] fileArrListFiles = getDumpsDir().listFiles();
        Object next = null;
        if (fileArrListFiles == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (File file : fileArrListFiles) {
            if (StringsKt.endsWith$default(file.getName(), ".zip", false, 2, (Object) null)) {
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

    public final long getDumpsSize() {
        File[] fileArrListFiles = getDumpsDir().listFiles();
        long length = 0;
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                length += file.length();
            }
        }
        return length;
    }

    public final void deleteDumps(final Function0<Unit> onDone) {
        if (dumping) {
            return;
        }
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.debug.HeapMonitor$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                HeapMonitor.m2312$r8$lambda$R6tXhA8smJy6OzCZSJ7sboifr4(onDone);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$R6tXhA8smJy6OzCZSJ7-sboifr4, reason: not valid java name */
    public static void m2312$r8$lambda$R6tXhA8smJy6OzCZSJ7sboifr4(final Function0 function0) {
        File[] fileArrListFiles = INSTANCE.getDumpsDir().listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                file.delete();
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.HeapMonitor$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                function0.invoke();
            }
        });
    }

    public final void shareLastDump(Activity activity) {
        File lastDump = getLastDump();
        if (lastDump != null) {
            INSTANCE.share(activity, lastDump);
        }
    }

    public final void dumpAndShare(final Activity activity, Theme.ResourcesProvider resourcesProvider) {
        if (dumping) {
            return;
        }
        dumping = true;
        final AlertDialog alertDialog = new AlertDialog(activity, 2, resourcesProvider);
        alertDialog.setMessage("Dumping heap…");
        alertDialog.setCanceledOnTouchOutside(false);
        alertDialog.setCancelable(false);
        alertDialog.show();
        ThreadsKt.thread$default(false, false, null, "heapDump", 0, new Function0() { // from class: com.exteragram.messenger.debug.HeapMonitor$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HeapMonitor.$r8$lambda$4bQhVXYDNdN6H_VjUQxdVfUhGBo(alertDialog, activity);
            }
        }, 23, null);
    }

    public static Unit $r8$lambda$4bQhVXYDNdN6H_VjUQxdVfUhGBo(final AlertDialog alertDialog, final Activity activity) {
        final Object objM3087constructorimpl;
        SystemClock.sleep(300L);
        HeapMonitor heapMonitor = INSTANCE;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM3087constructorimpl = Result.m3087constructorimpl(heapMonitor.dumpHeap(new Function1() { // from class: com.exteragram.messenger.debug.HeapMonitor$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HeapMonitor.$r8$lambda$ONRMsNbfuk3xDA6TyEiuMcLOfCY(alertDialog, ((Integer) obj).intValue());
                }
            }));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(th));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.HeapMonitor$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                HeapMonitor.$r8$lambda$euY017UpxHSPivzCOWIKbGRnYdQ(alertDialog, objM3087constructorimpl, activity);
            }
        });
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$ONRMsNbfuk3xDA6TyEiuMcLOfCY(final AlertDialog alertDialog, final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.HeapMonitor$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                HeapMonitor.$r8$lambda$5zrQMeJT7ZjO2ogkU3UeAGxPFBY(i, alertDialog);
            }
        });
        return Unit.INSTANCE;
    }

    public static void $r8$lambda$5zrQMeJT7ZjO2ogkU3UeAGxPFBY(int i, AlertDialog alertDialog) {
        if (i == 0) {
            alertDialog.setMessage("Compressing…");
        }
        alertDialog.setProgress(i);
    }

    public static void $r8$lambda$euY017UpxHSPivzCOWIKbGRnYdQ(AlertDialog alertDialog, Object obj, Activity activity) {
        dumping = false;
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        if (Result.m3094isSuccessimpl(obj)) {
            INSTANCE.share(activity, (File) obj);
        }
        Throwable thM3090exceptionOrNullimpl = Result.m3090exceptionOrNullimpl(obj);
        if (thM3090exceptionOrNullimpl != null) {
            FileLog.m992e(thM3090exceptionOrNullimpl);
            BulletinFactory.global().createSimpleBulletin(C2665R.raw.error, "Heap dump failed: " + thM3090exceptionOrNullimpl).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showLimitAlert(long used, long limit) {
        AlertDialog alertDialog;
        final LaunchActivity launchActivity = LaunchActivity.instance;
        if (watcher == null || dumping || launchActivity == null || launchActivity.isFinishing()) {
            return;
        }
        WeakReference<AlertDialog> weakReference = alertRef;
        if (weakReference == null || (alertDialog = weakReference.get()) == null || !alertDialog.isShowing()) {
            long jMaxMemory = Runtime.getRuntime().maxMemory();
            AlertDialog alertDialogCreate = new AlertDialog.Builder(launchActivity).setTitle("Heap limit exceeded").setMessage("Java heap is at " + AndroidUtilities.formatFileSize(used, true, false) + " of " + AndroidUtilities.formatFileSize(jMaxMemory, true, false) + " after GC, over the " + AndroidUtilities.formatFileSize(limit, true, false) + " limit.\n\nThe app freezes while dumping. The dump holds everything in memory, so share it only with people you trust.").setPositiveButton("Dump & share", new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.debug.HeapMonitor$$ExternalSyntheticLambda6
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog2, int i) {
                    HeapMonitor.INSTANCE.dumpAndShare(launchActivity, null);
                }
            }).setNeutralButton("Turn off", new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.debug.HeapMonitor$$ExternalSyntheticLambda7
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog2, int i) {
                    HeapMonitor.INSTANCE.setEnabled(false);
                }
            }).setNegativeButton("Later", null).create();
            alertRef = new WeakReference<>(alertDialogCreate);
            try {
                alertDialogCreate.show();
            } catch (Exception e) {
                FileLog.m992e(e);
            }
        }
    }

    public final void collectGarbage$TMessagesProj() {
        Runtime runtime = Runtime.getRuntime();
        runtime.gc();
        runtime.runFinalization();
        runtime.gc();
    }

    private final File dumpHeap(Function1<? super Integer, Unit> onProgress) {
        getDumpsDir().mkdirs();
        String str = "heap_" + BuildVars.BUILD_VERSION_STRING + "_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date());
        File file = new File(getDumpsDir(), str.concat(".hprof"));
        File file2 = new File(getDumpsDir(), str.concat(".zip.part"));
        File file3 = new File(getDumpsDir(), str.concat(".zip"));
        try {
            collectGarbage$TMessagesProj();
            LimitWatcher limitWatcher = watcher;
            if (limitWatcher != null) {
                limitWatcher.postponePrompt(getUsedBytes());
            }
            Debug.dumpHprofData(file.getAbsolutePath());
            compress(file, file2, onProgress);
            if (!file2.renameTo(file3)) {
                throw new IOException("Can't rename " + file2.getName());
            }
            file.delete();
            file2.delete();
            File[] fileArrListFiles = getDumpsDir().listFiles();
            if (fileArrListFiles != null) {
                for (File file4 : fileArrListFiles) {
                    if (!Intrinsics.areEqual(file4, file3)) {
                        file4.delete();
                    }
                }
            }
            return file3;
        } catch (Throwable th) {
            file.delete();
            file2.delete();
            throw th;
        }
    }

    private final void compress(File source, File target, Function1<? super Integer, Unit> onProgress) {
        FileInputStream fileInputStream;
        byte[] bArr;
        long j;
        int i;
        long jMax = Math.max(1L, source.length());
        onProgress.invoke(0);
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(target), 65536));
        try {
            zipOutputStream.setLevel(1);
            zipOutputStream.putNextEntry(new ZipEntry(source.getName()));
            fileInputStream = new FileInputStream(source);
            try {
                bArr = new byte[65536];
                j = 0;
                i = 0;
            } finally {
            }
        } finally {
        }
        while (true) {
            int i2 = fileInputStream.read(bArr);
            if (i2 >= 0) {
                zipOutputStream.write(bArr, 0, i2);
                j += (long) i2;
                int i3 = (int) ((100 * j) / jMax);
                if (i3 != i) {
                    onProgress.invoke(Integer.valueOf(i3));
                    i = i3;
                }
            } else {
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileInputStream, null);
                zipOutputStream.closeEntry();
                CloseableKt.closeFinally(zipOutputStream, null);
                return;
            }
        }
    }

    private final void share(Activity activity, File file) {
        DebugFilesKt.shareDebugFile(activity, file, "application/zip", "Share heap dump");
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\u0006\u0010\u0010\u001a\u00020\u000eJ\u0006\u0010\u0011\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000bJ\b\u0010\u0014\u001a\u00020\u000eH\u0002J\b\u0010\u0015\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/exteragram/messenger/debug/HeapMonitor$LimitWatcher;", "Lorg/telegram/ui/Components/ForegroundDetector$Listener;", "<init>", "()V", "queue", "Lorg/telegram/messenger/DispatchQueue;", "checkRunnable", "Ljava/lang/Runnable;", "running", _UrlKt.FRAGMENT_ENCODE_SET, "nextPromptBytes", _UrlKt.FRAGMENT_ENCODE_SET, "lastCollectTime", "onBecameForeground", _UrlKt.FRAGMENT_ENCODE_SET, "onBecameBackground", "stop", "resetPrompt", "postponePrompt", "usedBytes", "updateRunning", "check", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class LimitWatcher implements ForegroundDetector.Listener {
        private long lastCollectTime;
        private long nextPromptBytes;
        private volatile boolean running;
        private final DispatchQueue queue = new DispatchQueue("heapMonitorQueue");
        private final Runnable checkRunnable = new Runnable() { // from class: com.exteragram.messenger.debug.HeapMonitor$LimitWatcher$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.check();
            }
        };

        public LimitWatcher() {
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
            this.running = false;
            this.queue.cleanupQueue();
            this.queue.recycle();
        }

        public final void resetPrompt() {
            this.queue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.debug.HeapMonitor$LimitWatcher$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    HeapMonitor.LimitWatcher.$r8$lambda$sR_UlDrroxxv8iXPrMFg1erNAWw(this.f$0);
                }
            });
        }

        public static void $r8$lambda$sR_UlDrroxxv8iXPrMFg1erNAWw(LimitWatcher limitWatcher) {
            limitWatcher.nextPromptBytes = 0L;
            limitWatcher.lastCollectTime = 0L;
        }

        public final void postponePrompt(final long usedBytes) {
            this.queue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.debug.HeapMonitor$LimitWatcher$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    HeapMonitor.LimitWatcher limitWatcher = this.f$0;
                    limitWatcher.nextPromptBytes = Math.max(limitWatcher.nextPromptBytes, usedBytes + HeapMonitor.INSTANCE.getPromptStepBytes());
                }
            });
        }

        private final void updateRunning() {
            ForegroundDetector foregroundDetector = ForegroundDetector.getInstance();
            boolean z = false;
            if (foregroundDetector != null && foregroundDetector.isForeground()) {
                z = true;
            }
            if (this.running == z) {
                return;
            }
            this.running = z;
            this.queue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.debug.HeapMonitor$LimitWatcher$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    HeapMonitor.LimitWatcher.m2316$r8$lambda$TOOMnxGNhTNPbLmNjNZLVNYFM8(this.f$0);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$TOO-MnxGNhTNPbLmNjNZLVNYFM8, reason: not valid java name */
        public static void m2316$r8$lambda$TOOMnxGNhTNPbLmNjNZLVNYFM8(LimitWatcher limitWatcher) {
            limitWatcher.queue.cancelRunnable(limitWatcher.checkRunnable);
            if (limitWatcher.running) {
                limitWatcher.queue.postRunnable(limitWatcher.checkRunnable, 5000L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void check() {
            if (this.running) {
                HeapMonitor heapMonitor = HeapMonitor.INSTANCE;
                final long limitMb = ((long) heapMonitor.getLimitMb()) << 20;
                long usedBytes = heapMonitor.getUsedBytes();
                if (usedBytes >= limitMb) {
                    if (usedBytes >= this.nextPromptBytes && !HeapMonitor.dumping && !ApplicationLoader.mainInterfacePaused && SystemClock.elapsedRealtime() - this.lastCollectTime >= NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS) {
                        this.lastCollectTime = SystemClock.elapsedRealtime();
                        heapMonitor.collectGarbage$TMessagesProj();
                        final long usedBytes2 = heapMonitor.getUsedBytes();
                        if (usedBytes2 >= Math.max(limitMb, this.nextPromptBytes)) {
                            this.nextPromptBytes = heapMonitor.getPromptStepBytes() + usedBytes2;
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.debug.HeapMonitor$LimitWatcher$$ExternalSyntheticLambda3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    HeapMonitor.INSTANCE.showLimitAlert(usedBytes2, limitMb);
                                }
                            });
                        }
                    }
                } else {
                    this.nextPromptBytes = 0L;
                }
                if (this.running) {
                    this.queue.postRunnable(this.checkRunnable, 5000L);
                }
            }
        }
    }
}
