package com.google.android.recaptcha.internal;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzhj {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final ConcurrentHashMap zzb = new ConcurrentHashMap();

    public static final void zza(int i, long j) {
        ConcurrentHashMap concurrentHashMap = zzb;
        Integer numValueOf = Integer.valueOf(i);
        Object zzhiVar = concurrentHashMap.get(numValueOf);
        if (zzhiVar == null) {
            zzhiVar = new zzhi();
        }
        zzhi zzhiVar2 = (zzhi) zzhiVar;
        zzhiVar2.zzb(zzhiVar2.zza() + 1);
        zzhiVar2.zzd(zzhiVar2.zzc() + j);
        zzhiVar2.zzf(Math.max(j, zzhiVar2.zze()));
        concurrentHashMap.put(numValueOf, zzhiVar2);
    }
}
