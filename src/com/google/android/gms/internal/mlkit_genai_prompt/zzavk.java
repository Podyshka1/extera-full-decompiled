package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzavk {
    private static zzavj zza;

    public static synchronized zzavc zza(String str) {
        return zzb(zzaux.zzd("genai-prompt").zzd());
    }

    public static synchronized zzavc zzb(zzaux zzauxVar) {
        try {
            if (zza == null) {
                zza = new zzavj(null);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (zzavc) zza.get(zzauxVar);
    }
}
