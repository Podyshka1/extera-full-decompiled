package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class zzf implements AppMeasurementSdk.OnEventListener {
    final /* synthetic */ zzg zza;

    public zzf(zzg zzgVar) {
        Objects.requireNonNull(zzgVar);
        this.zza = zzgVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjq
    public final void onEvent(String str, String str2, Bundle bundle, long j) {
        if (str == null || !zzc.zzc(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str2);
        bundle2.putLong("timestampInMillis", j);
        bundle2.putBundle("params", bundle);
        this.zza.zzd().onMessageTriggered(3, bundle2);
    }
}
