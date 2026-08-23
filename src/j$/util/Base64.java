package j$.util;

import j$.sun.nio.cs.C2098c;
import java.util.Arrays;
import kotlin.UByte;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public class Base64 {

    /* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
    public static class Decoder {

        /* JADX INFO: renamed from: a */
        public static final int[] f751a;

        /* JADX INFO: renamed from: b */
        public static final int[] f752b;

        /* JADX INFO: renamed from: c */
        public static final Decoder f753c;

        static {
            int[] iArr = new int[256];
            f751a = iArr;
            Arrays.fill(iArr, -1);
            for (int i = 0; i < 64; i++) {
                f751a[Encoder.f754a[i]] = i;
            }
            f751a[61] = -2;
            int[] iArr2 = new int[256];
            f752b = iArr2;
            Arrays.fill(iArr2, -1);
            for (int i2 = 0; i2 < 64; i2++) {
                f752b[Encoder.f755b[i2]] = i2;
            }
            f752b[61] = -2;
            f753c = new Decoder();
        }

        /* JADX WARN: Code restructure failed: missing block: B:45:0x00bf, code lost:
        
            if (r9 != 18) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0109, code lost:
        
            if (r9 != 6) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x010b, code lost:
        
            r5[r10] = (byte) (r11 >> 16);
            r10 = r10 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0116, code lost:
        
            if (r9 != 0) goto L60;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x0118, code lost:
        
            r0 = r10 + 1;
            r5[r10] = (byte) (r11 >> 16);
            r10 = r10 + 2;
            r5[r0] = (byte) (r11 >> 8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0129, code lost:
        
            if (r9 == 12) goto L69;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x012b, code lost:
        
            if (r8 < r6) goto L67;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x012d, code lost:
        
            if (r10 == r1) goto L66;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x0133, code lost:
        
            return java.util.Arrays.copyOf(r5, r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x0134, code lost:
        
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x0135, code lost:
        
            j$.time.C2159g.m691h("Input byte array has incorrect ending byte at ", r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x013b, code lost:
        
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0143, code lost:
        
            throw new java.lang.IllegalArgumentException("Last unit does not have enough valid bits");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public byte[] decode(String str) {
            int i;
            int i2;
            char c2;
            byte[] bytes = str.getBytes(C2098c.f457a);
            int length = bytes.length;
            char c3 = 2;
            if (length == 0) {
                i = 0;
            } else {
                if (length < 2) {
                    throw new IllegalArgumentException("Input byte[] should at least have 2 bytes for base64 bytes");
                }
                int i3 = bytes[length + (-1)] == 61 ? bytes[length + (-2)] == 61 ? 2 : 1 : 0;
                if (i3 == 0 && (i2 = length & 3) != 0) {
                    i3 = 4 - i2;
                }
                i = (((length + 3) / 4) * 3) - i3;
            }
            byte[] bArr = new byte[i];
            int length2 = bytes.length;
            int i4 = 18;
            int i5 = 18;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            while (true) {
                if (i6 >= length2) {
                    break;
                }
                int[] iArr = f751a;
                if (i5 == i4 && i6 + 4 < length2) {
                    int i9 = ((length2 - i6) & (-4)) + i6;
                    while (true) {
                        if (i6 >= i9) {
                            c2 = c3;
                            break;
                        }
                        int i10 = iArr[bytes[i6] & UByte.MAX_VALUE];
                        c2 = c3;
                        int i11 = iArr[bytes[i6 + 1] & UByte.MAX_VALUE];
                        int i12 = iArr[bytes[i6 + 2] & UByte.MAX_VALUE];
                        int i13 = i6 + 4;
                        int i14 = iArr[bytes[i6 + 3] & UByte.MAX_VALUE];
                        if ((i10 | i11 | i12 | i14) < 0) {
                            break;
                        }
                        int i15 = (i10 << 18) | (i11 << 12) | (i12 << 6) | i14;
                        bArr[i7] = (byte) (i15 >> 16);
                        int i16 = i7 + 2;
                        bArr[i7 + 1] = (byte) (i15 >> 8);
                        i7 += 3;
                        bArr[i16] = (byte) i15;
                        c3 = c2;
                        i6 = i13;
                    }
                    if (i6 < length2) {
                        break;
                        break;
                    }
                    break;
                }
                c2 = c3;
                int i17 = i6 + 1;
                byte b2 = bytes[i6];
                int i18 = iArr[b2 & UByte.MAX_VALUE];
                if (i18 >= 0) {
                    int i19 = (i18 << i5) | i8;
                    i5 -= 6;
                    if (i5 < 0) {
                        bArr[i7] = (byte) (i19 >> 16);
                        int i20 = i7 + 2;
                        bArr[i7 + 1] = (byte) (i19 >> 8);
                        i7 += 3;
                        bArr[i20] = (byte) i19;
                        i5 = 18;
                        i8 = 0;
                    } else {
                        i8 = i19;
                    }
                    i6 = i17;
                    i4 = 18;
                    c3 = c2;
                } else {
                    if (i18 != -2) {
                        throw new IllegalArgumentException("Illegal base64 character " + Integer.toString(b2, 16));
                    }
                    if (i5 == 6) {
                        if (i17 != length2) {
                            i6 += 2;
                            if (bytes[i17] == 61) {
                            }
                        }
                        throw new IllegalArgumentException("Input byte array has wrong 4-byte ending unit");
                    }
                    i6 = i17;
                }
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
    public static class Encoder {

        /* JADX INFO: renamed from: a */
        public static final char[] f754a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', SignatureVisitor.EXTENDS, '/'};

        /* JADX INFO: renamed from: b */
        public static final char[] f755b = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', SignatureVisitor.SUPER, '_'};

        /* JADX INFO: renamed from: c */
        public static final Encoder f756c = new Encoder();

        public String encodeToString(byte[] bArr) {
            int length = ((bArr.length + 2) / 3) * 4;
            byte[] bArrCopyOf = new byte[length];
            int length2 = bArr.length;
            int i = (length2 / 3) * 3;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                char[] cArr = f754a;
                if (i2 >= i) {
                    if (i2 < length2) {
                        int i4 = i2 + 1;
                        int i5 = bArr[i2] & UByte.MAX_VALUE;
                        int i6 = i3 + 1;
                        bArrCopyOf[i3] = (byte) cArr[i5 >> 2];
                        if (i4 == length2) {
                            bArrCopyOf[i6] = (byte) cArr[(i5 << 4) & 63];
                            int i7 = i3 + 3;
                            bArrCopyOf[i3 + 2] = kotlin.io.encoding.Base64.padSymbol;
                            i3 += 4;
                            bArrCopyOf[i7] = kotlin.io.encoding.Base64.padSymbol;
                        } else {
                            int i8 = bArr[i4] & UByte.MAX_VALUE;
                            bArrCopyOf[i6] = (byte) cArr[((i5 << 4) & 63) | (i8 >> 4)];
                            int i9 = i3 + 3;
                            bArrCopyOf[i3 + 2] = (byte) cArr[(i8 << 2) & 63];
                            i3 += 4;
                            bArrCopyOf[i9] = kotlin.io.encoding.Base64.padSymbol;
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
                    int i13 = ((bArr[i10 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i10] & UByte.MAX_VALUE) << 16);
                    i10 += 3;
                    int i14 = i13 | (bArr[i12] & UByte.MAX_VALUE);
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

    public static Decoder getDecoder() {
        return Decoder.f753c;
    }

    public static Encoder getEncoder() {
        return Encoder.f756c;
    }
}
