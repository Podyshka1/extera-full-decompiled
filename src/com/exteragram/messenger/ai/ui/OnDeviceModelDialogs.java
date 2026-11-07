package com.exteragram.messenger.ai.ui;

import com.exteragram.messenger.ai.network.backend.OnDeviceAvailability;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.BulletinFactory;

/* JADX INFO: loaded from: classes4.dex */
public abstract class OnDeviceModelDialogs {
    public static void showDownloadDialog(final BaseFragment baseFragment) {
        if (baseFragment == null || baseFragment.getContext() == null || OnDeviceAvailability.isDownloading()) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(baseFragment.getContext());
        builder.setTitle(LocaleController.getString(C2665R.string.AIOnDeviceDownloadTitle));
        builder.setSubtitle(AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.AIOnDeviceDownloadInfo)));
        builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString(C2665R.string.AIOnDeviceDownloadButton), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.ai.ui.OnDeviceModelDialogs$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                OnDeviceModelDialogs.startDownload(baseFragment);
            }
        });
        baseFragment.showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void startDownload(BaseFragment baseFragment) {
        int modelKey = OnDeviceAvailability.getModelKey();
        OnDeviceAvailability.download(modelKey, createListener(modelKey));
        OnDeviceModelNotifications.showProgress(modelKey, -1);
        BulletinFactory.of(baseFragment).createSimpleBulletin(C2665R.raw.ic_download, LocaleController.getString(C2665R.string.AIOnDeviceDownloadStarted)).show();
    }

    private static OnDeviceAvailability.DownloadListener createListener(final int i) {
        return new OnDeviceAvailability.DownloadListener() { // from class: com.exteragram.messenger.ai.ui.OnDeviceModelDialogs.1
            @Override // com.exteragram.messenger.ai.network.backend.OnDeviceAvailability.DownloadListener
            public void onStarted(long j) {
                OnDeviceModelNotifications.showProgress(i, -1);
            }

            @Override // com.exteragram.messenger.ai.network.backend.OnDeviceAvailability.DownloadListener
            public void onProgress(float f, long j) {
                OnDeviceModelNotifications.showProgress(i, f < 0.0f ? -1 : (int) (f * 100.0f));
            }

            @Override // com.exteragram.messenger.ai.network.backend.OnDeviceAvailability.DownloadListener
            public void onCompleted() {
                OnDeviceModelNotifications.showCompleted(i);
            }

            @Override // com.exteragram.messenger.ai.network.backend.OnDeviceAvailability.DownloadListener
            public void onFailed(Exception exc) {
                FileLog.m991e("AI_ON_DEVICE_DOWNLOAD_FAILED", exc);
                OnDeviceModelNotifications.cancel(i);
            }
        };
    }
}
