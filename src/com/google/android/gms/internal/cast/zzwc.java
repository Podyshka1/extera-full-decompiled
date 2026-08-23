package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.cast.zzwb;
import java.lang.reflect.Field;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class zzwc implements PrivilegedExceptionAction {
    static final /* synthetic */ zzwc zza = new zzwc();

    private /* synthetic */ zzwc() {
    }

    @Override // java.security.PrivilegedExceptionAction
    public final /* synthetic */ Object run() throws IllegalAccessException {
        Unsafe unsafe = zzwb.zzd.zza;
        for (Field field : Unsafe.class.getDeclaredFields()) {
            field.setAccessible(true);
            Object obj = field.get(null);
            if (Unsafe.class.isInstance(obj)) {
                return (Unsafe) Unsafe.class.cast(obj);
            }
        }
        throw new NoSuchFieldError("the Unsafe");
    }
}
