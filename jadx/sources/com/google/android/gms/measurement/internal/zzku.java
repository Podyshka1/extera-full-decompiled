package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzku implements Runnable {
    final /* synthetic */ zzjl zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ boolean zzc;
    final /* synthetic */ zzlj zzd;

    zzku(zzlj zzljVar, zzjl zzjlVar, long j, boolean z) {
        this.zza = zzjlVar;
        this.zzb = j;
        this.zzc = z;
        Objects.requireNonNull(zzljVar);
        this.zzd = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.zzd;
        zzjl zzjlVar = this.zza;
        zzljVar.zzA(zzjlVar);
        zzljVar.zzak(zzjlVar, this.zzb, true, this.zzc);
    }
}
