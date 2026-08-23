package com.google.android.recaptcha.internal;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
public final class zzco implements zzdd {
    public static final zzco zza = new zzco();

    private zzco() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 3) {
            throw new zzae(4, 3, null);
        }
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(objZza)) {
            objZza = null;
        }
        if (objZza == null) {
            throw new zzae(4, 5, null);
        }
        Object objZza2 = zzcjVar.zzc().zza(zzpqVarArr[1]);
        if (true != (objZza2 instanceof Integer)) {
            objZza2 = null;
        }
        Integer num = (Integer) objZza2;
        if (num == null) {
            throw new zzae(4, 5, null);
        }
        int iIntValue = num.intValue();
        Object objZza3 = zzcjVar.zzc().zza(zzpqVarArr[2]);
        if (true != OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(objZza3)) {
            objZza3 = null;
        }
        if (objZza3 == null) {
            throw new zzae(4, 5, null);
        }
        try {
            Array.set(objZza, iIntValue, objZza3);
        } catch (Exception e) {
            if (!(e instanceof ArrayIndexOutOfBoundsException)) {
                throw new zzae(4, 25, e);
            }
            throw new zzae(4, 22, e);
        }
    }
}
