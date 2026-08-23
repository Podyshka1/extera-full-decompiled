package com.google.android.recaptcha.internal;

import java.lang.reflect.Constructor;
import java.util.Arrays;
import java.util.Objects;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdp implements zzdd {
    public static final zzdp zza = new zzdp();

    private zzdp() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        int length = zzpqVarArr.length;
        if (length == 0) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 3, null);
            return;
        }
        Constructor<?> constructorZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != Objects.nonNull(constructorZza)) {
            constructorZza = null;
        }
        if (constructorZza == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        Constructor<?> constructor = constructorZza instanceof Constructor ? constructorZza : constructorZza.getClass().getConstructor(null);
        Object[] objArrZzh = zzcjVar.zzc().zzh(ArraysKt.toList(zzpqVarArr).subList(1, length));
        try {
            zzcjVar.zzc().zzf(i, constructor.newInstance(Arrays.copyOf(objArrZzh, objArrZzh.length)));
        } catch (Exception e) {
            zzca$$ExternalSyntheticBUOutline0.m440m(6, 14, e);
        }
    }
}
