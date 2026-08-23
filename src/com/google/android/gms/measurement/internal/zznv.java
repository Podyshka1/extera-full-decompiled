package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zznv implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzoc zzb;

    zznv(zzoc zzocVar, long j) {
        this.zza = j;
        Objects.requireNonNull(zzocVar);
        this.zzb = zzocVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzl(this.zza);
    }
}
