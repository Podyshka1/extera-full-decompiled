package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcs implements zzdd {
    public static final zzcs zza = new zzcs();

    private zzcs() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        boolean z = true;
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
            try {
                if (objZza instanceof String) {
                    objZza = zzcjVar.zzh().zza((String) objZza);
                }
                zzck zzckVarZzc = zzcjVar.zzc();
                try {
                    zzci.zza(objZza);
                } catch (zzae e) {
                    if (e.zzb() == 8 || e.zzb() == 6) {
                        z = false;
                    } else if (e.zzb() != 47) {
                        throw e;
                    }
                }
                zzckVarZzc.zzf(i, Boolean.valueOf(z));
            } catch (Exception e2) {
                zzca$$ExternalSyntheticBUOutline0.m440m(6, 8, e2);
            }
        } catch (zzae e3) {
            throw e3;
        }
    }
}
