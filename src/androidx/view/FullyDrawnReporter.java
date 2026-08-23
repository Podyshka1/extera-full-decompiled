package androidx.view;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000bR\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\fR\u0014\u0010\r\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014R \u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00168\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Landroidx/activity/FullyDrawnReporter;", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/util/concurrent/Executor;", "executor", "Lkotlin/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "reportFullyDrawn", "<init>", "(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)V", "fullyDrawnReported", "()V", "Ljava/util/concurrent/Executor;", "Lkotlin/jvm/functions/Function0;", "lock", "Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "reporterCount", "I", _UrlKt.FRAGMENT_ENCODE_SET, "reportPosted", "Z", "reportedFullyDrawn", _UrlKt.FRAGMENT_ENCODE_SET, "onReportCallbacks", "Ljava/util/List;", "Ljava/lang/Runnable;", "reportRunnable", "Ljava/lang/Runnable;", "isFullyDrawnReported", "()Z", "activity_release"}, m754k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFullyDrawnReporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullyDrawnReporter.kt\nandroidx/activity/FullyDrawnReporter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,190:1\n1#2:191\n1855#3,2:192\n*S KotlinDebug\n*F\n+ 1 FullyDrawnReporter.kt\nandroidx/activity/FullyDrawnReporter\n*L\n154#1:192,2\n*E\n"})
public final class FullyDrawnReporter {
    private final Executor executor;
    private final Function0<Unit> reportFullyDrawn;
    private boolean reportPosted;
    private boolean reportedFullyDrawn;
    private int reporterCount;
    private final Object lock = new Object();
    private final List<Function0<Unit>> onReportCallbacks = new ArrayList();
    private final Runnable reportRunnable = new Runnable() { // from class: androidx.activity.FullyDrawnReporter$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            FullyDrawnReporter.m982$r8$lambda$A0RwxxTQIMFOsDA3Nv48auR1K4(this.f$0);
        }
    };

    public FullyDrawnReporter(Executor executor, Function0<Unit> function0) {
        this.executor = executor;
        this.reportFullyDrawn = function0;
    }

    public final boolean isFullyDrawnReported() {
        boolean z;
        synchronized (this.lock) {
            z = this.reportedFullyDrawn;
        }
        return z;
    }

    /* JADX INFO: renamed from: $r8$lambda$A0RwxxT-QIMFOsDA3Nv48auR1K4, reason: not valid java name */
    public static void m982$r8$lambda$A0RwxxTQIMFOsDA3Nv48auR1K4(FullyDrawnReporter fullyDrawnReporter) {
        synchronized (fullyDrawnReporter.lock) {
            try {
                fullyDrawnReporter.reportPosted = false;
                if (fullyDrawnReporter.reporterCount == 0 && !fullyDrawnReporter.reportedFullyDrawn) {
                    fullyDrawnReporter.reportFullyDrawn.invoke();
                    fullyDrawnReporter.fullyDrawnReported();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void fullyDrawnReported() {
        synchronized (this.lock) {
            try {
                this.reportedFullyDrawn = true;
                Iterator<T> it = this.onReportCallbacks.iterator();
                while (it.hasNext()) {
                    ((Function0) it.next()).invoke();
                }
                this.onReportCallbacks.clear();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
