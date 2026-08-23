package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.credentials.CredentialManager$$ExternalSyntheticLambda0;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.OnSuccessListener;

/* JADX INFO: loaded from: classes.dex */
abstract class ProxyNotificationPreferences {
    private static SharedPreferences getPreference(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return context.getSharedPreferences("com.google.firebase.messaging", 0);
    }

    public static void setProxyNotificationsInitialized(Context context, boolean z) {
        SharedPreferences.Editor editorEdit = getPreference(context).edit();
        editorEdit.putBoolean("proxy_notification_initialized", z);
        editorEdit.apply();
    }

    public static void setProxyRetention(final Context context, GmsRpc gmsRpc, final boolean z) {
        if (PlatformVersion.isAtLeastQ() && !isProxyNotificationRetentionSet(getPreference(context), z)) {
            gmsRpc.setRetainProxiedNotifications(z).addOnSuccessListener(new CredentialManager$$ExternalSyntheticLambda0(), new OnSuccessListener() { // from class: com.google.firebase.messaging.ProxyNotificationPreferences$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    ProxyNotificationPreferences.setProxyRetentionPreferences(context, z);
                }
            });
        }
    }

    public static boolean isProxyNotificationInitialized(Context context) {
        return getPreference(context).getBoolean("proxy_notification_initialized", false);
    }

    public static boolean isProxyNotificationRetentionSet(SharedPreferences sharedPreferences, boolean z) {
        return sharedPreferences.contains("proxy_retention") && sharedPreferences.getBoolean("proxy_retention", false) == z;
    }

    public static void setProxyRetentionPreferences(Context context, boolean z) {
        SharedPreferences.Editor editorEdit = getPreference(context).edit();
        editorEdit.putBoolean("proxy_retention", z);
        editorEdit.apply();
    }
}
