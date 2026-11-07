package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzgw {
    private static final ThreadLocal zza = new zzgq();

    public static zzgw zzb() {
        return (zzgw) zza.get();
    }

    public abstract void zza(zzgt zzgtVar);
}
