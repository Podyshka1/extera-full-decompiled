package com.google.android.gms.internal.vision;

import java.util.concurrent.ConcurrentMap;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
final class zzky {
    private static final zzky zza = new zzky();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final zzlf zzb = new zzkb();

    public static zzky zza() {
        return zza;
    }

    public final zzlc zza(Class cls) {
        zzjf.zza((Object) cls, "messageType");
        zzlc zzlcVarZza = (zzlc) this.zzc.get(cls);
        if (zzlcVarZza == null) {
            zzlcVarZza = this.zzb.zza(cls);
            zzjf.zza((Object) cls, "messageType");
            zzjf.zza((Object) zzlcVarZza, "schema");
            zzlc zzlcVar = (zzlc) this.zzc.putIfAbsent(cls, zzlcVarZza);
            if (zzlcVar != null) {
                return zzlcVar;
            }
        }
        return zzlcVarZza;
    }

    public final zzlc zza(Object obj) {
        return zza((Class) obj.getClass());
    }

    private zzky() {
    }
}
