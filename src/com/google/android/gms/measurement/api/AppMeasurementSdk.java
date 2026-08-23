package com.google.android.gms.measurement.api;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.internal.measurement.zzez;
import com.google.android.gms.measurement.internal.zzjq;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AppMeasurementSdk {
    private final zzez zza;

    public interface OnEventListener extends zzjq {
    }

    public AppMeasurementSdk(zzez zzezVar) {
        this.zza = zzezVar;
    }

    @Keep
    public static AppMeasurementSdk getInstance(Context context) {
        return zzez.zza(context, null).zzb();
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        this.zza.zzu(str);
    }

    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.zza.zzm(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(String str) {
        this.zza.zzv(str);
    }

    @Keep
    public long generateEventId() {
        return this.zza.zzz();
    }

    @Keep
    public String getAppInstanceId() {
        return this.zza.zzy();
    }

    public List<Bundle> getConditionalUserProperties(String str, String str2) {
        return this.zza.zzn(str, str2);
    }

    @Keep
    public String getGmpAppId() {
        return this.zza.zzx();
    }

    public int getMaxUserProperties(String str) {
        return this.zza.zzF(str);
    }

    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.zza.zzC(str, str2, z);
    }

    @Keep
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
