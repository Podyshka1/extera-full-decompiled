package org.telegram.messenger;

import android.app.IntentService;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class NotificationRepeat extends IntentService {
    public NotificationRepeat() {
        super("NotificationRepeat");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        if (intent == null) {
            return;
        }
        final int intExtra = intent.getIntExtra("currentAccount", UserConfig.selectedAccount);
        if (UserConfig.isValidAccount(intExtra)) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationRepeat$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationsController.getInstance(intExtra).repeatNotificationMaybe();
                }
            });
        }
    }
}
