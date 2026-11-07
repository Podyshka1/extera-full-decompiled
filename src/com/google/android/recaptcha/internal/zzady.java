package com.google.android.recaptcha.internal;

import java.util.Arrays;
import kotlin.UByte;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public final class zzady {
    private final byte[] zza;

    private zzady(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.zza = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i2);
    }

    public static zzady zza(byte[] bArr) {
        if (bArr != null) {
            return zzb(bArr, 0, bArr.length);
        }
        f$$ExternalSyntheticBUOutline2.m213m("data must be non-null");
        return null;
    }

    public static zzady zzb(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            f$$ExternalSyntheticBUOutline2.m213m("data must be non-null");
            return null;
        }
        int length = bArr.length;
        if (i2 > length) {
            i2 = length;
        }
        return new zzady(bArr, 0, i2);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzady) {
            return Arrays.equals(((zzady) obj).zza, this.zza);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    public final String toString() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b2 : bArr) {
            sb.append("0123456789abcdef".charAt((b2 & UByte.MAX_VALUE) >> 4));
            sb.append("0123456789abcdef".charAt(b2 & 15));
        }
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder(string.length() + 7);
        sb2.append("Bytes(");
        sb2.append(string);
        sb2.append(")");
        return sb2.toString();
    }

    public final byte[] zzc() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public final int zzd() {
        return this.zza.length;
    }
}
