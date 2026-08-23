package org.telegram.messenger;

import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class GcmPushListenerService extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        String from = remoteMessage.getFrom();
        Map data = remoteMessage.getData();
        long sentTime = remoteMessage.getSentTime();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("FCM received data: " + data + " from: " + from);
        }
        PushListenerController.processRemoteMessage(2, (String) data.get("p"), sentTime);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.GcmPushListenerService$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                GcmPushListenerService.$r8$lambda$yff5x9Kir9GwH0krOiFRPGGXb_U(str);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$yff5x9Kir9GwH0krOiFRPGGXb_U(String str) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("Refreshed FCM token: " + str);
        }
        ApplicationLoader.postInitApplication();
        PushListenerController.sendRegistrationToServer(2, str);
    }
}
