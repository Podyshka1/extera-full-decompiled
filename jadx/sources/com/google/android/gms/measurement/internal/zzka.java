package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzka implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzlj zzb;

    zzka(zzlj zzljVar, long j) {
        this.zza = j;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzic zzicVar = this.zzb.zzu;
        zzhe zzheVar = zzicVar.zzd().zzf;
        long j = this.zza;
        zzheVar.zzb(j);
        zzicVar.zzaV().zzj().zzb("Session timeout duration set", Long.valueOf(j));
    }
}
