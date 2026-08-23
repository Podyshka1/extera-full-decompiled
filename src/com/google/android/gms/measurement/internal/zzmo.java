package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzmo implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzbe zzc;
    final /* synthetic */ Bundle zzd;
    final /* synthetic */ zznl zze;

    zzmo(zznl zznlVar, boolean z, zzr zzrVar, boolean z2, zzbe zzbeVar, Bundle bundle) {
        this.zza = zzrVar;
        this.zzb = z2;
        this.zzc = zzbeVar;
        this.zzd = bundle;
        Objects.requireNonNull(zznlVar);
        this.zze = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.zze;
        zzgb zzgbVarZzZ = zznlVar.zzZ();
        if (zzgbVarZzZ == null) {
            zznlVar.zzu.zzaV().zzb().zza("Failed to send default event parameters to service");
            return;
        }
        if (zznlVar.zzu.zzc().zzp(null, zzfy.zzbb)) {
            zzr zzrVar = this.zza;
            Preconditions.checkNotNull(zzrVar);
            this.zze.zzm(zzgbVarZzZ, this.zzb ? null : this.zzc, zzrVar);
            return;
        }
        try {
            zzr zzrVar2 = this.zza;
            Preconditions.checkNotNull(zzrVar2);
            zzgbVarZzZ.zzu(this.zzd, zzrVar2);
            zznlVar.zzV();
        } catch (RemoteException e) {
            this.zze.zzu.zzaV().zzb().zzb("Failed to send default event parameters to service", e);
        }
    }
}
