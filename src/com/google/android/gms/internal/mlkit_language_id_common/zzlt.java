package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzlt {
    private static zzls zza;

    public static synchronized zzli zza(zzlc zzlcVar) {
        try {
            if (zza == null) {
                zza = new zzls(null);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (zzli) zza.get(zzlcVar);
    }

    public static synchronized zzli zzb(String str) {
        return zza(zzlc.zzd(str).zzd());
    }
}
