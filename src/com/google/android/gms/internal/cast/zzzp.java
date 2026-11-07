package com.google.android.gms.internal.cast;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
final class zzzp {
    private static final zzzp zza = new zzzp();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final zzzt zzb = new zzza();

    private zzzp() {
    }

    public static zzzp zza() {
        return zza;
    }

    public final zzzs zzb(Class cls) {
        byte[] bArr = zzym.zzb;
        if (cls == null) {
            f$$ExternalSyntheticBUOutline2.m213m("messageType");
            return null;
        }
        ConcurrentMap concurrentMap = this.zzc;
        zzzs zzzsVar = (zzzs) concurrentMap.get(cls);
        if (zzzsVar != null) {
            return zzzsVar;
        }
        zzzs zzzsVarZza = this.zzb.zza(cls);
        zzzs zzzsVar2 = (zzzs) concurrentMap.putIfAbsent(cls, zzzsVarZza);
        return zzzsVar2 != null ? zzzsVar2 : zzzsVarZza;
    }
}
