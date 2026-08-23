package com.google.android.recaptcha.internal;

import java.util.Arrays;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdg implements zzdd {
    public static final zzdg zza = new zzdg();

    private zzdg() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        int length = zzpqVarArr.length;
        if (length == 0) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 3, null);
            return;
        }
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != (objZza instanceof Class)) {
            objZza = null;
        }
        Class cls = (Class) objZza;
        if (cls == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        Class[] clsArrZzg = zzcjVar.zzc().zzg(ArraysKt.toList(zzpqVarArr).subList(1, length));
        try {
            zzcjVar.zzc().zzf(i, cls.getConstructor((Class[]) Arrays.copyOf(clsArrZzg, clsArrZzg.length)));
        } catch (Exception e) {
            zzca$$ExternalSyntheticBUOutline0.m440m(6, 9, e);
        }
    }
}
