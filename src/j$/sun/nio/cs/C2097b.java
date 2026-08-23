package j$.sun.nio.cs;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.util.Objects;

/* JADX INFO: renamed from: j$.sun.nio.cs.b */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2097b extends CharsetEncoder {

    /* JADX INFO: renamed from: a */
    public final C2100e f456a;

    public C2097b(C2098c c2098c) {
        super(c2098c, 1.0f, 1.0f);
        C2100e c2100e = new C2100e();
        c2100e.f459a = CoderResult.UNDERFLOW;
        this.f456a = c2100e;
    }

    /* JADX INFO: renamed from: a */
    public static int m478a(char[] cArr, int i, byte[] bArr, int i2, int i3) {
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
                        int iM479a = this.f456a.m479a(c2, charBuffer);
                        C2100e c2100e = this.f456a;
                        if (iM479a < 0) {
                            return c2100e.f459a;
                        }
                        if (!c2100e.f460b) {
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
            int iM478a = m478a(cArrArray, iPosition2, bArrArray, iPosition3, i2);
            int i4 = iPosition2 + iM478a;
            int i5 = iPosition3 + iM478a;
            if (iM478a == i2) {
                if (i2 < i3) {
                    CoderResult coderResult = CoderResult.OVERFLOW;
                    return coderResult;
                }
                CoderResult coderResult2 = CoderResult.UNDERFLOW;
                return coderResult2;
            }
            int iM480b = this.f456a.m480b(cArrArray[i4], cArrArray, i4, iLimit);
            C2100e c2100e2 = this.f456a;
            if (iM480b < 0) {
                CoderResult coderResult3 = c2100e2.f459a;
                return coderResult3;
            }
            if (!c2100e2.f460b) {
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
