package com.google.android.gms.internal.cast;

import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
final class zzxz implements zzzg {
    private static final zzxz zza = new zzxz();

    private zzxz() {
    }

    public static zzxz zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.cast.zzzg
    public final boolean zzb(Class cls) {
        return zzyd.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.cast.zzzg
    public final zzzf zzc(Class cls) {
        if (!zzyd.class.isAssignableFrom(cls)) {
            f$$ExternalSyntheticBUOutline1.m212m("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (zzzf) zzyd.zzF(cls.asSubclass(zzyd.class)).zzb(3, null, null);
        } catch (Exception e) {
            Make$Map$$ExternalSyntheticBUOutline0.m973m("Unable to get message info for ".concat(cls.getName()), e);
            return null;
        }
    }
}
