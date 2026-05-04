package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzax implements Runnable {
    final /* synthetic */ zzjg zza;
    final /* synthetic */ zzay zzb;

    zzax(zzay zzayVar, zzjg zzjgVar) {
        this.zza = zzjgVar;
        Objects.requireNonNull(zzayVar);
        this.zzb = zzayVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjg zzjgVar = this.zza;
        zzjgVar.zzaU();
        if (zzae.zza()) {
            zzjgVar.zzaW().zzj(this);
            return;
        }
        zzay zzayVar = this.zzb;
        boolean zZzc = zzayVar.zzc();
        zzayVar.zze(0L);
        if (zZzc) {
            zzayVar.zza();
        }
    }
}
