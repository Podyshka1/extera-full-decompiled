package com.google.android.recaptcha.internal;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import java.lang.reflect.Proxy;

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
            throw new zzae(4, 3, null);
        }
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != (objZza instanceof String)) {
            objZza = null;
        }
        String str = (String) objZza;
        if (str == null) {
            throw new zzae(4, 5, null);
        }
        Object objZza2 = zzcjVar.zzc().zza(zzpqVarArr[1]);
        if (true != OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(objZza2)) {
            objZza2 = null;
        }
        if (objZza2 == null) {
            throw new zzae(4, 5, null);
        }
        Object objZza3 = zzcjVar.zzc().zza(zzpqVarArr[2]);
        if (true != (objZza3 instanceof String)) {
            objZza3 = null;
        }
        String str2 = (String) objZza3;
        if (str2 == null) {
            throw new zzae(4, 5, null);
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
                throw new zzae(4, 5, null);
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
            throw new zzae(6, 20, e);
        }
    }
}
