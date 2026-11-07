package j$.sun.nio.cs;

import java.nio.CharBuffer;
import java.nio.charset.CoderResult;

/* JADX INFO: renamed from: j$.sun.nio.cs.e */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2321e {

    /* JADX INFO: renamed from: a */
    public CoderResult f596a;

    /* JADX INFO: renamed from: b */
    public boolean f597b;

    /* JADX INFO: renamed from: a */
    public final int m662a(char c2, CharBuffer charBuffer) {
        if (!Character.isHighSurrogate(c2)) {
            if (Character.isLowSurrogate(c2)) {
                this.f596a = CoderResult.malformedForLength(1);
                return -1;
            }
            this.f597b = false;
            this.f596a = null;
            return c2;
        }
        if (!charBuffer.hasRemaining()) {
            this.f596a = CoderResult.UNDERFLOW;
            return -1;
        }
        char c3 = charBuffer.get();
        if (!Character.isLowSurrogate(c3)) {
            this.f596a = CoderResult.malformedForLength(1);
            return -1;
        }
        int codePoint = Character.toCodePoint(c2, c3);
        this.f597b = true;
        this.f596a = null;
        return codePoint;
    }

    /* JADX INFO: renamed from: b */
    public final int m663b(char c2, char[] cArr, int i, int i2) {
        if (!Character.isHighSurrogate(c2)) {
            if (Character.isLowSurrogate(c2)) {
                this.f596a = CoderResult.malformedForLength(1);
                return -1;
            }
            this.f597b = false;
            this.f596a = null;
            return c2;
        }
        if (i2 - i < 2) {
            this.f596a = CoderResult.UNDERFLOW;
            return -1;
        }
        char c3 = cArr[i + 1];
        if (!Character.isLowSurrogate(c3)) {
            this.f596a = CoderResult.malformedForLength(1);
            return -1;
        }
        int codePoint = Character.toCodePoint(c2, c3);
        this.f597b = true;
        this.f596a = null;
        return codePoint;
    }
}
