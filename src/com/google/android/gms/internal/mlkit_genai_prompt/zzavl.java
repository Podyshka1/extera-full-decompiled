package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzavl {
    private static zzavl zza;

    private zzavl() {
    }

    public static synchronized zzavl zza() {
        try {
            if (zza == null) {
                zza = new zzavl();
            }
        } catch (Throwable th) {
            throw th;
        }
        return zza;
    }
}
