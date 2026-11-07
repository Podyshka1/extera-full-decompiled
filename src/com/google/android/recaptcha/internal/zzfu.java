package com.google.android.recaptcha.internal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public interface zzfu {
    Object zza(Object... objArr);

    default Object zzb(Object[] objArr) {
        int length = objArr.length;
        if (length == 1) {
            if (objArr[0] instanceof zzfv) {
                return Boolean.TRUE;
            }
            length = 1;
        }
        return zza(Arrays.copyOf(objArr, length));
    }
}
