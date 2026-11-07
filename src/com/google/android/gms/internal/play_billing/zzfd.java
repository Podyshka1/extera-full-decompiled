package com.google.android.gms.internal.play_billing;

import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzfd implements zzgj {
    private static final zzfd zza = new zzfd();

    private zzfd() {
    }

    public static zzfd zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgj
    public final zzgi zzb(Class cls) {
        if (!zzfi.class.isAssignableFrom(cls)) {
            f$$ExternalSyntheticBUOutline1.m215m("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (zzgi) zzfi.zzn(cls.asSubclass(zzfi.class)).zzb(3, null, null);
        } catch (Exception e) {
            Make$Map$$ExternalSyntheticBUOutline0.m1021m("Unable to get message info for ".concat(cls.getName()), e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzgj
    public final boolean zzc(Class cls) {
        return zzfi.class.isAssignableFrom(cls);
    }
}
