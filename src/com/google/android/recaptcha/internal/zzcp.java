package com.google.android.recaptcha.internal;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcp implements zzdd {
    public static final zzcp zza = new zzcp();

    private zzcp() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 3) {
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
        if (iIntValue == 0) {
            throw new zzae(4, 6, null);
        }
        Object objZza2 = zzcjVar.zzc().zza(zzpqVarArr[1]);
        if (true != OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(objZza2)) {
            objZza2 = null;
        }
        if (objZza2 == null) {
            throw new zzae(4, 5, null);
        }
        Object objZza3 = zzcjVar.zzc().zza(zzpqVarArr[2]);
        if (true != OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(objZza3)) {
            objZza3 = null;
        }
        if (objZza3 == null) {
            throw new zzae(4, 5, null);
        }
        if (Intrinsics.areEqual(objZza2, objZza3)) {
            zzcjVar.zzg(zzcjVar.zza() + iIntValue);
        }
    }
}
