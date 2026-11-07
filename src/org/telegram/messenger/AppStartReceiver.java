package org.telegram.messenger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class AppStartReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !"android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.AppStartReceiver$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AppStartReceiver.$r8$lambda$7gvKcWEaIWxxezhCcVhOtGEPMng();
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$7gvKcWEaIWxxezhCcVhOtGEPMng() {
        SharedConfig.loadConfig();
        if (SharedConfig.passcodeHash.length() > 0) {
            SharedConfig.appLocked = true;
            SharedConfig.saveConfig();
        }
        ApplicationLoader.startPushService();
    }
}
