package com.google.android.recaptcha.internal;

import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzim implements zzkc {
    private static final zzim zza = new zzim();

    private zzim() {
    }

    public static zzim zza() {
        return zza;
    }

    @Override // com.google.android.recaptcha.internal.zzkc
    public final zzkb zzb(Class cls) {
        if (!zzit.class.isAssignableFrom(cls)) {
            f$$ExternalSyntheticBUOutline1.m178m("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (zzkb) zzit.zzr(cls.asSubclass(zzit.class)).zzh(3, null, null);
        } catch (Exception e) {
            Make$Map$$ExternalSyntheticBUOutline0.m877m("Unable to get message info for ".concat(cls.getName()), e);
            return null;
        }
    }

    @Override // com.google.android.recaptcha.internal.zzkc
    public final boolean zzc(Class cls) {
        return zzit.class.isAssignableFrom(cls);
    }
}
