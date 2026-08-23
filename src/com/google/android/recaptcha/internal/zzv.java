package com.google.android.recaptcha.internal;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class zzv {
    public static final zzv zza = new zzv();
    private static final ConcurrentHashMap zzb = new ConcurrentHashMap();

    private zzv() {
    }

    public static final void zza(int i, long j) {
        ConcurrentHashMap concurrentHashMap = zzb;
        Integer numValueOf = Integer.valueOf(i);
        Object zzuVar = concurrentHashMap.get(numValueOf);
        if (zzuVar == null) {
            zzuVar = new zzu();
        }
        zzu zzuVar2 = (zzu) zzuVar;
        zzuVar2.zzg(zzuVar2.zzb() + 1);
        zzuVar2.zzf(zzuVar2.zzd() + j);
        zzuVar2.zze(Math.max(j, zzuVar2.zzc()));
        concurrentHashMap.put(numValueOf, zzuVar2);
    }
}
