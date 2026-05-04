package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzie implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ zzjd zzb;

    zzie(zzjd zzjdVar, zzr zzrVar) {
        this.zza = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzb = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjd zzjdVar = this.zzb;
        zzjdVar.zzL().zzZ();
        zzjdVar.zzL().zzah(this.zza);
    }
}
