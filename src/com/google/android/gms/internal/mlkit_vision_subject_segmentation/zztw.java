package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zztw {
    private static zztv zza;

    public static synchronized zztl zza(zztd zztdVar) {
        try {
            if (zza == null) {
                zza = new zztv(null);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (zztl) zza.get(zztdVar);
    }

    public static synchronized zztl zzb(String str) {
        return zza(zztd.zzd("subject-segmentation").zzd());
    }
}
