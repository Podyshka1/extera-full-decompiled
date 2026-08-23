package org.telegram.messenger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public class SmsReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        if (intent == null) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
            String string = sharedPreferences.getString("sms_hash", null);
            if (!"com.google.android.gms.auth.api.phone.SMS_RETRIEVED".equals(intent.getAction())) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            } else if (!AndroidUtilities.isWaitingForSms()) {
                return;
            } else {
                str = (String) intent.getExtras().get("com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE");
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Matcher matcher = Pattern.compile("[0-9\\-]+").matcher(str);
            if (matcher.find()) {
                final String strReplace = matcher.group(0).replace("-", _UrlKt.FRAGMENT_ENCODE_SET);
                if (strReplace.length() >= 3) {
                    if (string != null) {
                        sharedPreferences.edit().putString("sms_hash_code", string + "|" + strReplace).apply();
                    }
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SmsReceiver$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didReceiveSmsCode, strReplace);
                        }
                    });
                }
            }
        } catch (Throwable th) {
            FileLog.m1136e(th);
        }
    }
}
