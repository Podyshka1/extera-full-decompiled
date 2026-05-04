package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzip implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ zzjd zzb;

    zzip(zzjd zzjdVar, zzr zzrVar) {
        this.zza = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzb = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjd zzjdVar = this.zzb;
        zzjdVar.zzL().zzZ();
        zzpg zzpgVarZzL = zzjdVar.zzL();
        zzpgVarZzL.zzaW().zzg();
        zzpgVarZzL.zzu();
        zzr zzrVar = this.zza;
        Preconditions.checkNotEmpty(zzrVar.zza);
        zzpgVarZzL.zzv(zzrVar);
        zzpgVarZzL.zzw(zzrVar);
    }
}
