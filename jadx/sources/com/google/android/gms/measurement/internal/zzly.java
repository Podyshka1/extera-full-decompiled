package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzly implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzmb zzb;

    zzly(zzmb zzmbVar, long j) {
        this.zza = j;
        Objects.requireNonNull(zzmbVar);
        this.zzb = zzmbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzmb zzmbVar = this.zzb;
        zzmbVar.zzu.zzw().zzc(this.zza);
        zzmbVar.zza = null;
    }
}
