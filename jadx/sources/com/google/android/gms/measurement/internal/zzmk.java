package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzmk implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ zznl zzb;

    zzmk(zznl zznlVar, zzr zzrVar, boolean z) {
        this.zza = zzrVar;
        Objects.requireNonNull(zznlVar);
        this.zzb = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.zzb;
        zzgb zzgbVarZzZ = zznlVar.zzZ();
        if (zzgbVarZzZ == null) {
            zznlVar.zzu.zzaV().zzb().zza("Discarding data. Failed to send app launch");
            return;
        }
        try {
            zzr zzrVar = this.zza;
            Preconditions.checkNotNull(zzrVar);
            zzic zzicVar = zznlVar.zzu;
            zzal zzalVarZzc = zzicVar.zzc();
            zzfx zzfxVar = zzfy.zzbb;
            if (zzalVarZzc.zzp(null, zzfxVar)) {
                zznlVar.zzm(zzgbVarZzZ, null, zzrVar);
            }
            zzgbVarZzZ.zzg(zzrVar);
            zznlVar.zzu.zzm().zzo();
            zzicVar.zzc().zzp(null, zzfxVar);
            zznlVar.zzm(zzgbVarZzZ, null, zzrVar);
            zznlVar.zzV();
        } catch (RemoteException e) {
            this.zzb.zzu.zzaV().zzb().zzb("Failed to send app launch to the service", e);
        }
    }
}
