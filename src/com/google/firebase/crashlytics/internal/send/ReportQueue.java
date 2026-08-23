package com.google.firebase.crashlytics.internal.send;

import android.os.SystemClock;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportScheduleCallback;
import com.google.android.datatransport.runtime.ForcedSender;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId;
import com.google.firebase.crashlytics.internal.common.OnDemandCounter;
import com.google.firebase.crashlytics.internal.common.Utils;
import com.google.firebase.crashlytics.internal.settings.Settings;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class ReportQueue {
    private final double base;
    private long lastUpdatedMs;
    private final OnDemandCounter onDemandCounter;
    private final BlockingQueue queue;
    private final int queueCapacity;
    private final double ratePerMinute;
    private final ThreadPoolExecutor singleThreadExecutor;
    private final long startTimeMs;
    private int step;
    private final long stepDurationMs;
    private final Transport transport;

    ReportQueue(Transport transport, Settings settings, OnDemandCounter onDemandCounter) {
        this(settings.onDemandUploadRatePerMinute, settings.onDemandBackoffBase, ((long) settings.onDemandBackoffStepDurationSeconds) * 1000, transport, onDemandCounter);
    }

    ReportQueue(double d, double d2, long j, Transport transport, OnDemandCounter onDemandCounter) {
        this.ratePerMinute = d;
        this.base = d2;
        this.stepDurationMs = j;
        this.transport = transport;
        this.onDemandCounter = onDemandCounter;
        this.startTimeMs = SystemClock.elapsedRealtime();
        int i = (int) d;
        this.queueCapacity = i;
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(i);
        this.queue = arrayBlockingQueue;
        this.singleThreadExecutor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, arrayBlockingQueue);
        this.step = 0;
        this.lastUpdatedMs = 0L;
    }

    TaskCompletionSource enqueueReport(CrashlyticsReportWithSessionId crashlyticsReportWithSessionId, boolean z) {
        synchronized (this.queue) {
            try {
                TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                if (z) {
                    this.onDemandCounter.incrementRecordedOnDemandExceptions();
                    if (isQueueAvailable()) {
                        Logger.getLogger().m501d("Enqueueing report: " + crashlyticsReportWithSessionId.getSessionId());
                        Logger.getLogger().m501d("Queue size: " + this.queue.size());
                        this.singleThreadExecutor.execute(new ReportRunnable(crashlyticsReportWithSessionId, taskCompletionSource));
                        Logger.getLogger().m501d("Closing task for report: " + crashlyticsReportWithSessionId.getSessionId());
                        taskCompletionSource.trySetResult(crashlyticsReportWithSessionId);
                        return taskCompletionSource;
                    }
                    calcStep();
                    Logger.getLogger().m501d("Dropping report due to queue being full: " + crashlyticsReportWithSessionId.getSessionId());
                    this.onDemandCounter.incrementDroppedOnDemandExceptions();
                    taskCompletionSource.trySetResult(crashlyticsReportWithSessionId);
                    return taskCompletionSource;
                }
                sendReport(crashlyticsReportWithSessionId, taskCompletionSource);
                return taskCompletionSource;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void flushScheduledReportsIfAble() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        new Thread(new Runnable() { // from class: com.google.firebase.crashlytics.internal.send.ReportQueue$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ReportQueue.$r8$lambda$8U76pxOta423qVuKYJ0HhfFLxJ4(this.f$0, countDownLatch);
            }
        }).start();
        Utils.awaitUninterruptibly(countDownLatch, 2L, TimeUnit.SECONDS);
    }

    public static /* synthetic */ void $r8$lambda$8U76pxOta423qVuKYJ0HhfFLxJ4(ReportQueue reportQueue, CountDownLatch countDownLatch) {
        reportQueue.getClass();
        try {
            ForcedSender.sendBlocking(reportQueue.transport, Priority.HIGHEST);
        } catch (Exception unused) {
        }
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendReport(final CrashlyticsReportWithSessionId crashlyticsReportWithSessionId, final TaskCompletionSource taskCompletionSource) {
        Logger.getLogger().m501d("Sending report through Google DataTransport: " + crashlyticsReportWithSessionId.getSessionId());
        final boolean z = SystemClock.elapsedRealtime() - this.startTimeMs < 2000;
        this.transport.schedule(Event.ofUrgent(crashlyticsReportWithSessionId.getReport()), new TransportScheduleCallback() { // from class: com.google.firebase.crashlytics.internal.send.ReportQueue$$ExternalSyntheticLambda0
            @Override // com.google.android.datatransport.TransportScheduleCallback
            public final void onSchedule(Exception exc) {
                ReportQueue.$r8$lambda$4lFm4kq1MZXZfcwIBR3zscs57No(this.f$0, taskCompletionSource, z, crashlyticsReportWithSessionId, exc);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$4lFm4kq1MZXZfcwIBR3zscs57No(ReportQueue reportQueue, TaskCompletionSource taskCompletionSource, boolean z, CrashlyticsReportWithSessionId crashlyticsReportWithSessionId, Exception exc) {
        reportQueue.getClass();
        if (exc != null) {
            taskCompletionSource.trySetException(exc);
            return;
        }
        if (z) {
            reportQueue.flushScheduledReportsIfAble();
        }
        taskCompletionSource.trySetResult(crashlyticsReportWithSessionId);
    }

    private boolean isQueueAvailable() {
        return this.queue.size() < this.queueCapacity;
    }

    private boolean isQueueFull() {
        return this.queue.size() == this.queueCapacity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double calcDelay() {
        return Math.min(3600000.0d, (60000.0d / this.ratePerMinute) * Math.pow(this.base, calcStep()));
    }

    private int calcStep() {
        int iMax;
        if (this.lastUpdatedMs == 0) {
            this.lastUpdatedMs = now();
        }
        int iNow = (int) ((now() - this.lastUpdatedMs) / this.stepDurationMs);
        if (isQueueFull()) {
            iMax = Math.min(100, this.step + iNow);
        } else {
            iMax = Math.max(0, this.step - iNow);
        }
        if (this.step != iMax) {
            this.step = iMax;
            this.lastUpdatedMs = now();
        }
        return iMax;
    }

    private long now() {
        return System.currentTimeMillis();
    }

    /* JADX INFO: loaded from: classes5.dex */
    private final class ReportRunnable implements Runnable {
        private final CrashlyticsReportWithSessionId reportWithSessionId;
        private final TaskCompletionSource tcs;

        private ReportRunnable(CrashlyticsReportWithSessionId crashlyticsReportWithSessionId, TaskCompletionSource taskCompletionSource) {
            this.reportWithSessionId = crashlyticsReportWithSessionId;
            this.tcs = taskCompletionSource;
        }

        @Override // java.lang.Runnable
        public void run() {
            ReportQueue.this.sendReport(this.reportWithSessionId, this.tcs);
            ReportQueue.this.onDemandCounter.resetDroppedOnDemandExceptions();
            double dCalcDelay = ReportQueue.this.calcDelay();
            Logger.getLogger().m501d("Delay for: " + String.format(Locale.US, "%.2f", Double.valueOf(dCalcDelay / 1000.0d)) + " s for report: " + this.reportWithSessionId.getSessionId());
            ReportQueue.sleep(dCalcDelay);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sleep(double d) {
        try {
            Thread.sleep((long) d);
        } catch (InterruptedException unused) {
        }
    }
}
