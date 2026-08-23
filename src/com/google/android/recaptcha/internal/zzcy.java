package com.google.android.recaptcha.internal;

import java.lang.reflect.Proxy;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcy implements zzdd {
    public static final zzcy zza = new zzcy();

    private zzcy() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        int iIntValue;
        int length = zzpqVarArr.length;
        if (length != 4 && length != 5) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 3, null);
            return;
        }
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != (objZza instanceof String)) {
            objZza = null;
        }
        String str = (String) objZza;
        if (str == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        Object objZza2 = zzcjVar.zzc().zza(zzpqVarArr[1]);
        if (true != Objects.nonNull(objZza2)) {
            objZza2 = null;
        }
        if (objZza2 == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        Object objZza3 = zzcjVar.zzc().zza(zzpqVarArr[2]);
        if (true != (objZza3 instanceof String)) {
            objZza3 = null;
        }
        String str2 = (String) objZza3;
        if (str2 == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        String strZza = zzcjVar.zzh().zza(str2);
        Object objZza4 = zzcjVar.zzc().zza(zzpqVarArr[3]);
        if (length == 5) {
            Object objZza5 = zzcjVar.zzc().zza(zzpqVarArr[4]);
            if (true != (objZza5 instanceof Integer)) {
                objZza5 = null;
            }
            Integer num = (Integer) objZza5;
            if (num == null) {
                zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
                return;
            }
            iIntValue = num.intValue();
        } else {
            iIntValue = -1;
        }
        try {
            if (objZza2 instanceof String) {
                objZza2 = zzcjVar.zzh().zza((String) objZza2);
            }
            Class clsZza = zzci.zza(objZza2);
            zzcjVar.zzc().zzf(i, Proxy.newProxyInstance(clsZza.getClassLoader(), new Class[]{clsZza}, new zzcf(new zzcx(zzcjVar, str, iIntValue), strZza, objZza4)));
        } catch (Exception e) {
            zzca$$ExternalSyntheticBUOutline0.m440m(6, 20, e);
        }
    }
}
