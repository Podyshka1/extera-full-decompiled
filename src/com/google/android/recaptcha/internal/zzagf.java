package com.google.android.recaptcha.internal;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzagf {
    public static final byte[] zza;
    public static final ByteBuffer zzb;

    static {
        byte[] bArr = new byte[0];
        zza = bArr;
        zzb = ByteBuffer.wrap(bArr);
        zzaev.zzE(bArr, 0, 0, false);
    }

    public static int zza() {
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public static int zzb(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int zzc(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }
}
