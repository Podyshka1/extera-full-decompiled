package com.yandex.mapkit.offline_cache.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.work.ForegroundInfo;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class BackgroundDownloadJob extends Worker implements BackgroundWorkerListener {
    private static Logger LOGGER = Logger.getLogger(BackgroundDownloadJob.class.getCanonicalName());
    protected static final String TAG = "mapkit_background_download";

    protected BackgroundDownloadJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.Worker
    public synchronized ListenableWorker.Result doWork() {
        LOGGER.info("Start background download job");
        final BackgroundDownloadInitializer initializer = BackgroundDownloadManager.getInitializer();
        if (initializer != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.mapkit.offline_cache.internal.BackgroundDownloadJob$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BackgroundDownloadJob.m3587$r8$lambda$cGOBeeOaHKd707wXHchFeM9kc(this.f$0, initializer);
                }
            });
        }
        try {
            try {
                wait();
                LOGGER.info("Stop background download job");
            } finally {
                if (initializer != null) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.mapkit.offline_cache.internal.BackgroundDownloadJob$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            initializer.setListener(null);
                        }
                    });
                }
            }
        } catch (InterruptedException unused) {
            LOGGER.info("Background download job interrupted");
            ListenableWorker.Result resultRetry = ListenableWorker.Result.retry();
            if (initializer != null) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.mapkit.offline_cache.internal.BackgroundDownloadJob$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        initializer.setListener(null);
                    }
                });
            }
            return resultRetry;
        }
        return ListenableWorker.Result.success();
    }

    /* JADX INFO: renamed from: $r8$lambda$cGOBeeOaHKd707wX-HchF-eM9kc, reason: not valid java name */
    public static /* synthetic */ void m3587$r8$lambda$cGOBeeOaHKd707wXHchFeM9kc(BackgroundDownloadJob backgroundDownloadJob, BackgroundDownloadInitializer backgroundDownloadInitializer) {
        backgroundDownloadJob.getClass();
        backgroundDownloadInitializer.setListener(backgroundDownloadJob);
        backgroundDownloadInitializer.initializeMapkit();
    }

    @Override // com.yandex.mapkit.offline_cache.internal.BackgroundWorkerListener
    public void updateForegroundInfo(ForegroundInfo foregroundInfo) {
        setForegroundAsync(foregroundInfo);
    }

    @Override // androidx.work.ListenableWorker
    public synchronized void onStopped() {
        notifyAll();
    }
}
