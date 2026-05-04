package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzj implements Runnable {
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcu zza;
    final /* synthetic */ zzbg zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ AppMeasurementDynamiteService zzd;

    zzj(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcu zzcuVar, zzbg zzbgVar, String str) {
        this.zza = zzcuVar;
        this.zzb = zzbgVar;
        this.zzc = str;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zzd = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zza.zzt().zzN(this.zza, this.zzb, this.zzc);
    }
}
