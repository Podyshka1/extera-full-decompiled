package com.google.android.gms.measurement.api;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzfb;
import com.google.android.gms.measurement.internal.zzjq;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AppMeasurementSdk {
    private final zzfb zza;

    public interface OnEventListener extends zzjq {
    }

    public AppMeasurementSdk(zzfb zzfbVar) {
        this.zza = zzfbVar;
    }

    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.zza.zzm(str, str2, bundle);
    }

    public List getConditionalUserProperties(String str, String str2) {
        return this.zza.zzn(str, str2);
    }

    public int getMaxUserProperties(String str) {
        return this.zza.zzF(str);
    }

    public Map getUserProperties(String str, String str2, boolean z) {
        return this.zza.zzC(str, str2, z);
    }

    public void logEvent(String str, String str2, Bundle bundle) {
        this.zza.zzi(str, str2, bundle);
    }

    public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        this.zza.zzf(onEventListener);
    }

    public void setConditionalUserProperty(Bundle bundle) {
        this.zza.zzl(bundle);
    }

    public void setUserProperty(String str, String str2, Object obj) {
        this.zza.zzk(str, str2, obj, true);
    }
}
