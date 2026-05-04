package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzmn implements Runnable {
    final /* synthetic */ zzlu zza;
    final /* synthetic */ zznl zzb;

    zzmn(zznl zznlVar, zzlu zzluVar) {
        this.zza = zzluVar;
        Objects.requireNonNull(zznlVar);
        this.zzb = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.zzb;
        zzgb zzgbVarZzZ = zznlVar.zzZ();
        if (zzgbVarZzZ == null) {
            zznlVar.zzu.zzaV().zzb().zza("Failed to send current screen to service");
            return;
        }
        try {
            zzlu zzluVar = this.zza;
            if (zzluVar == null) {
                zzgbVarZzZ.zzl(0L, null, null, zznlVar.zzu.zzaY().getPackageName());
            } else {
                zzgbVarZzZ.zzl(zzluVar.zzc, zzluVar.zza, zzluVar.zzb, zznlVar.zzu.zzaY().getPackageName());
            }
            zznlVar.zzV();
        } catch (RemoteException e) {
            this.zzb.zzu.zzaV().zzb().zzb("Failed to send current screen to the service", e);
        }
    }
}
