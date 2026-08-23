package com.google.android.gms.internal.fido;

import java.util.Comparator;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzgl {
    static final String zza;
    static final Comparator zzb;

    static {
        Comparator comparator;
        String strConcat = zzgl.class.getName().concat("$UnsafeComparator");
        zza = strConcat;
        try {
            Object[] enumConstants = Class.forName(strConcat).getEnumConstants();
            Objects.requireNonNull(enumConstants);
            comparator = (Comparator) enumConstants[0];
        } catch (Throwable unused) {
            comparator = zzgk.INSTANCE;
        }
        zzb = comparator;
    }
}
