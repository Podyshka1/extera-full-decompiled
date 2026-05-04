package com.google.android.recaptcha.internal;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdi implements zzdd {
    public static final zzdi zza = new zzdi();

    private zzdi() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        int length = zzpqVarArr.length;
        if (length < 2) {
            throw new zzae(4, 3, null);
        }
        Class<?> clsZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(clsZza)) {
            clsZza = null;
        }
        if (clsZza == null) {
            throw new zzae(4, 5, null);
        }
        Class<?> cls = clsZza instanceof Class ? clsZza : clsZza.getClass();
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[1]);
        if (true != (objZza instanceof String)) {
            objZza = null;
        }
        String str = (String) objZza;
        if (str == null) {
            throw new zzae(4, 5, null);
        }
        String strZza = zzcjVar.zzh().zza(str);
        if (Intrinsics.areEqual(strZza, "forName")) {
            throw new zzae(6, 48, null);
        }
        Class[] clsArrZzg = zzcjVar.zzc().zzg(ArraysKt.toList(zzpqVarArr).subList(2, length));
        try {
            zzcjVar.zzc().zzf(i, cls.getMethod(strZza, (Class[]) Arrays.copyOf(clsArrZzg, clsArrZzg.length)));
        } catch (Exception e) {
            throw new zzae(6, 13, e);
        }
    }
}
