package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdf implements zzdd {
    public static final zzdf zza = new zzdf();

    private zzdf() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 1) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 3, null);
            return;
        }
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != Objects.nonNull(objZza)) {
            objZza = null;
        }
        if (objZza == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        try {
            if (objZza instanceof String) {
                objZza = zzcjVar.zzh().zza((String) objZza);
            }
            zzcjVar.zzc().zzf(i, zzci.zza(objZza));
        } catch (zzae e) {
            throw e;
        } catch (Exception e2) {
            zzca$$ExternalSyntheticBUOutline0.m440m(6, 8, e2);
        }
    }
}
