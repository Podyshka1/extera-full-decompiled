package com.neovisionaries.ws.client;

import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes5.dex */
abstract class Base64 {
    private static final byte[] INDEX_TABLE = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    public static String encode(String str) {
        if (str == null) {
            return null;
        }
        return encode(Misc.getBytesUTF8(str));
    }

    public static String encode(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = (((((bArr.length * 8) + 5) / 6) + 3) / 4) * 4;
        StringBuilder sb = new StringBuilder(length);
        int i = 0;
        while (true) {
            int iExtractBits = extractBits(bArr, i);
            if (iExtractBits < 0) {
                break;
            }
            sb.append((char) INDEX_TABLE[iExtractBits]);
            i += 6;
        }
        for (int length2 = sb.length(); length2 < length; length2++) {
            sb.append(SignatureVisitor.INSTANCEOF);
        }
        return sb.toString();
    }

    private static int extractBits(byte[] bArr, int i) {
        int i2 = i / 8;
        if (bArr.length <= i2) {
            return -1;
        }
        byte b2 = bArr.length - 1 == i2 ? (byte) 0 : bArr[i2 + 1];
        int i3 = (i % 24) / 6;
        if (i3 == 0) {
            return (bArr[i2] >> 2) & 63;
        }
        if (i3 == 1) {
            return ((bArr[i2] << 4) & 48) | ((b2 >> 4) & 15);
        }
        if (i3 == 2) {
            return ((bArr[i2] << 2) & 60) | ((b2 >> 6) & 3);
        }
        if (i3 != 3) {
            return 0;
        }
        return bArr[i2] & 63;
    }
}
