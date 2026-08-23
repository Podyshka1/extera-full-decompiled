package com.google.android.gms.internal.vision;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzju {
    private static final zzju zza;
    private static final zzju zzb;

    private zzju() {
    }

    abstract void zza(Object obj, Object obj2, long j);

    abstract void zzb(Object obj, long j);

    static zzju zza() {
        return zza;
    }

    static zzju zzb() {
        return zzb;
    }

    static {
        zzjx zzjxVar = null;
        zza = new zzjw();
        zzb = new zzjz();
    }
}
