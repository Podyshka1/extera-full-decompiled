package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzmp implements Runnable {
    final /* synthetic */ zzbg zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcu zzc;
    final /* synthetic */ zznl zzd;

    zzmp(zznl zznlVar, zzbg zzbgVar, String str, com.google.android.gms.internal.measurement.zzcu zzcuVar) {
        this.zza = zzbgVar;
        this.zzb = str;
        this.zzc = zzcuVar;
        Objects.requireNonNull(zznlVar);
        this.zzd = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.internal.measurement.zzcu zzcuVar;
        zzpp zzppVarZzk;
        zznl zznlVar;
        zzgb zzgbVarZzZ;
        byte[] bArrZzk = null;
        try {
            try {
                zznlVar = this.zzd;
                zzgbVarZzZ = zznlVar.zzZ();
            } catch (RemoteException e) {
                this.zzd.zzu.zzaV().zzb().zzb("Failed to send event to the service to bundle", e);
            }
            if (zzgbVarZzZ == null) {
                zzic zzicVar = zznlVar.zzu;
                zzicVar.zzaV().zzb().zza("Discarding data. Failed to send event to service to bundle");
                zzppVarZzk = zzicVar.zzk();
                zzcuVar = this.zzc;
                zzppVarZzk.zzao(zzcuVar, bArrZzk);
            }
            bArrZzk = zzgbVarZzZ.zzk(this.zza, this.zzb);
            zznlVar.zzV();
            zznl zznlVar2 = this.zzd;
            zzcuVar = this.zzc;
            zzppVarZzk = zznlVar2.zzu.zzk();
            zzppVarZzk.zzao(zzcuVar, bArrZzk);
        } catch (Throwable th) {
            zznl zznlVar3 = this.zzd;
            zznlVar3.zzu.zzk().zzao(this.zzc, null);
            throw th;
        }
    }
}
