package com.google.firebase.analytics.connector;

import android.os.Bundle;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface AnalyticsConnector {

    public interface AnalyticsConnectorHandle {
    }

    public interface AnalyticsConnectorListener {
        void onMessageTriggered(int i, Bundle bundle);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class ConditionalUserProperty {
        public boolean active;
        public long creationTimestamp;
        public String expiredEventName;
        public Bundle expiredEventParams;
        public String name;
        public String origin;
        public long timeToLive;
        public String timedOutEventName;
        public Bundle timedOutEventParams;
        public String triggerEventName;
        public long triggerTimeout;
        public String triggeredEventName;
        public Bundle triggeredEventParams;
        public long triggeredTimestamp;
        public Object value;
    }

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2);

    int getMaxUserProperties(String str);

    Map<String, Object> getUserProperties(boolean z);

    void logEvent(String str, String str2, Bundle bundle);

    AnalyticsConnectorHandle registerAnalyticsConnectorListener(String str, AnalyticsConnectorListener analyticsConnectorListener);

    void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty);

    void setUserProperty(String str, String str2, Object obj);
}
