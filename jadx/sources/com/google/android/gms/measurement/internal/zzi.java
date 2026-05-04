package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzi implements Runnable {
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcu zza;
    final /* synthetic */ AppMeasurementDynamiteService zzb;

    zzi(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcu zzcuVar) {
        this.zza = zzcuVar;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zzb = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzt().zzD(this.zza);
    }
}
