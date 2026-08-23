package com.google.android.recaptcha.internal;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes5.dex */
final class zzkn {
    public static final /* synthetic */ int zza = 0;
    private static final zzkn zzb = new zzkn();
    private final ConcurrentMap zzd = new ConcurrentHashMap();
    private final zzks zzc = new zzjw();

    private zzkn() {
    }

    public static zzkn zza() {
        return zzb;
    }

    public final zzkr zzb(Class cls) {
        zzjc.zzc(cls, "messageType");
        zzkr zzkrVar = (zzkr) this.zzd.get(cls);
        if (zzkrVar != null) {
            return zzkrVar;
        }
        zzkr zzkrVarZza = this.zzc.zza(cls);
        zzjc.zzc(cls, "messageType");
        zzkr zzkrVar2 = (zzkr) this.zzd.putIfAbsent(cls, zzkrVarZza);
        return zzkrVar2 == null ? zzkrVarZza : zzkrVar2;
    }
}
