package com.android.p003dx.util;

import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes4.dex */
public final class Hex {
    private Hex() {
    }

    /* JADX INFO: renamed from: u8 */
    public static String m215u8(long j) {
        char[] cArr = new char[16];
        for (int i = 0; i < 16; i++) {
            cArr[15 - i] = Character.forDigit(((int) j) & 15, 16);
            j >>= 4;
        }
        return new String(cArr);
    }

    /* JADX INFO: renamed from: u4 */
    public static String m214u4(int i) {
        char[] cArr = new char[8];
        for (int i2 = 0; i2 < 8; i2++) {
            cArr[7 - i2] = Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new String(cArr);
    }

    /* JADX INFO: renamed from: u3 */
    public static String m213u3(int i) {
        char[] cArr = new char[6];
        for (int i2 = 0; i2 < 6; i2++) {
            cArr[5 - i2] = Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new String(cArr);
    }

    /* JADX INFO: renamed from: u2 */
    public static String m212u2(int i) {
        char[] cArr = new char[4];
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[3 - i2] = Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new String(cArr);
    }

    public static String u2or4(int i) {
        if (i == ((char) i)) {
            return m212u2(i);
        }
        return m214u4(i);
    }

    /* JADX INFO: renamed from: u1 */
    public static String m211u1(int i) {
        char[] cArr = new char[2];
        for (int i2 = 0; i2 < 2; i2++) {
            cArr[1 - i2] = Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new String(cArr);
    }

    public static String uNibble(int i) {
        return new String(new char[]{Character.forDigit(i & 15, 16)});
    }

    /* JADX INFO: renamed from: s8 */
    public static String m210s8(long j) {
        char[] cArr = new char[17];
        if (j < 0) {
            cArr[0] = SignatureVisitor.SUPER;
            j = -j;
        } else {
            cArr[0] = SignatureVisitor.EXTENDS;
        }
        for (int i = 0; i < 16; i++) {
            cArr[16 - i] = Character.forDigit(((int) j) & 15, 16);
            j >>= 4;
        }
        return new String(cArr);
    }

    /* JADX INFO: renamed from: s4 */
    public static String m209s4(int i) {
        char[] cArr = new char[9];
        if (i < 0) {
            cArr[0] = SignatureVisitor.SUPER;
            i = -i;
        } else {
            cArr[0] = SignatureVisitor.EXTENDS;
        }
        for (int i2 = 0; i2 < 8; i2++) {
            cArr[8 - i2] = Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new String(cArr);
    }

    /* JADX INFO: renamed from: s2 */
    public static String m208s2(int i) {
        char[] cArr = new char[5];
        if (i < 0) {
            cArr[0] = SignatureVisitor.SUPER;
            i = -i;
        } else {
            cArr[0] = SignatureVisitor.EXTENDS;
        }
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[4 - i2] = Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new String(cArr);
    }

    /* JADX INFO: renamed from: s1 */
    public static String m207s1(int i) {
        char[] cArr = new char[3];
        if (i < 0) {
            cArr[0] = SignatureVisitor.SUPER;
            i = -i;
        } else {
            cArr[0] = SignatureVisitor.EXTENDS;
        }
        for (int i2 = 0; i2 < 2; i2++) {
            cArr[2 - i2] = Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new String(cArr);
    }

    public static String dump(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        String strM211u1;
        int i6 = i + i2;
        if ((i | i2 | i6) < 0 || i6 > bArr.length) {
            throw new IndexOutOfBoundsException("arr.length " + bArr.length + "; " + i + "..!" + i6);
        }
        if (i3 < 0) {
            throw new IllegalArgumentException("outOffset < 0");
        }
        if (i2 == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sb = new StringBuilder((i2 * 4) + 6);
        int i7 = 0;
        while (i2 > 0) {
            if (i7 == 0) {
                if (i5 == 2) {
                    strM211u1 = m211u1(i3);
                } else if (i5 == 4) {
                    strM211u1 = m212u2(i3);
                } else if (i5 == 6) {
                    strM211u1 = m213u3(i3);
                } else {
                    strM211u1 = m214u4(i3);
                }
                sb.append(strM211u1);
                sb.append(": ");
            } else if ((i7 & 1) == 0) {
                sb.append(' ');
            }
            sb.append(m211u1(bArr[i]));
            i3++;
            i++;
            i7++;
            if (i7 == i4) {
                sb.append('\n');
                i7 = 0;
            }
            i2--;
        }
        if (i7 != 0) {
            sb.append('\n');
        }
        return sb.toString();
    }
}
