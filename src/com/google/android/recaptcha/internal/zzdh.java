package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdh implements zzdd {
    public static final zzdh zza = new zzdh();

    private zzdh() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 2) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 3, null);
            return;
        }
        Class<?> clsZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != Objects.nonNull(clsZza)) {
            clsZza = null;
        }
        if (clsZza == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        Class<?> cls = clsZza instanceof Class ? clsZza : clsZza.getClass();
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[1]);
        if (true != (objZza instanceof String)) {
            objZza = null;
        }
        String str = (String) objZza;
        if (str == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        try {
            zzcjVar.zzc().zzf(i, cls.getField(zzcjVar.zzh().zza(str)));
        } catch (Exception e) {
            zzca$$ExternalSyntheticBUOutline0.m440m(6, 10, e);
        }
    }
}
