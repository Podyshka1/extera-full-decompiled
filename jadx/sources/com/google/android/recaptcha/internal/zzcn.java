package com.google.android.recaptcha.internal;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import java.lang.reflect.Array;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcn implements zzdd {
    public static final zzcn zza = new zzcn();

    private zzcn() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 2) {
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
        try {
            zzcjVar.zzc().zzf(i, objZza instanceof String ? String.valueOf(((String) objZza).charAt(iIntValue)) : objZza instanceof List ? ((List) objZza).get(iIntValue) : Array.get(objZza, iIntValue));
        } catch (Exception e) {
            if (!(e instanceof ArrayIndexOutOfBoundsException)) {
                throw new zzae(4, 23, e);
            }
            throw new zzae(4, 22, e);
        }
    }
}
