package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zziq implements Callable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ zzjd zzb;

    zziq(zzjd zzjdVar, zzr zzrVar) {
        this.zza = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzb = zzjdVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        zzjd zzjdVar = this.zzb;
        zzjdVar.zzL().zzZ();
        return new zzao(zzjdVar.zzL().zzy(this.zza.zza));
    }
}
