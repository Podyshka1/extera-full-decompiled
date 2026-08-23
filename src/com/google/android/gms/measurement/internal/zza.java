package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zza implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zzd zzc;

    zza(zzd zzdVar, String str, long j) {
        this.zza = str;
        this.zzb = j;
        Objects.requireNonNull(zzdVar);
        this.zzc = zzdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzd(this.zza, this.zzb);
    }
}
