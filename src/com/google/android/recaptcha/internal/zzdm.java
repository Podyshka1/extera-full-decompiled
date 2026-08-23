package com.google.android.recaptcha.internal;

import java.lang.reflect.Method;
import java.util.Arrays;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdm implements zzdd {
    public static final zzdm zza = new zzdm();

    private zzdm() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        int length = zzpqVarArr.length;
        if (length == 0) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 3, null);
            return;
        }
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != (objZza instanceof Method)) {
            objZza = null;
        }
        Method method = (Method) objZza;
        if (method == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        Object[] objArrZzh = zzcjVar.zzc().zzh(ArraysKt.toList(zzpqVarArr).subList(1, length));
        try {
            zzcjVar.zzc().zzf(i, method.invoke(null, Arrays.copyOf(objArrZzh, objArrZzh.length)));
        } catch (Exception e) {
            zzca$$ExternalSyntheticBUOutline0.m440m(6, 15, e);
        }
    }
}
