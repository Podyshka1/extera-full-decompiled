package com.google.android.gms.internal.mlkit_vision_label;

/* JADX INFO: loaded from: classes4.dex */
public final class zzob {
    private static zzob zza;

    private zzob() {
    }

    public static synchronized zzob zza() {
        try {
            if (zza == null) {
                zza = new zzob();
            }
        } catch (Throwable th) {
            throw th;
        }
        return zza;
    }
}
