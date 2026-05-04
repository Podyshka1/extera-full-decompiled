package com.android.p003dx.util;

/* JADX INFO: loaded from: classes4.dex */
public final class HexParser {
    private HexParser() {
    }

    public static byte[] parse(String str) {
        String strSubstring;
        int iIndexOf;
        int length = str.length();
        int i = length / 2;
        byte[] bArr = new byte[i];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            int iIndexOf2 = str.indexOf(10, i3);
            if (iIndexOf2 < 0) {
                iIndexOf2 = length;
            }
            int iIndexOf3 = str.indexOf(35, i3);
            if (iIndexOf3 >= 0 && iIndexOf3 < iIndexOf2) {
                strSubstring = str.substring(i3, iIndexOf3);
            } else {
                strSubstring = str.substring(i3, iIndexOf2);
            }
            int i5 = iIndexOf2 + 1;
            int iIndexOf4 = strSubstring.indexOf(58);
            if (iIndexOf4 != -1 && ((iIndexOf = strSubstring.indexOf(34)) == -1 || iIndexOf >= iIndexOf4)) {
                String strTrim = strSubstring.substring(i2, iIndexOf4).trim();
                strSubstring = strSubstring.substring(iIndexOf4 + 1);
                if (Integer.parseInt(strTrim, 16) != i4) {
                    throw new RuntimeException("bogus offset marker: " + strTrim);
                }
            }
            int length2 = strSubstring.length();
            int i6 = i2;
            int i7 = i6;
            int i8 = -1;
            while (i6 < length2) {
                char cCharAt = strSubstring.charAt(i6);
                if (i7 != 0) {
                    if (cCharAt == '\"') {
                        i7 = 0;
                    } else {
                        bArr[i4] = (byte) cCharAt;
                        i4++;
                    }
                } else if (cCharAt > ' ') {
                    if (cCharAt != '\"') {
                        int iDigit = Character.digit(cCharAt, 16);
                        if (iDigit == -1) {
                            throw new RuntimeException("bogus digit character: \"" + cCharAt + "\"");
                        }
                        if (i8 == -1) {
                            i8 = iDigit;
                        } else {
                            bArr[i4] = (byte) ((i8 << 4) | iDigit);
                            i4++;
                            i8 = -1;
                        }
                    } else {
                        if (i8 != -1) {
                            throw new RuntimeException("spare digit around offset " + Hex.m214u4(i4));
                        }
                        i7 = 1;
                    }
                }
                i6++;
            }
            if (i8 != -1) {
                throw new RuntimeException("spare digit around offset " + Hex.m214u4(i4));
            }
            if (i7 != 0) {
                throw new RuntimeException("unterminated quote around offset " + Hex.m214u4(i4));
            }
            i3 = i5;
            i2 = 0;
        }
        if (i4 >= i) {
            return bArr;
        }
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, 0, bArr2, 0, i4);
        return bArr2;
    }
}
