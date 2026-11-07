package org.telegram.messenger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

/* JADX INFO: loaded from: classes6.dex */
public class CustomTabsCopyReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String dataString = intent.getDataString();
        if (dataString != null) {
            AndroidUtilities.addToClipboard(dataString);
            Toast.makeText(context, LocaleController.getString(C2807R.string.LinkCopied), 0).show();
        }
    }
}
