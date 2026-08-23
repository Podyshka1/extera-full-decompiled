package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzih implements Runnable {
    final /* synthetic */ zzah zza;
    final /* synthetic */ zzr zzb;
    final /* synthetic */ zzjd zzc;

    zzih(zzjd zzjdVar, zzah zzahVar, zzr zzrVar) {
        this.zza = zzahVar;
        this.zzb = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzc = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjd zzjdVar = this.zzc;
        zzjdVar.zzL().zzZ();
        zzah zzahVar = this.zza;
        if (zzahVar.zzc.zza() == null) {
            zzjdVar.zzL().zzam(zzahVar, this.zzb);
        } else {
            zzjdVar.zzL().zzak(zzahVar, this.zzb);
        }
    }
}
