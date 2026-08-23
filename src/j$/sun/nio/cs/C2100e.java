package j$.sun.nio.cs;

import java.nio.CharBuffer;
import java.nio.charset.CoderResult;

/* JADX INFO: renamed from: j$.sun.nio.cs.e */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2100e {

    /* JADX INFO: renamed from: a */
    public CoderResult f459a;

    /* JADX INFO: renamed from: b */
    public boolean f460b;

    /* JADX INFO: renamed from: a */
    public final int m479a(char c2, CharBuffer charBuffer) {
        if (!Character.isHighSurrogate(c2)) {
            if (Character.isLowSurrogate(c2)) {
                this.f459a = CoderResult.malformedForLength(1);
                return -1;
            }
            this.f460b = false;
            this.f459a = null;
            return c2;
        }
        if (!charBuffer.hasRemaining()) {
            this.f459a = CoderResult.UNDERFLOW;
            return -1;
        }
        char c3 = charBuffer.get();
        if (!Character.isLowSurrogate(c3)) {
            this.f459a = CoderResult.malformedForLength(1);
            return -1;
        }
        int codePoint = Character.toCodePoint(c2, c3);
        this.f460b = true;
        this.f459a = null;
        return codePoint;
    }

    /* JADX INFO: renamed from: b */
    public final int m480b(char c2, char[] cArr, int i, int i2) {
        if (!Character.isHighSurrogate(c2)) {
            if (Character.isLowSurrogate(c2)) {
                this.f459a = CoderResult.malformedForLength(1);
                return -1;
            }
            this.f460b = false;
            this.f459a = null;
            return c2;
        }
        if (i2 - i < 2) {
            this.f459a = CoderResult.UNDERFLOW;
            return -1;
        }
        char c3 = cArr[i + 1];
        if (!Character.isLowSurrogate(c3)) {
            this.f459a = CoderResult.malformedForLength(1);
            return -1;
        }
        int codePoint = Character.toCodePoint(c2, c3);
        this.f460b = true;
        this.f459a = null;
        return codePoint;
    }
}
