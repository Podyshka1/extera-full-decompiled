package p022j$.util;

import java.util.Arrays;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes2.dex */
public class Base64 {
    public static Encoder getEncoder() {
        return Encoder.f895b;
    }

    public static class Encoder {

        /* JADX INFO: renamed from: a */
        public static final char[] f894a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', SignatureVisitor.EXTENDS, '/'};

        /* JADX INFO: renamed from: b */
        public static final Encoder f895b = new Encoder();

        public String encodeToString(byte[] bArr) {
            int length = ((bArr.length + 2) / 3) * 4;
            byte[] bArrCopyOf = new byte[length];
            int length2 = bArr.length;
            int i = (length2 / 3) * 3;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                char[] cArr = f894a;
                if (i2 >= i) {
                    if (i2 < length2) {
                        int i4 = i2 + 1;
                        int i5 = bArr[i2] & 255;
                        int i6 = i3 + 1;
                        bArrCopyOf[i3] = (byte) cArr[i5 >> 2];
                        if (i4 == length2) {
                            bArrCopyOf[i6] = (byte) cArr[(i5 << 4) & 63];
                            int i7 = i3 + 3;
                            bArrCopyOf[i3 + 2] = 61;
                            i3 += 4;
                            bArrCopyOf[i7] = 61;
                        } else {
                            int i8 = bArr[i4] & 255;
                            bArrCopyOf[i6] = (byte) cArr[((i5 << 4) & 63) | (i8 >> 4)];
                            int i9 = i3 + 3;
                            bArrCopyOf[i3 + 2] = (byte) cArr[(i8 << 2) & 63];
                            i3 += 4;
                            bArrCopyOf[i9] = 61;
                        }
                    }
                    if (i3 != length) {
                        bArrCopyOf = Arrays.copyOf(bArrCopyOf, i3);
                    }
                    return new String(bArrCopyOf, 0, 0, bArrCopyOf.length);
                }
                int iMin = Math.min(i2 + i, i);
                int i10 = i2;
                int i11 = i3;
                while (i10 < iMin) {
                    int i12 = i10 + 2;
                    int i13 = ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10] & 255) << 16);
                    i10 += 3;
                    int i14 = i13 | (bArr[i12] & 255);
                    bArrCopyOf[i11] = (byte) cArr[(i14 >>> 18) & 63];
                    bArrCopyOf[i11 + 1] = (byte) cArr[(i14 >>> 12) & 63];
                    int i15 = i11 + 3;
                    bArrCopyOf[i11 + 2] = (byte) cArr[(i14 >>> 6) & 63];
                    i11 += 4;
                    bArrCopyOf[i15] = (byte) cArr[i14 & 63];
                }
                int i16 = ((iMin - i2) / 3) * 4;
                i3 += i16;
                if (i16 == -1 && iMin < length2) {
                    throw null;
                }
                i2 = iMin;
            }
        }
    }
}
