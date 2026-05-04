package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzcr {
    static Object zza(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("at index " + i);
    }

    static Object[] zzb(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            zza(objArr[i2], i2);
        }
        return objArr;
    }
}
