package com.google.android.recaptcha.internal;

import java.lang.reflect.Array;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzco implements zzdd {
    public static final zzco zza = new zzco();

    private zzco() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 3) {
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
        Object objZza3 = zzcjVar.zzc().zza(zzpqVarArr[2]);
        if (true != Objects.nonNull(objZza3)) {
            objZza3 = null;
        }
        if (objZza3 == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        try {
            Array.set(objZza, iIntValue, objZza3);
        } catch (Exception e) {
            if (e instanceof ArrayIndexOutOfBoundsException) {
                zzca$$ExternalSyntheticBUOutline0.m440m(4, 22, e);
            } else {
                zzca$$ExternalSyntheticBUOutline0.m440m(4, 25, e);
            }
        }
    }
}
