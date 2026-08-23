package com.google.android.recaptcha.internal;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdt implements zzdd {
    public static final zzdt zza = new zzdt();

    private zzdt() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 3) {
            throw new zzae(4, 3, null);
        }
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != (objZza instanceof Field)) {
            objZza = null;
        }
        Field field = (Field) objZza;
        if (field == null) {
            throw new zzae(4, 5, null);
        }
        try {
            field.set(zzcjVar.zzc().zza(zzpqVarArr[1]), zzcjVar.zzc().zza(zzpqVarArr[2]));
        } catch (Exception e) {
            throw new zzae(6, 11, e);
        }
    }
}
