package com.google.android.recaptcha.internal;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdj implements zzdd {
    public static final zzdj zza = new zzdj();

    private zzdj() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 2) {
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
            zzcjVar.zzc().zzf(i, field.get(zzcjVar.zzc().zza(zzpqVarArr[1])));
        } catch (Exception e) {
            throw new zzae(6, 16, e);
        }
    }
}
