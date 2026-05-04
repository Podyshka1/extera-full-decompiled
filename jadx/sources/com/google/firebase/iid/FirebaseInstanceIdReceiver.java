package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.cloudmessaging.CloudMessagingReceiver;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.FcmBroadcastProcessor;
import com.google.firebase.messaging.MessagingAnalytics;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final class FirebaseInstanceIdReceiver extends CloudMessagingReceiver {
    private static Intent createServiceIntent(Context context, String str, Bundle bundle) {
        return new Intent(str).putExtras(bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    protected int onMessageReceive(Context context, CloudMessage cloudMessage) {
        try {
            return ((Integer) Tasks.await(new FcmBroadcastProcessor(context).process(cloudMessage.getIntent()))).intValue();
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseMessaging", "Failed to send message to service.", e);
            return 500;
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    protected void onNotificationDismissed(Context context, Bundle bundle) {
        Intent intentCreateServiceIntent = createServiceIntent(context, "com.google.firebase.messaging.NOTIFICATION_DISMISS", bundle);
        if (MessagingAnalytics.shouldUploadScionMetrics(intentCreateServiceIntent)) {
            MessagingAnalytics.logNotificationDismiss(intentCreateServiceIntent);
        }
    }
}
