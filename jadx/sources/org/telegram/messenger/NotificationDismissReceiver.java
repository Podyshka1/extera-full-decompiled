package org.telegram.messenger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public class NotificationDismissReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        int intExtra = intent.getIntExtra("currentAccount", UserConfig.selectedAccount);
        if (UserConfig.isValidAccount(intExtra)) {
            long longExtra = intent.getLongExtra("dialogId", 0L);
            int intExtra2 = intent.getIntExtra("messageDate", 0);
            if (intent.hasExtra("story") && intent.getBooleanExtra("story", false)) {
                NotificationsController.getInstance(intExtra).processIgnoreStories();
                return;
            }
            if (intent.hasExtra("storyReaction") && intent.getBooleanExtra("storyReaction", false)) {
                NotificationsController.getInstance(intExtra).processIgnoreStoryReactions();
                return;
            }
            if (longExtra == 0) {
                FileLog.m1133d("set dismissDate of global to " + intExtra2);
                MessagesController.getNotificationsSettings(intExtra).edit().putInt("dismissDate", intExtra2).apply();
                return;
            }
            FileLog.m1133d("set dismissDate of " + longExtra + " to " + intExtra2);
            SharedPreferences.Editor editorEdit = MessagesController.getNotificationsSettings(intExtra).edit();
            StringBuilder sb = new StringBuilder();
            sb.append("dismissDate");
            sb.append(longExtra);
            editorEdit.putInt(sb.toString(), intExtra2).apply();
        }
    }
}
