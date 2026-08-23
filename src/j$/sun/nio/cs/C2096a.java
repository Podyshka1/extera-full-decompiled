package j$.sun.nio.cs;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import kotlin.UByte;

/* JADX INFO: renamed from: j$.sun.nio.cs.a */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2096a extends CharsetDecoder {
    public C2096a(C2098c c2098c) {
        super(c2098c, 1.0f, 1.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.nio.CharBuffer] */
    /* JADX WARN: Type inference failed for: r8v7, types: [java.nio.ByteBuffer] */
    @Override // java.nio.charset.CharsetDecoder
    public final CoderResult decodeLoop(ByteBuffer byteBuffer, CharBuffer charBuffer) throws Throwable {
        CoderResult coderResult;
        CoderResult coderResult2;
        if (!byteBuffer.hasArray() || !charBuffer.hasArray()) {
            int iPosition = byteBuffer.position();
            while (true) {
                try {
                    if (!byteBuffer.hasRemaining()) {
                        coderResult = CoderResult.UNDERFLOW;
                        break;
                    }
                    byte b2 = byteBuffer.get();
                    if (!charBuffer.hasRemaining()) {
                        coderResult = CoderResult.OVERFLOW;
                        break;
                    }
                    charBuffer.put((char) (b2 & UByte.MAX_VALUE));
                    iPosition++;
                } finally {
                }
            }
            return coderResult;
        }
        byte[] bArrArray = byteBuffer.array();
        int iPosition2 = byteBuffer.position() + byteBuffer.arrayOffset();
        int iLimit = byteBuffer.limit() + byteBuffer.arrayOffset();
        if (iPosition2 > iLimit) {
            iPosition2 = iLimit;
        }
        char[] cArrArray = charBuffer.array();
        int iPosition3 = charBuffer.position() + charBuffer.arrayOffset();
        int iLimit2 = charBuffer.limit() + charBuffer.arrayOffset();
        if (iPosition3 > iLimit2) {
            iPosition3 = iLimit2;
        }
        while (true) {
            if (iPosition2 >= iLimit) {
                coderResult2 = CoderResult.UNDERFLOW;
                break;
            }
            try {
                byte b3 = bArrArray[iPosition2];
                if (iPosition3 >= iLimit2) {
                    coderResult2 = CoderResult.OVERFLOW;
                    break;
                }
                int i = iPosition3 + 1;
                try {
                    cArrArray[iPosition3] = (char) (b3 & UByte.MAX_VALUE);
                    iPosition2++;
                    iPosition3 = i;
                } catch (Throwable th) {
                    th = th;
                    iPosition3 = i;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        iPosition2 -= byteBuffer.arrayOffset();
        iPosition3 -= charBuffer.arrayOffset();
        byteBuffer = (CharBuffer) charBuffer.position(iPosition3);
        return coderResult2;
    }
}
