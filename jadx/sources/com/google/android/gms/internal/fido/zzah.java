package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzah {
    private static final Object zza = new Object();
    private static volatile zzag zzc = null;
    private static volatile boolean zzd = false;
    private static volatile zzag zze;

    static void zza() {
        zzd = true;
    }

    static void zzb() {
        if (zze == null) {
            zze = new zzag(null);
        }
    }

    static void zzc() {
        if (zzc == null) {
            zzc = new zzag(null);
        }
    }

    static boolean zzd() {
        synchronized (zza) {
        }
        return false;
    }
}
