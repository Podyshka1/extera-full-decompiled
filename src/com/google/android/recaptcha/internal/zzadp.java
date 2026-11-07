package com.google.android.recaptcha.internal;

import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzadp {
    public static byte[] zza(String str) {
        byte[] bArr = new byte[19];
        for (int i = 0; i < 19; i++) {
            int i2 = i + i;
            int iDigit = Character.digit(str.charAt(i2), 16);
            int iDigit2 = Character.digit(str.charAt(i2 + 1), 16);
            if (iDigit == -1 || iDigit2 == -1) {
                f$$ExternalSyntheticBUOutline1.m212m("input is not hexadecimal");
                return null;
            }
            bArr[i] = (byte) ((iDigit * 16) + iDigit2);
        }
        return bArr;
    }
}
