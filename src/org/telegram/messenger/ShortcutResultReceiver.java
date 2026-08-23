package org.telegram.messenger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes5.dex */
public class ShortcutResultReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int intExtra = intent.getIntExtra("account", UserConfig.selectedAccount);
        final Utilities.Callback<Boolean> callbackRemove = MediaDataController.getInstance(intExtra).shortcutCallbacks.remove(intent.getStringExtra("req_id"));
        if (callbackRemove != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ShortcutResultReceiver$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    callbackRemove.run(Boolean.TRUE);
                }
            });
        }
    }
}
