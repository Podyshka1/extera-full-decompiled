package com.google.android.recaptcha.internal;

import java.lang.reflect.Field;
import java.security.PrivilegedExceptionAction;
import okio.AsyncTimeout$$ExternalSyntheticBUOutline0;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
enum zzrm implements zzrk {
    UNSAFE_LITTLE_ENDIAN,
    UNSAFE_BIG_ENDIAN;

    private static final Unsafe zzc;
    private static final int zzd;

    static {
        Unsafe unsafeZzc;
        try {
            try {
                unsafeZzc = Unsafe.getUnsafe();
            } catch (Exception e) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("Could not initialize intrinsics", e);
                return;
            }
        } catch (SecurityException unused) {
            try {
                unsafeZzc = (Unsafe) Class.forName("java.security.AccessController").getMethod("doPrivileged", PrivilegedExceptionAction.class).invoke(null, zzrl.zza);
            } catch (Exception unused2) {
                unsafeZzc = zzc();
                Unsafe unsafe = unsafeZzc;
            }
        }
        zzc = unsafeZzc;
        zzd = unsafeZzc.arrayBaseOffset(byte[].class);
        if (unsafeZzc.arrayIndexScale(byte[].class) == 1) {
            return;
        }
        AsyncTimeout$$ExternalSyntheticBUOutline0.m962m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unsafe zzc() throws IllegalAccessException {
        for (Field field : Unsafe.class.getDeclaredFields()) {
            field.setAccessible(true);
            Object obj = field.get(null);
            if (Unsafe.class.isInstance(obj)) {
                return (Unsafe) Unsafe.class.cast(obj);
            }
        }
        throw new NoSuchFieldError("the Unsafe");
    }

    @Override // com.google.android.recaptcha.internal.zzrk
    public final /* synthetic */ long zza(byte[] bArr, int i) {
        int iOrdinal = ordinal();
        if (iOrdinal == 0) {
            return zzc.getLong(bArr, ((long) i) + ((long) zzd));
        }
        if (iOrdinal == 1) {
            return Long.reverseBytes(zzc.getLong(bArr, ((long) i) + ((long) zzd)));
        }
        throw null;
    }
}
