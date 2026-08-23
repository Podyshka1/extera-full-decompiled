package com.google.android.recaptcha.internal;

import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcp implements zzdd {
    public static final zzcp zza = new zzcp();

    private zzcp() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 3) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 3, null);
            return;
        }
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != (objZza instanceof Integer)) {
            objZza = null;
        }
        Integer num = (Integer) objZza;
        if (num == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 6, null);
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
        if (true != Objects.nonNull(objZza3)) {
            objZza3 = null;
        }
        if (objZza3 == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
        } else if (Intrinsics.areEqual(objZza2, objZza3)) {
            zzcjVar.zzg(zzcjVar.zza() + iIntValue);
        }
    }
}
