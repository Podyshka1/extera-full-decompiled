package com.google.android.recaptcha.internal;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcs implements zzdd {
    public static final zzcs zza = new zzcs();

    private zzcs() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        boolean z = true;
        if (zzpqVarArr.length != 1) {
            throw new zzae(4, 3, null);
        }
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(objZza)) {
            objZza = null;
        }
        if (objZza == null) {
            throw new zzae(4, 5, null);
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
                throw new zzae(6, 8, e2);
            }
        } catch (zzae e3) {
            throw e3;
        }
    }
}
