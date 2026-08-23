package com.google.android.recaptcha.internal;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdf implements zzdd {
    public static final zzdf zza = new zzdf();

    private zzdf() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
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
            if (objZza instanceof String) {
                objZza = zzcjVar.zzh().zza((String) objZza);
            }
            zzcjVar.zzc().zzf(i, zzci.zza(objZza));
        } catch (zzae e) {
            throw e;
        } catch (Exception e2) {
            throw new zzae(6, 8, e2);
        }
    }
}
