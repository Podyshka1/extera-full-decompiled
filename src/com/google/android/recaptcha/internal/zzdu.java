package com.google.android.recaptcha.internal;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdu implements zzdd {
    public static final zzdu zza = new zzdu();

    private zzdu() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 2) {
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
            field.set(null, zzcjVar.zzc().zza(zzpqVarArr[1]));
        } catch (Exception e) {
            zzca$$ExternalSyntheticBUOutline0.m440m(6, 11, e);
        }
    }
}
