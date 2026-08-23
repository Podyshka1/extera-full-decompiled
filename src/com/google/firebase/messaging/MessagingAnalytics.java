package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.ProductData;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.TransportFactory;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public abstract class MessagingAnalytics {
    public static void logNotificationReceived(Intent intent) {
        if (shouldUploadScionMetrics(intent)) {
            logToScion("_nr", intent.getExtras());
        }
        if (shouldUploadFirelogAnalytics(intent)) {
            logToFirelog(MessagingClientEvent.Event.MESSAGE_DELIVERED, intent, FirebaseMessaging.getTransportFactory());
        }
    }

    public static void logNotificationOpen(Bundle bundle) {
        setUserPropertyIfRequired(bundle);
        logToScion("_no", bundle);
    }

    public static void logNotificationDismiss(Intent intent) {
        logToScion("_nd", intent.getExtras());
    }

    public static void logNotificationForeground(Intent intent) {
        logToScion("_nf", intent.getExtras());
    }

    public static boolean shouldUploadScionMetrics(Intent intent) {
        if (intent == null || isDirectBootMessage(intent)) {
            return false;
        }
        return shouldUploadScionMetrics(intent.getExtras());
    }

    public static boolean shouldUploadScionMetrics(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        return "1".equals(bundle.getString("google.c.a.e"));
    }

    public static boolean shouldUploadFirelogAnalytics(Intent intent) {
        if (intent == null || isDirectBootMessage(intent)) {
            return false;
        }
        return deliveryMetricsExportToBigQueryEnabled();
    }

    private static boolean isDirectBootMessage(Intent intent) {
        return FirebaseMessagingService.ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(intent.getAction());
    }

    static boolean deliveryMetricsExportToBigQueryEnabled() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            FirebaseApp.getInstance();
            Context applicationContext = FirebaseApp.getInstance().getApplicationContext();
            SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("export_to_big_query")) {
                return sharedPreferences.getBoolean("export_to_big_query", false);
            }
            try {
                PackageManager packageManager = applicationContext.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
                    return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            return false;
        } catch (IllegalStateException unused2) {
            Log.i("FirebaseMessaging", "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query");
            return false;
        }
    }

    private static void setUserPropertyIfRequired(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if ("1".equals(bundle.getString("google.c.a.tc"))) {
            AnalyticsConnector analyticsConnector = (AnalyticsConnector) FirebaseApp.getInstance().get(AnalyticsConnector.class);
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Received event with track-conversion=true. Setting user property and reengagement event");
            }
            if (analyticsConnector != null) {
                String string = bundle.getString("google.c.a.c_id");
                analyticsConnector.setUserProperty("fcm", "_ln", string);
                Bundle bundle2 = new Bundle();
                bundle2.putString("source", "Firebase");
                bundle2.putString("medium", "notification");
                bundle2.putString("campaign", string);
                analyticsConnector.logEvent("fcm", "_cmp", bundle2);
                return;
            }
            Log.w("FirebaseMessaging", "Unable to set user property for conversion tracking:  analytics library is missing");
            return;
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Received event with track-conversion=false. Do not set user property");
        }
    }

    static void logToScion(String str, Bundle bundle) {
        try {
            FirebaseApp.getInstance();
            if (bundle == null) {
                bundle = new Bundle();
            }
            Bundle bundle2 = new Bundle();
            String composerId = getComposerId(bundle);
            if (composerId != null) {
                bundle2.putString("_nmid", composerId);
            }
            String composerLabel = getComposerLabel(bundle);
            if (composerLabel != null) {
                bundle2.putString("_nmn", composerLabel);
            }
            String messageLabel = getMessageLabel(bundle);
            if (!TextUtils.isEmpty(messageLabel)) {
                bundle2.putString("label", messageLabel);
            }
            String messageChannel = getMessageChannel(bundle);
            if (!TextUtils.isEmpty(messageChannel)) {
                bundle2.putString("message_channel", messageChannel);
            }
            String topic = getTopic(bundle);
            if (topic != null) {
                bundle2.putString("_nt", topic);
            }
            String messageTime = getMessageTime(bundle);
            if (messageTime != null) {
                try {
                    bundle2.putInt("_nmt", Integer.parseInt(messageTime));
                } catch (NumberFormatException e) {
                    Log.w("FirebaseMessaging", "Error while parsing timestamp in GCM event", e);
                }
            }
            String useDeviceTime = getUseDeviceTime(bundle);
            if (useDeviceTime != null) {
                try {
                    bundle2.putInt("_ndt", Integer.parseInt(useDeviceTime));
                } catch (NumberFormatException e2) {
                    Log.w("FirebaseMessaging", "Error while parsing use_device_time in GCM event", e2);
                }
            }
            String messageTypeForScion = getMessageTypeForScion(bundle);
            if ("_nr".equals(str) || "_nf".equals(str)) {
                bundle2.putString("_nmc", messageTypeForScion);
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Logging to scion event=" + str + " scionPayload=" + bundle2);
            }
            AnalyticsConnector analyticsConnector = (AnalyticsConnector) FirebaseApp.getInstance().get(AnalyticsConnector.class);
            if (analyticsConnector == null) {
                Log.w("FirebaseMessaging", "Unable to log event: analytics library is missing");
            } else {
                analyticsConnector.logEvent("fcm", str, bundle2);
            }
        } catch (IllegalStateException unused) {
            Log.e("FirebaseMessaging", "Default FirebaseApp has not been initialized. Skip logging event to GA.");
        }
    }

    private static void logToFirelog(MessagingClientEvent.Event event, Intent intent, TransportFactory transportFactory) {
        if (transportFactory == null) {
            Log.e("FirebaseMessaging", "TransportFactory is null. Skip exporting message delivery metrics to Big Query");
            return;
        }
        MessagingClientEvent messagingClientEventEventToProto = eventToProto(event, intent);
        if (messagingClientEventEventToProto == null) {
            return;
        }
        try {
            transportFactory.getTransport("FCM_CLIENT_EVENT_LOGGING", MessagingClientEventExtension.class, Encoding.m295of("proto"), new Transformer() { // from class: com.google.firebase.messaging.MessagingAnalytics$$ExternalSyntheticLambda0
                @Override // com.google.android.datatransport.Transformer
                public final Object apply(Object obj) {
                    return ((MessagingClientEventExtension) obj).toByteArray();
                }
            }).send(Event.ofData(MessagingClientEventExtension.newBuilder().setMessagingClientEvent(messagingClientEventEventToProto).build(), ProductData.withProductId(Integer.valueOf(intent.getIntExtra("google.product_id", 111881503)))));
        } catch (RuntimeException e) {
            Log.w("FirebaseMessaging", "Failed to send big query analytics payload.", e);
        }
    }

    static int getTtl(Bundle bundle) {
        Object obj = bundle.get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException unused) {
            Log.w("FirebaseMessaging", "Invalid TTL: " + obj);
            return 0;
        }
    }

    static String getCollapseKey(Bundle bundle) {
        return bundle.getString("collapse_key");
    }

    static String getComposerId(Bundle bundle) {
        return bundle.getString("google.c.a.c_id");
    }

    static String getComposerLabel(Bundle bundle) {
        return bundle.getString("google.c.a.c_l");
    }

    static String getMessageLabel(Bundle bundle) {
        return bundle.getString("google.c.a.m_l");
    }

    static String getMessageChannel(Bundle bundle) {
        return bundle.getString("google.c.a.m_c");
    }

    static String getMessageTime(Bundle bundle) {
        return bundle.getString("google.c.a.ts");
    }

    static String getMessageId(Bundle bundle) {
        String string = bundle.getString("google.message_id");
        return string == null ? bundle.getString("message_id") : string;
    }

    static String getPackageName() {
        return FirebaseApp.getInstance().getApplicationContext().getPackageName();
    }

    static String getInstanceId(Bundle bundle) {
        String string = bundle.getString("google.to");
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        try {
            return (String) Tasks.await(FirebaseInstallations.getInstance(FirebaseApp.getInstance()).getId());
        } catch (InterruptedException | ExecutionException e) {
            throw new RuntimeException(e);
        }
    }

    static String getMessageTypeForScion(Bundle bundle) {
        if (bundle != null && NotificationParams.isNotification(bundle)) {
            return "display";
        }
        return "data";
    }

    static MessagingClientEvent.MessageType getMessageTypeForFirelog(Bundle bundle) {
        if (bundle != null && NotificationParams.isNotification(bundle)) {
            return MessagingClientEvent.MessageType.DISPLAY_NOTIFICATION;
        }
        return MessagingClientEvent.MessageType.DATA_MESSAGE;
    }

    static String getTopic(Bundle bundle) {
        String string = bundle.getString("from");
        if (string == null || !string.startsWith("/topics/")) {
            return null;
        }
        return string;
    }

    static String getUseDeviceTime(Bundle bundle) {
        if (bundle.containsKey("google.c.a.udt")) {
            return bundle.getString("google.c.a.udt");
        }
        return null;
    }

    static int getPriority(Bundle bundle) {
        String string = bundle.getString("google.delivered_priority");
        if (string == null) {
            if ("1".equals(bundle.getString("google.priority_reduced"))) {
                return 2;
            }
            string = bundle.getString("google.priority");
        }
        return getMessagePriority(string);
    }

    private static int getMessagePriority(String str) {
        if ("high".equals(str)) {
            return 1;
        }
        return "normal".equals(str) ? 2 : 0;
    }

    static int getMessagePriorityForFirelog(Bundle bundle) {
        int priority = getPriority(bundle);
        if (priority == 2) {
            return 5;
        }
        return priority == 1 ? 10 : 0;
    }

    static long getProjectNumber(Bundle bundle) {
        if (bundle.containsKey("google.c.sender.id")) {
            try {
                return Long.parseLong(bundle.getString("google.c.sender.id"));
            } catch (NumberFormatException e) {
                Log.w("FirebaseMessaging", "error parsing project number", e);
            }
        }
        FirebaseApp firebaseApp = FirebaseApp.getInstance();
        String gcmSenderId = firebaseApp.getOptions().getGcmSenderId();
        if (gcmSenderId != null) {
            try {
                return Long.parseLong(gcmSenderId);
            } catch (NumberFormatException e2) {
                Log.w("FirebaseMessaging", "error parsing sender ID", e2);
            }
        }
        String applicationId = firebaseApp.getOptions().getApplicationId();
        if (!applicationId.startsWith("1:")) {
            try {
                return Long.parseLong(applicationId);
            } catch (NumberFormatException e3) {
                Log.w("FirebaseMessaging", "error parsing app ID", e3);
            }
        } else {
            String[] strArrSplit = applicationId.split(":");
            if (strArrSplit.length < 2) {
                return 0L;
            }
            String str = strArrSplit[1];
            if (str.isEmpty()) {
                return 0L;
            }
            try {
                return Long.parseLong(str);
            } catch (NumberFormatException e4) {
                Log.w("FirebaseMessaging", "error parsing app ID", e4);
            }
        }
        return 0L;
    }

    static MessagingClientEvent eventToProto(MessagingClientEvent.Event event, Intent intent) {
        if (intent == null) {
            return null;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = Bundle.EMPTY;
        }
        MessagingClientEvent.Builder priority = MessagingClientEvent.newBuilder().setTtl(getTtl(extras)).setEvent(event).setInstanceId(getInstanceId(extras)).setPackageName(getPackageName()).setSdkPlatform(MessagingClientEvent.SDKPlatform.ANDROID).setMessageType(getMessageTypeForFirelog(extras)).setPriority(getMessagePriorityForFirelog(extras));
        String messageId = getMessageId(extras);
        if (messageId != null) {
            priority.setMessageId(messageId);
        }
        String topic = getTopic(extras);
        if (topic != null) {
            priority.setTopic(topic);
        }
        String collapseKey = getCollapseKey(extras);
        if (collapseKey != null) {
            priority.setCollapseKey(collapseKey);
        }
        String messageLabel = getMessageLabel(extras);
        if (messageLabel != null) {
            priority.setAnalyticsLabel(messageLabel);
        }
        String composerLabel = getComposerLabel(extras);
        if (composerLabel != null) {
            priority.setComposerLabel(composerLabel);
        }
        long projectNumber = getProjectNumber(extras);
        if (projectNumber > 0) {
            priority.setProjectNumber(projectNumber);
        }
        return priority.build();
    }
}
