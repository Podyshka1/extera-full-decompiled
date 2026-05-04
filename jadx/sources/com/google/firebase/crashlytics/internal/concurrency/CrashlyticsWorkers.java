package com.google.firebase.crashlytics.internal.concurrency;

import android.os.Looper;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class CrashlyticsWorkers {
    public static final Companion Companion = new Companion(null);
    private static boolean enforcement;
    public final CrashlyticsWorker common;
    public final CrashlyticsWorker dataCollect;
    public final CrashlyticsWorker diskWrite;
    public final CrashlyticsWorker network;

    public static final void checkBackgroundThread() {
        Companion.checkBackgroundThread();
    }

    public static final void checkBlockingThread() {
        Companion.checkBlockingThread();
    }

    public static final void checkNotMainThread() {
        Companion.checkNotMainThread();
    }

    public static final void setEnforcement(boolean z) {
        Companion.setEnforcement(z);
    }

    public CrashlyticsWorkers(ExecutorService backgroundExecutorService, ExecutorService blockingExecutorService) {
        Intrinsics.checkNotNullParameter(backgroundExecutorService, "backgroundExecutorService");
        Intrinsics.checkNotNullParameter(blockingExecutorService, "blockingExecutorService");
        this.common = new CrashlyticsWorker(backgroundExecutorService);
        this.diskWrite = new CrashlyticsWorker(backgroundExecutorService);
        this.dataCollect = new CrashlyticsWorker(backgroundExecutorService);
        this.network = new CrashlyticsWorker(blockingExecutorService);
    }

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

        public final void checkNotMainThread() {
            checkThread(new CrashlyticsWorkers$Companion$checkNotMainThread$1(this), new Function0() { // from class: com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers$Companion$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CrashlyticsWorkers.Companion.checkNotMainThread$lambda$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String checkNotMainThread$lambda$0() {
            return "Must not be called on a main thread, was called on " + CrashlyticsWorkers.Companion.getThreadName() + '.';
        }

        public final void checkBlockingThread() {
            checkThread(new CrashlyticsWorkers$Companion$checkBlockingThread$1(this), new Function0() { // from class: com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers$Companion$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CrashlyticsWorkers.Companion.checkBlockingThread$lambda$1();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String checkBlockingThread$lambda$1() {
            return "Must be called on a blocking thread, was called on " + CrashlyticsWorkers.Companion.getThreadName() + '.';
        }

        public final void checkBackgroundThread() {
            checkThread(new CrashlyticsWorkers$Companion$checkBackgroundThread$1(this), new Function0() { // from class: com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CrashlyticsWorkers.Companion.checkBackgroundThread$lambda$2();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String checkBackgroundThread$lambda$2() {
            return "Must be called on a background thread, was called on " + CrashlyticsWorkers.Companion.getThreadName() + '.';
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isNotMainThread() {
            return !Looper.getMainLooper().isCurrentThread();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isBlockingThread() {
            String threadName = getThreadName();
            Intrinsics.checkNotNullExpressionValue(threadName, "<get-threadName>(...)");
            return StringsKt.contains$default((CharSequence) threadName, (CharSequence) "Firebase Blocking Thread #", false, 2, (Object) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isBackgroundThread() {
            String threadName = getThreadName();
            Intrinsics.checkNotNullExpressionValue(threadName, "<get-threadName>(...)");
            return StringsKt.contains$default((CharSequence) threadName, (CharSequence) "Firebase Background Thread #", false, 2, (Object) null);
        }

        private final void checkThread(Function0 function0, Function0 function02) {
            if (((Boolean) function0.invoke()).booleanValue()) {
                return;
            }
            Logger.getLogger().m501d((String) function02.invoke());
            getEnforcement();
        }
    }
}
