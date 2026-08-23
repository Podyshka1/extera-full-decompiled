package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzmu implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzah zzc;
    final /* synthetic */ zznl zzd;

    zzmu(zznl zznlVar, boolean z, zzr zzrVar, boolean z2, zzah zzahVar, zzah zzahVar2) {
        this.zza = zzrVar;
        this.zzb = z2;
        this.zzc = zzahVar;
        Objects.requireNonNull(zznlVar);
        this.zzd = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.zzd;
        zzgb zzgbVarZzZ = zznlVar.zzZ();
        if (zzgbVarZzZ == null) {
            zznlVar.zzu.zzaV().zzb().zza("Discarding data. Failed to send conditional user property to service");
            return;
        }
        zzr zzrVar = this.zza;
        Preconditions.checkNotNull(zzrVar);
        zznlVar.zzm(zzgbVarZzZ, this.zzb ? null : this.zzc, zzrVar);
        zznlVar.zzV();
    }
}
