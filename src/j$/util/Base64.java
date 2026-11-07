package j$.util;

import j$.nio.file.C2148b;
import j$.sun.nio.cs.C2179c;
import java.util.Arrays;
import kotlin.UByte;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public class Base64 {

    /* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
    public static class Decoder {

        /* JADX INFO: renamed from: a */
        public static final int[] f892a;

        /* JADX INFO: renamed from: b */
        public static final int[] f893b;

        /* JADX INFO: renamed from: c */
        public static final Decoder f894c;

        static {
            int[] iArr = new int[256];
            f892a = iArr;
            Arrays.fill(iArr, -1);
            for (int i = 0; i < 64; i++) {
                f892a[Encoder.f895a[i]] = i;
            }
            f892a[61] = -2;
            int[] iArr2 = new int[256];
            f893b = iArr2;
            Arrays.fill(iArr2, -1);
            for (int i2 = 0; i2 < 64; i2++) {
                f893b[Encoder.f896b[i2]] = i2;
            }
            f893b[61] = -2;
            f894c = new Decoder();
        }

        /* JADX WARN: Code restructure failed: missing block: B:46:0x00c5, code lost:
        
            if (r10 != 18) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x010f, code lost:
        
            if (r10 != 6) goto L60;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x0111, code lost:
        
            r6[r11] = (byte) (r12 >> 16);
            r11 = r11 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x011c, code lost:
        
            if (r10 != 0) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x011e, code lost:
        
            r0 = r11 + 1;
            r6[r11] = (byte) (r12 >> 16);
            r11 = r11 + 2;
            r6[r0] = (byte) (r12 >> 8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x012f, code lost:
        
            if (r10 == 12) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0131, code lost:
        
            if (r9 < r7) goto L69;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x0133, code lost:
        
            if (r11 == r1) goto L68;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x0139, code lost:
        
            return java.util.Arrays.copyOf(r6, r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x013a, code lost:
        
            return r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x013b, code lost:
        
            j$.nio.file.C2148b.m616i("Input byte array has incorrect ending byte at ", r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0140, code lost:
        
            return r20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x0141, code lost:
        
            j$.nio.file.C2148b.m608a("Last unit does not have enough valid bits");
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x0146, code lost:
        
            return r20;
         */
        /* JADX WARN: Removed duplicated region for block: B:52:0x00e8  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x00b3 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public byte[] decode(String str) {
            int i;
            int i2;
            byte[] bArr;
            char c2;
            int i3;
            byte[] bytes = str.getBytes(C2179c.f593a);
            int length = bytes.length;
            char c3 = 2;
            if (length == 0) {
                i = 0;
            } else {
                if (length < 2) {
                    C2148b.m608a("Input byte[] should at least have 2 bytes for base64 bytes");
                    return null;
                }
                int i4 = bytes[length + (-1)] == 61 ? bytes[length + (-2)] == 61 ? 2 : 1 : 0;
                if (i4 == 0 && (i2 = length & 3) != 0) {
                    i4 = 4 - i2;
                }
                i = (((length + 3) / 4) * 3) - i4;
            }
            byte[] bArr2 = new byte[i];
            int length2 = bytes.length;
            int i5 = 18;
            int i6 = 18;
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            while (true) {
                if (i7 >= length2) {
                    bArr = null;
                    break;
                }
                int[] iArr = f892a;
                if (i6 == i5) {
                    bArr = null;
                    if (i7 + 4 < length2) {
                        int i10 = ((length2 - i7) & (-4)) + i7;
                        while (true) {
                            if (i7 >= i10) {
                                c2 = c3;
                                break;
                            }
                            int i11 = iArr[bytes[i7] & UByte.MAX_VALUE];
                            c2 = c3;
                            int i12 = iArr[bytes[i7 + 1] & UByte.MAX_VALUE];
                            int i13 = iArr[bytes[i7 + 2] & UByte.MAX_VALUE];
                            int i14 = i7 + 4;
                            int i15 = iArr[bytes[i7 + 3] & UByte.MAX_VALUE];
                            if ((i11 | i12 | i13 | i15) < 0) {
                                break;
                            }
                            int i16 = (i11 << 18) | (i12 << 12) | (i13 << 6) | i15;
                            bArr2[i8] = (byte) (i16 >> 16);
                            int i17 = i8 + 2;
                            bArr2[i8 + 1] = (byte) (i16 >> 8);
                            i8 += 3;
                            bArr2[i17] = (byte) i16;
                            i7 = i14;
                            c3 = c2;
                        }
                        if (i7 < length2) {
                            break;
                            break;
                        }
                        break;
                    }
                    int i18 = i7 + 1;
                    byte b2 = bytes[i7];
                    i3 = iArr[b2 & UByte.MAX_VALUE];
                    if (i3 < 0) {
                        int i19 = (i3 << i6) | i9;
                        i6 -= 6;
                        if (i6 < 0) {
                            bArr2[i8] = (byte) (i19 >> 16);
                            int i20 = i8 + 2;
                            bArr2[i8 + 1] = (byte) (i19 >> 8);
                            i8 += 3;
                            bArr2[i20] = (byte) i19;
                            i6 = 18;
                            i9 = 0;
                        } else {
                            i9 = i19;
                        }
                        i7 = i18;
                        i5 = 18;
                        c3 = c2;
                    } else {
                        if (i3 != -2) {
                            throw new IllegalArgumentException("Illegal base64 character " + Integer.toString(b2, 16));
                        }
                        if (i6 == 6) {
                            if (i18 != length2) {
                                i7 += 2;
                                if (bytes[i18] == 61) {
                                }
                            }
                            C2148b.m608a("Input byte array has wrong 4-byte ending unit");
                            return bArr;
                        }
                        i7 = i18;
                    }
                } else {
                    bArr = null;
                }
                c2 = c3;
                int i182 = i7 + 1;
                byte b22 = bytes[i7];
                i3 = iArr[b22 & UByte.MAX_VALUE];
                if (i3 < 0) {
                }
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
    public static class Encoder {

        /* JADX INFO: renamed from: a */
        public static final char[] f895a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', SignatureVisitor.EXTENDS, '/'};

        /* JADX INFO: renamed from: b */
        public static final char[] f896b = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', SignatureVisitor.SUPER, '_'};

        /* JADX INFO: renamed from: c */
        public static final Encoder f897c = new Encoder();

        public String encodeToString(byte[] bArr) {
            int length = ((bArr.length + 2) / 3) * 4;
            byte[] bArrCopyOf = new byte[length];
            int length2 = bArr.length;
            int i = (length2 / 3) * 3;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                char[] cArr = f895a;
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
        return Decoder.f894c;
    }

    public static Encoder getEncoder() {
        return Encoder.f897c;
    }
}
