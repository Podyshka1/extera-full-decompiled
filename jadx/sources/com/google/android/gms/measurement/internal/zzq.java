package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzq implements zzjq {
    public final com.google.android.gms.internal.measurement.zzda zza;
    final /* synthetic */ AppMeasurementDynamiteService zzb;

    zzq(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzda zzdaVar) {
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zzb = appMeasurementDynamiteService;
        this.zza = zzdaVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjq
    public final void onEvent(String str, String str2, Bundle bundle, long j) {
        try {
            this.zza.zze(str, str2, bundle, j);
        } catch (RemoteException e) {
            zzic zzicVar = this.zzb.zza;
            if (zzicVar != null) {
                zzicVar.zzaV().zze().zzb("Event listener threw exception", e);
            }
        }
    }
}
