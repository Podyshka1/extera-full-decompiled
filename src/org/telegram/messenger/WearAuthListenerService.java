package org.telegram.messenger;

import android.content.Intent;
import com.google.android.gms.wearable.MessageEvent;
import com.google.android.gms.wearable.WearableListenerService;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.WearAuthSheet;

/* JADX INFO: loaded from: classes5.dex */
public class WearAuthListenerService extends WearableListenerService {
    public static final String PATH_CANCEL = "/tg-wear-auth/cancel";
    public static final String PATH_OFFER = "/tg-wear-auth/offer";

    @Override // com.google.android.gms.wearable.WearableListenerService
    public void onMessageReceived(MessageEvent messageEvent) {
        final String path = messageEvent.getPath();
        final String sourceNodeId = messageEvent.getSourceNodeId();
        final byte[] data = messageEvent.getData();
        if (PATH_OFFER.equals(path)) {
            try {
                Intent intent = new Intent(this, (Class<?>) LaunchActivity.class);
                intent.addFlags(268566528);
                startActivity(intent);
            } catch (Exception e) {
                FileLog.m991e("wear-auth: failed to pop LaunchActivity", e);
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.WearAuthListenerService$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                WearAuthListenerService.m6120$r8$lambda$ZoaD8uzVx54e8TEk1oIZnY6L8g(path, sourceNodeId, data);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$ZoaD8uzVx54e8-TEk1oIZnY6L8g, reason: not valid java name */
    public static /* synthetic */ void m6120$r8$lambda$ZoaD8uzVx54e8TEk1oIZnY6L8g(String str, String str2, byte[] bArr) {
        str.getClass();
        if (str.equals(PATH_OFFER)) {
            FileLog.m989d("wear-auth: offer from " + str2 + " (" + bArr.length + " bytes)");
            WearAuthSheet.onOfferReceived(bArr, str2);
            return;
        }
        if (str.equals(PATH_CANCEL)) {
            FileLog.m989d("wear-auth: cancel from " + str2);
            WearAuthSheet.onCancelReceived();
            return;
        }
        FileLog.m989d("wear-auth: unexpected path ".concat(str));
    }
}
