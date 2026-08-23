package com.yandex.mapkit.offline_cache.internal;

import android.content.Context;
import androidx.work.Constraints;
import androidx.work.ExistingWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import com.yandex.runtime.Runtime;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class BackgroundDownloadManager {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static BackgroundDownloadInitializer initializer;
    private static BackgroundDownloadManager instance;
    private int activeDownloads = 0;
    private boolean allowCellular = false;
    private WorkManager workManager;

    public static void initialize(BackgroundDownloadInitializer backgroundDownloadInitializer, Context context) {
        if (instance == null) {
            instance = new BackgroundDownloadManager(backgroundDownloadInitializer, context);
        } else {
            if (backgroundDownloadInitializer == null) {
                return;
            }
            GlShader$$ExternalSyntheticBUOutline1.m966m("BackgroundDownloadManager reinitialization");
        }
    }

    public static BackgroundDownloadManager getInstance() {
        initialize(null, Runtime.getApplicationContext());
        return instance;
    }

    public void incrementActiveDownloads() {
        int i = this.activeDownloads + 1;
        this.activeDownloads = i;
        if (i == 1) {
            enableBackgroundDownloading();
        }
    }

    public void decrementActiveDownloads() {
        int i = this.activeDownloads - 1;
        this.activeDownloads = i;
        if (i == 0) {
            disableBackgroundDownloading();
        }
    }

    public void updateBackgroundDownloading(boolean z) {
        this.allowCellular = z;
        if (this.activeDownloads > 0) {
            enableBackgroundDownloading();
        }
    }

    public static synchronized BackgroundDownloadInitializer getInitializer() {
        return initializer;
    }

    private BackgroundDownloadManager(BackgroundDownloadInitializer backgroundDownloadInitializer, Context context) {
        this.workManager = null;
        initializer = backgroundDownloadInitializer;
        this.workManager = WorkManager.getInstance(context);
    }

    private void enableBackgroundDownloading() {
        this.workManager.enqueueUniqueWork("mapkit_background_download", ExistingWorkPolicy.REPLACE, new OneTimeWorkRequest.Builder(BackgroundDownloadJob.class).setConstraints(new Constraints.Builder().setRequiredNetworkType(this.allowCellular ? NetworkType.CONNECTED : NetworkType.UNMETERED).build()).build());
    }

    private void disableBackgroundDownloading() {
        this.workManager.cancelUniqueWork("mapkit_background_download");
    }
}
