package com.google.android.recaptcha.internal;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcm implements zzdd {
    public static final zzcm zza = new zzcm();

    private zzcm() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        Object array;
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
        if (objZza instanceof Integer) {
            array = Integer.valueOf(((Number) objZza).intValue() + iIntValue);
        } else {
            if (!(objZza instanceof int[])) {
                throw new zzae(4, 5, null);
            }
            int[] iArr = (int[]) objZza;
            ArrayList arrayList = new ArrayList(iArr.length);
            for (int i2 : iArr) {
                arrayList.add(Integer.valueOf(i2 + iIntValue));
            }
            array = arrayList.toArray(new Integer[0]);
        }
        zzcjVar.zzc().zzf(i, array);
    }
}
