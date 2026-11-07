package j$.sun.nio.cs;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.util.Objects;

/* JADX INFO: renamed from: j$.sun.nio.cs.b */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2178b extends CharsetEncoder {

    /* JADX INFO: renamed from: a */
    public final C2181e f592a;

    public C2178b(C2179c c2179c) {
        super(c2179c, 1.0f, 1.0f);
        C2181e c2181e = new C2181e();
        c2181e.f595a = CoderResult.UNDERFLOW;
        this.f592a = c2181e;
    }

    /* JADX INFO: renamed from: a */
    public static int m637a(char[] cArr, int i, byte[] bArr, int i2, int i3) {
        int i4 = 0;
        if (i3 <= 0) {
            return 0;
        }
        Objects.requireNonNull(cArr);
        Objects.requireNonNull(bArr);
        if (i < 0 || i >= cArr.length) {
            throw new ArrayIndexOutOfBoundsException(i);
        }
        if (i2 < 0 || i2 >= bArr.length) {
            throw new ArrayIndexOutOfBoundsException(i2);
        }
        int i5 = (i + i3) - 1;
        if (i5 < 0 || i5 >= cArr.length) {
            throw new ArrayIndexOutOfBoundsException(i5);
        }
        int i6 = (i2 + i3) - 1;
        if (i6 < 0 || i6 >= bArr.length) {
            throw new ArrayIndexOutOfBoundsException(i6);
        }
        while (i4 < i3) {
            int i7 = i + 1;
            char c2 = cArr[i];
            if (c2 > 255) {
                break;
            }
            bArr[i2] = (byte) c2;
            i4++;
            i = i7;
            i2++;
        }
        return i4;
    }

    @Override // java.nio.charset.CharsetEncoder
    public final boolean canEncode(char c2) {
        return c2 <= 255;
    }

    @Override // java.nio.charset.CharsetEncoder
    public final CoderResult encodeLoop(CharBuffer charBuffer, ByteBuffer byteBuffer) {
        int i = 2;
        if (!charBuffer.hasArray() || !byteBuffer.hasArray()) {
            int iPosition = charBuffer.position();
            while (charBuffer.hasRemaining()) {
                try {
                    char c2 = charBuffer.get();
                    if (c2 > 255) {
                        int iM638a = this.f592a.m638a(c2, charBuffer);
                        C2181e c2181e = this.f592a;
                        if (iM638a < 0) {
                            return c2181e.f595a;
                        }
                        if (!c2181e.f596b) {
                            i = 1;
                        }
                        return CoderResult.unmappableForLength(i);
                    }
                    if (!byteBuffer.hasRemaining()) {
                        return CoderResult.OVERFLOW;
                    }
                    byteBuffer.put((byte) c2);
                    iPosition++;
                } finally {
                }
            }
            return CoderResult.UNDERFLOW;
        }
        char[] cArrArray = charBuffer.array();
        int iArrayOffset = charBuffer.arrayOffset();
        int iPosition2 = charBuffer.position() + iArrayOffset;
        int iLimit = charBuffer.limit() + iArrayOffset;
        if (iPosition2 > iLimit) {
            iPosition2 = iLimit;
        }
        byte[] bArrArray = byteBuffer.array();
        int iArrayOffset2 = byteBuffer.arrayOffset();
        int iPosition3 = byteBuffer.position() + iArrayOffset2;
        int iLimit2 = byteBuffer.limit() + iArrayOffset2;
        if (iPosition3 > iLimit2) {
            iPosition3 = iLimit2;
        }
        int i2 = iLimit2 - iPosition3;
        int i3 = iLimit - iPosition2;
        if (i2 >= i3) {
            i2 = i3;
        }
        try {
            int iM637a = m637a(cArrArray, iPosition2, bArrArray, iPosition3, i2);
            int i4 = iPosition2 + iM637a;
            int i5 = iPosition3 + iM637a;
            if (iM637a == i2) {
                if (i2 < i3) {
                    CoderResult coderResult = CoderResult.OVERFLOW;
                    return coderResult;
                }
                CoderResult coderResult2 = CoderResult.UNDERFLOW;
                return coderResult2;
            }
            int iM639b = this.f592a.m639b(cArrArray[i4], cArrArray, i4, iLimit);
            C2181e c2181e2 = this.f592a;
            if (iM639b < 0) {
                CoderResult coderResult3 = c2181e2.f595a;
                return coderResult3;
            }
            if (!c2181e2.f596b) {
                i = 1;
            }
            CoderResult coderResultUnmappableForLength = CoderResult.unmappableForLength(i);
            return coderResultUnmappableForLength;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.nio.charset.CharsetEncoder
    public final boolean isLegalReplacement(byte[] bArr) {
        return true;
    }
}
