package com.google.android.gms.internal.mlkit_vision_label;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzoa {
    private static zznz zza;

    public static synchronized zznp zza(zznh zznhVar) {
        try {
            if (zza == null) {
                zza = new zznz(null);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (zznp) zza.get(zznhVar);
    }

    public static synchronized zznp zzb(String str) {
        return zza(zznh.zzd("play-services-mlkit-image-labeling").zzd());
    }
}
