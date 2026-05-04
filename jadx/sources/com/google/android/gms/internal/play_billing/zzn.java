package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
final class zzn extends zzf {
    zzn() {
        super(null);
    }

    @Override // com.google.android.gms.internal.play_billing.zzf
    final void zza(zzo zzoVar, zzo zzoVar2) {
        zzoVar.zzc = zzoVar2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzf
    final void zzb(zzo zzoVar, Thread thread) {
        zzoVar.zzb = thread;
    }

    @Override // com.google.android.gms.internal.play_billing.zzf
    final boolean zzc(zzq zzqVar, zzj zzjVar, zzj zzjVar2) {
        synchronized (zzqVar) {
            try {
                if (zzqVar.zzd != zzjVar) {
                    return false;
                }
                zzqVar.zzd = zzjVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzf
    final boolean zzd(zzq zzqVar, Object obj, Object obj2) {
        synchronized (zzqVar) {
            try {
                if (zzqVar.zzc != obj) {
                    return false;
                }
                zzqVar.zzc = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzf
    final boolean zze(zzq zzqVar, zzo zzoVar, zzo zzoVar2) {
        synchronized (zzqVar) {
            try {
                if (zzqVar.zze != zzoVar) {
                    return false;
                }
                zzqVar.zze = zzoVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
