package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzji {
    private static zzjh zza;

    public static synchronized void zza(zzjh zzjhVar) {
        if (zza != null) {
            throw new IllegalStateException("init() already called");
        }
        zza = zzjhVar;
    }

    public static synchronized zzjh zzb() {
        try {
            if (zza == null) {
                zza(new zzjl());
            }
        } catch (Throwable th) {
            throw th;
        }
        return zza;
    }
}
