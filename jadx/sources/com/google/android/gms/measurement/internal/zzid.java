package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzid implements Callable {
    final /* synthetic */ String zza;
    final /* synthetic */ zzjd zzb;

    zzid(zzjd zzjdVar, String str) {
        this.zza = str;
        Objects.requireNonNull(zzjdVar);
        this.zzb = zzjdVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        zzjd zzjdVar = this.zzb;
        zzjdVar.zzL().zzZ();
        return zzjdVar.zzL().zzj().zzn(this.zza);
    }
}
