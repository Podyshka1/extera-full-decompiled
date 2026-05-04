package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzny {
    final /* synthetic */ zzoc zza;
    private zznx zzb;

    zzny(zzoc zzocVar) {
        Objects.requireNonNull(zzocVar);
        this.zza = zzocVar;
    }

    final void zza() {
        zzoc zzocVar = this.zza;
        zzocVar.zzg();
        zznx zznxVar = this.zzb;
        if (zznxVar != null) {
            zzocVar.zzm().removeCallbacks(zznxVar);
        }
        zzic zzicVar = zzocVar.zzu;
        zzicVar.zzd().zzn.zzb(false);
        zzocVar.zzh(false);
        if (zzicVar.zzc().zzp(null, zzfy.zzaT)) {
            zzic zzicVar2 = zzocVar.zzu;
            if (zzicVar2.zzj().zzx()) {
                zzicVar.zzaV().zzk().zza("Retrying trigger URI registration in foreground");
                zzicVar2.zzj().zzz();
            }
        }
    }

    final void zzb(long j) {
        zzoc zzocVar = this.zza;
        this.zzb = new zznx(this, zzocVar.zzu.zzaZ().currentTimeMillis(), j);
        zzocVar.zzm().postDelayed(this.zzb, 2000L);
    }
}
