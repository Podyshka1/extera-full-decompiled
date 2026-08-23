package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzna implements Runnable {
    final /* synthetic */ zzgb zza;
    final /* synthetic */ zznf zzb;

    zzna(zznf zznfVar, zzgb zzgbVar) {
        this.zza = zzgbVar;
        Objects.requireNonNull(zznfVar);
        this.zzb = zznfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznf zznfVar = this.zzb;
        synchronized (zznfVar) {
            try {
                zznfVar.zzd(false);
                zznl zznlVar = zznfVar.zza;
                if (!zznlVar.zzh()) {
                    zznlVar.zzu.zzaV().zzj().zza("Connected to remote service");
                    zznlVar.zzL(this.zza);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zznl zznlVar2 = this.zzb.zza;
        if (zznlVar2.zzab() != null) {
            zznlVar2.zzab().shutdownNow();
            zznlVar2.zzac(null);
        }
    }
}
