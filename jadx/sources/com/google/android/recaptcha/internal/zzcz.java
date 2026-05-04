package com.google.android.recaptcha.internal;

import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcz implements zzdd {
    public static final zzcz zza = new zzcz();

    private zzcz() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        int length = zzpqVarArr.length;
        if (length != 4 && length != 5) {
            throw new zzae(4, 3, null);
        }
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != (objZza instanceof Integer)) {
            objZza = null;
        }
        Integer num = (Integer) objZza;
        if (num == null) {
            throw new zzae(4, 5, null);
        }
        int iIntValue = num.intValue();
        Object objZza2 = zzcjVar.zzc().zza(zzpqVarArr[1]);
        if (true != (objZza2 instanceof Integer)) {
            objZza2 = null;
        }
        Integer num2 = (Integer) objZza2;
        if (num2 == null) {
            throw new zzae(4, 5, null);
        }
        int iIntValue2 = num2.intValue();
        Object objZza3 = zzcjVar.zzc().zza(zzpqVarArr[2]);
        if (true != (objZza3 instanceof String)) {
            objZza3 = null;
        }
        String str = (String) objZza3;
        if (str == null) {
            throw new zzae(4, 5, null);
        }
        String strZza = zzcjVar.zzh().zza(str);
        Object objZza4 = zzcjVar.zzc().zza(zzpqVarArr[3]);
        if (true != (objZza4 instanceof String)) {
            objZza4 = null;
        }
        String str2 = (String) objZza4;
        if (str2 == null) {
            throw new zzae(4, 5, null);
        }
        String strZza2 = zzcjVar.zzh().zza(str2);
        Object objZza5 = length == 5 ? zzcjVar.zzc().zza(zzpqVarArr[4]) : null;
        zzcg zzcgVar = new zzcg(iIntValue2);
        try {
            Class clsZza = zzci.zza(strZza);
            zzcjVar.zzc().zzf(iIntValue, Proxy.newProxyInstance(clsZza.getClassLoader(), new Class[]{clsZza}, new zzch(zzcgVar, strZza2, objZza5)));
            zzcjVar.zzc().zzf(i, zzcgVar);
        } catch (Exception e) {
            throw new zzae(6, 20, e);
        }
    }
}
