package com.google.firebase.crashlytics.internal.concurrency;

import android.os.Looper;
import com.chaquo.python.internal.Common;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;", _UrlKt.FRAGMENT_ENCODE_SET, "backgroundExecutorService", "Ljava/util/concurrent/ExecutorService;", "blockingExecutorService", "<init>", "(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V", Common.ABI_COMMON, "Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorker;", "diskWrite", "dataCollect", "network", "Companion", "com.google.firebase-firebase-crashlytics"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
public final class CrashlyticsWorkers {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static boolean enforcement;

    @JvmField
    public final CrashlyticsWorker common;

    @JvmField
    public final CrashlyticsWorker dataCollect;

    @JvmField
    public final CrashlyticsWorker diskWrite;

    @JvmField
    public final CrashlyticsWorker network;

    @JvmStatic
    public static final void checkBackgroundThread() {
        INSTANCE.checkBackgroundThread();
    }

    @JvmStatic
    public static final void checkBlockingThread() {
        INSTANCE.checkBlockingThread();
    }

    @JvmStatic
    public static final void checkNotMainThread() {
        INSTANCE.checkNotMainThread();
    }

    public static final void setEnforcement(boolean z) {
        INSTANCE.setEnforcement(z);
    }

    public CrashlyticsWorkers(ExecutorService executorService, ExecutorService executorService2) {
        this.common = new CrashlyticsWorker(executorService);
        this.diskWrite = new CrashlyticsWorker(executorService);
        this.dataCollect = new CrashlyticsWorker(executorService);
        this.network = new CrashlyticsWorker(executorService2);
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0010\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0006J+\u0010\u000e\u001a\u00020\r2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0012\u0010\u0003R\u001c\u0010\u0016\u001a\n \u0013*\u0004\u0018\u00010\u000b0\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R(\u0010\u0017\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b\u0017\u0010\u0018\u0012\u0004\b\u001c\u0010\u0003\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "isNotMainThread", "()Z", "isBlockingThread", "isBackgroundThread", "Lkotlin/Function0;", "isCorrectThread", _UrlKt.FRAGMENT_ENCODE_SET, "failureMessage", _UrlKt.FRAGMENT_ENCODE_SET, "checkThread", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "checkNotMainThread", "checkBlockingThread", "checkBackgroundThread", "kotlin.jvm.PlatformType", "getThreadName", "()Ljava/lang/String;", "threadName", "enforcement", "Z", "getEnforcement", "setEnforcement", "(Z)V", "getEnforcement$annotations", "com.google.firebase-firebase-crashlytics"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final String getThreadName() {
            return Thread.currentThread().getName();
        }

        public final boolean getEnforcement() {
            return CrashlyticsWorkers.enforcement;
        }

        public final void setEnforcement(boolean z) {
            CrashlyticsWorkers.enforcement = z;
        }

        @JvmStatic
        public final void checkNotMainThread() {
            checkThread(new CrashlyticsWorkers$Companion$checkNotMainThread$1(this), new Function0() { // from class: com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers$Companion$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CrashlyticsWorkers.Companion.$r8$lambda$FyCOZJTc8wpExJkvbWXvXo9eG2s();
                }
            });
        }

        public static String $r8$lambda$FyCOZJTc8wpExJkvbWXvXo9eG2s() {
            return "Must not be called on a main thread, was called on " + CrashlyticsWorkers.INSTANCE.getThreadName() + '.';
        }

        @JvmStatic
        public final void checkBlockingThread() {
            checkThread(new CrashlyticsWorkers$Companion$checkBlockingThread$1(this), new Function0() { // from class: com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers$Companion$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CrashlyticsWorkers.Companion.$r8$lambda$KqxPbjLgHlJetblAnyOPZgQu8XE();
                }
            });
        }

        public static String $r8$lambda$KqxPbjLgHlJetblAnyOPZgQu8XE() {
            return "Must be called on a blocking thread, was called on " + CrashlyticsWorkers.INSTANCE.getThreadName() + '.';
        }

        @JvmStatic
        public final void checkBackgroundThread() {
            checkThread(new CrashlyticsWorkers$Companion$checkBackgroundThread$1(this), new Function0() { // from class: com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CrashlyticsWorkers.Companion.$r8$lambda$_XDhA4SXRQMUfWPW4Ig2Us1G4Jk();
                }
            });
        }

        public static String $r8$lambda$_XDhA4SXRQMUfWPW4Ig2Us1G4Jk() {
            return "Must be called on a background thread, was called on " + CrashlyticsWorkers.INSTANCE.getThreadName() + '.';
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isNotMainThread() {
            return !Looper.getMainLooper().isCurrentThread();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isBlockingThread() {
            return StringsKt.contains$default((CharSequence) getThreadName(), (CharSequence) "Firebase Blocking Thread #", false, 2, (Object) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isBackgroundThread() {
            return StringsKt.contains$default((CharSequence) getThreadName(), (CharSequence) "Firebase Background Thread #", false, 2, (Object) null);
        }

        private final void checkThread(Function0<Boolean> isCorrectThread, Function0<String> failureMessage) {
            if (isCorrectThread.invoke().booleanValue()) {
                return;
            }
            Logger.getLogger().m446d(failureMessage.invoke());
            getEnforcement();
        }
    }
}
