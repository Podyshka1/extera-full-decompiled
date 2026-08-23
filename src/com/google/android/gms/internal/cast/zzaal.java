package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzaal {
    public static final int zza(String str, byte[] bArr, int i, int i2) {
        byte[] bytes = str.getBytes(zzym.zza);
        int length = bytes.length;
        if (length - i > i2) {
            throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
        }
        System.arraycopy(bytes, 0, bArr, i, length);
        return i + length;
    }
}
