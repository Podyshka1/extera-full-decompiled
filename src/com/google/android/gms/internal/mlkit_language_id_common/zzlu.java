package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
public final class zzlu {
    private static zzlu zza;

    private zzlu() {
    }

    public static synchronized zzlu zza() {
        try {
            if (zza == null) {
                zza = new zzlu();
            }
        } catch (Throwable th) {
            throw th;
        }
        return zza;
    }
}
