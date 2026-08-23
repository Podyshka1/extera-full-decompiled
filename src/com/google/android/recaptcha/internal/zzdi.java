package com.google.android.recaptcha.internal;

import java.util.Arrays;
import java.util.Objects;
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
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 3, null);
            return;
        }
        Class<?> clsZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != Objects.nonNull(clsZza)) {
            clsZza = null;
        }
        if (clsZza == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        Class<?> cls = clsZza instanceof Class ? clsZza : clsZza.getClass();
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[1]);
        if (true != (objZza instanceof String)) {
            objZza = null;
        }
        String str = (String) objZza;
        if (str == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        String strZza = zzcjVar.zzh().zza(str);
        if (Intrinsics.areEqual(strZza, "forName")) {
            zzca$$ExternalSyntheticBUOutline0.m440m(6, 48, null);
            return;
        }
        Class[] clsArrZzg = zzcjVar.zzc().zzg(ArraysKt.toList(zzpqVarArr).subList(2, length));
        try {
            zzcjVar.zzc().zzf(i, cls.getMethod(strZza, (Class[]) Arrays.copyOf(clsArrZzg, clsArrZzg.length)));
        } catch (Exception e) {
            zzca$$ExternalSyntheticBUOutline0.m440m(6, 13, e);
        }
    }
}
