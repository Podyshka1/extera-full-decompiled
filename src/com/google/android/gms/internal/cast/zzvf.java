package com.google.android.gms.internal.cast;

import java.util.concurrent.ConcurrentMap;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
final class zzvf {
    private static final zzvf zza = new zzvf();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final zzvj zzb = new zzup();

    private zzvf() {
    }

    public static zzvf zza() {
        return zza;
    }

    public final zzvi zzb(Class cls) {
        zzty.zzc(cls, "messageType");
        zzvi zzviVar = (zzvi) this.zzc.get(cls);
        if (zzviVar != null) {
            return zzviVar;
        }
        zzvi zzviVarZza = this.zzb.zza(cls);
        zzty.zzc(cls, "messageType");
        zzvi zzviVar2 = (zzvi) this.zzc.putIfAbsent(cls, zzviVarZza);
        return zzviVar2 == null ? zzviVarZza : zzviVar2;
    }
}
