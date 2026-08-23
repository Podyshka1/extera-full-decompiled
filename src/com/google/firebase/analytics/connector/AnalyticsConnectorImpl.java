package com.google.firebase.analytics.connector;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfb;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzjh;
import com.google.android.gms.measurement.internal.zzlt;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.analytics.connector.internal.zzc;
import com.google.firebase.analytics.connector.internal.zze;
import com.google.firebase.analytics.connector.internal.zzg;
import com.google.firebase.events.Event;
import com.google.firebase.events.Subscriber;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p022j$.util.Objects;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsConnectorImpl implements AnalyticsConnector {
    private static volatile AnalyticsConnector zzc;
    final AppMeasurementSdk zza;
    final Map zzb;

    AnalyticsConnectorImpl(AppMeasurementSdk appMeasurementSdk) {
        Preconditions.checkNotNull(appMeasurementSdk);
        this.zza = appMeasurementSdk;
        this.zzb = new ConcurrentHashMap();
    }

    static /* synthetic */ void zza(Event event) {
        throw null;
    }

    private final boolean zzc(String str) {
        if (str.isEmpty()) {
            return false;
        }
        Map map = this.zzb;
        return map.containsKey(str) && map.get(str) != null;
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (str2 == null || zzc.zzb(str2, bundle)) {
            this.zza.clearConditionalUserProperty(str, str2, bundle);
        }
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public List getConditionalUserProperties(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : this.zza.getConditionalUserProperties(str, str2)) {
            int i = zzc.$r8$clinit;
            Preconditions.checkNotNull(bundle);
            AnalyticsConnector.ConditionalUserProperty conditionalUserProperty = new AnalyticsConnector.ConditionalUserProperty();
            conditionalUserProperty.origin = (String) Preconditions.checkNotNull((String) zzjh.zzb(bundle, "origin", String.class, null));
            conditionalUserProperty.name = (String) Preconditions.checkNotNull((String) zzjh.zzb(bundle, "name", String.class, null));
            conditionalUserProperty.value = zzjh.zzb(bundle, "value", Object.class, null);
            conditionalUserProperty.triggerEventName = (String) zzjh.zzb(bundle, "trigger_event_name", String.class, null);
            conditionalUserProperty.triggerTimeout = ((Long) zzjh.zzb(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            conditionalUserProperty.timedOutEventName = (String) zzjh.zzb(bundle, "timed_out_event_name", String.class, null);
            conditionalUserProperty.timedOutEventParams = (Bundle) zzjh.zzb(bundle, "timed_out_event_params", Bundle.class, null);
            conditionalUserProperty.triggeredEventName = (String) zzjh.zzb(bundle, "triggered_event_name", String.class, null);
            conditionalUserProperty.triggeredEventParams = (Bundle) zzjh.zzb(bundle, "triggered_event_params", Bundle.class, null);
            conditionalUserProperty.timeToLive = ((Long) zzjh.zzb(bundle, "time_to_live", Long.class, 0L)).longValue();
            conditionalUserProperty.expiredEventName = (String) zzjh.zzb(bundle, "expired_event_name", String.class, null);
            conditionalUserProperty.expiredEventParams = (Bundle) zzjh.zzb(bundle, "expired_event_params", Bundle.class, null);
            conditionalUserProperty.active = ((Boolean) zzjh.zzb(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            conditionalUserProperty.creationTimestamp = ((Long) zzjh.zzb(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            conditionalUserProperty.triggeredTimestamp = ((Long) zzjh.zzb(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
            arrayList.add(conditionalUserProperty);
        }
        return arrayList;
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public int getMaxUserProperties(String str) {
        return this.zza.getMaxUserProperties(str);
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public Map getUserProperties(boolean z) {
        return this.zza.getUserProperties(null, null, z);
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void logEvent(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (zzc.zza(str) && zzc.zzb(str2, bundle) && zzc.zze(str, str2, bundle)) {
            if ("clx".equals(str) && "_ae".equals(str2)) {
                bundle.putLong("_r", 1L);
            }
            this.zza.logEvent(str, str2, bundle);
        }
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public AnalyticsConnector.AnalyticsConnectorHandle registerAnalyticsConnectorListener(final String str, AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        Preconditions.checkNotNull(analyticsConnectorListener);
        if (zzc.zza(str) && !zzc(str)) {
            AppMeasurementSdk appMeasurementSdk = this.zza;
            Object zzeVar = "fiam".equals(str) ? new zze(appMeasurementSdk, analyticsConnectorListener) : "clx".equals(str) ? new zzg(appMeasurementSdk, analyticsConnectorListener) : null;
            if (zzeVar != null) {
                this.zzb.put(str, zzeVar);
                return new AnalyticsConnector.AnalyticsConnectorHandle(this) { // from class: com.google.firebase.analytics.connector.AnalyticsConnectorImpl.1
                    final /* synthetic */ AnalyticsConnectorImpl zzb;

                    {
                        Objects.requireNonNull(this);
                        this.zzb = this;
                    }
                };
            }
        }
        return null;
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void setConditionalUserProperty(AnalyticsConnector.ConditionalUserProperty conditionalUserProperty) {
        String str;
        int i = zzc.$r8$clinit;
        if (conditionalUserProperty == null || (str = conditionalUserProperty.origin) == null || str.isEmpty()) {
            return;
        }
        Object obj = conditionalUserProperty.value;
        if ((obj == null || zzlt.zzb(obj) != null) && zzc.zza(str) && zzc.zzd(str, conditionalUserProperty.name)) {
            String str2 = conditionalUserProperty.expiredEventName;
            if (str2 == null || (zzc.zzb(str2, conditionalUserProperty.expiredEventParams) && zzc.zze(str, conditionalUserProperty.expiredEventName, conditionalUserProperty.expiredEventParams))) {
                String str3 = conditionalUserProperty.triggeredEventName;
                if (str3 == null || (zzc.zzb(str3, conditionalUserProperty.triggeredEventParams) && zzc.zze(str, conditionalUserProperty.triggeredEventName, conditionalUserProperty.triggeredEventParams))) {
                    String str4 = conditionalUserProperty.timedOutEventName;
                    if (str4 == null || (zzc.zzb(str4, conditionalUserProperty.timedOutEventParams) && zzc.zze(str, conditionalUserProperty.timedOutEventName, conditionalUserProperty.timedOutEventParams))) {
                        AppMeasurementSdk appMeasurementSdk = this.zza;
                        Bundle bundle = new Bundle();
                        String str5 = conditionalUserProperty.origin;
                        if (str5 != null) {
                            bundle.putString("origin", str5);
                        }
                        String str6 = conditionalUserProperty.name;
                        if (str6 != null) {
                            bundle.putString("name", str6);
                        }
                        Object obj2 = conditionalUserProperty.value;
                        if (obj2 != null) {
                            zzjh.zza(bundle, obj2);
                        }
                        String str7 = conditionalUserProperty.triggerEventName;
                        if (str7 != null) {
                            bundle.putString("trigger_event_name", str7);
                        }
                        bundle.putLong("trigger_timeout", conditionalUserProperty.triggerTimeout);
                        String str8 = conditionalUserProperty.timedOutEventName;
                        if (str8 != null) {
                            bundle.putString("timed_out_event_name", str8);
                        }
                        Bundle bundle2 = conditionalUserProperty.timedOutEventParams;
                        if (bundle2 != null) {
                            bundle.putBundle("timed_out_event_params", bundle2);
                        }
                        String str9 = conditionalUserProperty.triggeredEventName;
                        if (str9 != null) {
                            bundle.putString("triggered_event_name", str9);
                        }
                        Bundle bundle3 = conditionalUserProperty.triggeredEventParams;
                        if (bundle3 != null) {
                            bundle.putBundle("triggered_event_params", bundle3);
                        }
                        bundle.putLong("time_to_live", conditionalUserProperty.timeToLive);
                        String str10 = conditionalUserProperty.expiredEventName;
                        if (str10 != null) {
                            bundle.putString("expired_event_name", str10);
                        }
                        Bundle bundle4 = conditionalUserProperty.expiredEventParams;
                        if (bundle4 != null) {
                            bundle.putBundle("expired_event_params", bundle4);
                        }
                        bundle.putLong("creation_timestamp", conditionalUserProperty.creationTimestamp);
                        bundle.putBoolean("active", conditionalUserProperty.active);
                        bundle.putLong("triggered_timestamp", conditionalUserProperty.triggeredTimestamp);
                        appMeasurementSdk.setConditionalUserProperty(bundle);
                    }
                }
            }
        }
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void setUserProperty(String str, String str2, Object obj) {
        if (zzc.zza(str) && zzc.zzd(str, str2)) {
            this.zza.setUserProperty(str, str2, obj);
        }
    }

    public static AnalyticsConnector getInstance(FirebaseApp firebaseApp, Context context, Subscriber subscriber) {
        Preconditions.checkNotNull(firebaseApp);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(subscriber);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzc == null) {
            synchronized (AnalyticsConnectorImpl.class) {
                try {
                    if (zzc == null) {
                        Bundle bundle = new Bundle(1);
                        if (firebaseApp.isDefaultApp()) {
                            subscriber.subscribe(DataCollectionDefaultChange.class, zzb.zza, zza.zza);
                            bundle.putBoolean("dataCollectionDefaultEnabled", firebaseApp.isDataCollectionDefaultEnabled());
                        }
                        zzc = new AnalyticsConnectorImpl(zzfb.zza(context, bundle).zzb());
                    }
                } finally {
                }
            }
        }
        return zzc;
    }
}
