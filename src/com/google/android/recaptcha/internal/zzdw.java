package com.google.android.recaptcha.internal;

import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdw implements zzdd {
    public static final zzdw zza = new zzdw();

    private zzdw() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        Object array;
        if (zzpqVarArr.length != 2) {
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
        Object objZza2 = zzcjVar.zzc().zza(zzpqVarArr[1]);
        if (true != (objZza2 instanceof Integer)) {
            objZza2 = null;
        }
        Integer num = (Integer) objZza2;
        if (num == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        int iIntValue = num.intValue();
        if (objZza instanceof Integer) {
            array = Integer.valueOf(((Number) objZza).intValue() - iIntValue);
        } else {
            if (!(objZza instanceof int[])) {
                zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
                return;
            }
            int[] iArr = (int[]) objZza;
            ArrayList arrayList = new ArrayList(iArr.length);
            for (int i2 : iArr) {
                arrayList.add(Integer.valueOf(i2 - iIntValue));
            }
            array = arrayList.toArray(new Integer[0]);
        }
        zzcjVar.zzc().zzf(i, array);
    }
}
