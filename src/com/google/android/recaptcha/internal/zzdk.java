package com.google.android.recaptcha.internal;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdk implements zzdd {
    public static final zzdk zza = new zzdk();

    private zzdk() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 1) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 3, null);
            return;
        }
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != (objZza instanceof Field)) {
            objZza = null;
        }
        Field field = (Field) objZza;
        if (field == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        try {
            zzcjVar.zzc().zzf(i, field.get(null));
        } catch (Exception e) {
            zzca$$ExternalSyntheticBUOutline0.m440m(6, 16, e);
        }
    }
}
