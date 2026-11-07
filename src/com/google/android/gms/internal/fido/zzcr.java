package com.google.android.gms.internal.fido;

import com.android.dx.util.LabeledList$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzcr {
    public static Object zza(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        LabeledList$$ExternalSyntheticBUOutline0.m232m("at index ", i);
        return null;
    }

    public static Object[] zzb(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            zza(objArr[i2], i2);
        }
        return objArr;
    }
}
