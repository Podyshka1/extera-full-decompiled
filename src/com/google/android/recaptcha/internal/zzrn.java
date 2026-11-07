package com.google.android.recaptcha.internal;

import java.nio.ByteOrder;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzrn {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final zzrk zzb;

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0022, code lost:
    
        r0 = com.google.android.recaptcha.internal.zzrj.INSTANCE;
     */
    static {
        zzrk zzrkVar = Objects.equals(System.getProperty("os.arch"), "amd64") ? ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN) ? zzrm.UNSAFE_LITTLE_ENDIAN : zzrm.UNSAFE_BIG_ENDIAN : zzrj.INSTANCE;
        zzb = zzrkVar;
    }

    public static long zza(byte[] bArr, int i) {
        return zzb.zza(bArr, i);
    }
}
