package j$.sun.nio.cs;

import java.nio.CharBuffer;
import java.nio.charset.CoderResult;

/* JADX INFO: renamed from: j$.sun.nio.cs.e */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2181e {

    /* JADX INFO: renamed from: a */
    public CoderResult f595a;

    /* JADX INFO: renamed from: b */
    public boolean f596b;

    /* JADX INFO: renamed from: a */
    public final int m638a(char c2, CharBuffer charBuffer) {
        if (!Character.isHighSurrogate(c2)) {
            if (Character.isLowSurrogate(c2)) {
                this.f595a = CoderResult.malformedForLength(1);
                return -1;
            }
            this.f596b = false;
            this.f595a = null;
            return c2;
        }
        if (!charBuffer.hasRemaining()) {
            this.f595a = CoderResult.UNDERFLOW;
            return -1;
        }
        char c3 = charBuffer.get();
        if (!Character.isLowSurrogate(c3)) {
            this.f595a = CoderResult.malformedForLength(1);
            return -1;
        }
        int codePoint = Character.toCodePoint(c2, c3);
        this.f596b = true;
        this.f595a = null;
        return codePoint;
    }

    /* JADX INFO: renamed from: b */
    public final int m639b(char c2, char[] cArr, int i, int i2) {
        if (!Character.isHighSurrogate(c2)) {
            if (Character.isLowSurrogate(c2)) {
                this.f595a = CoderResult.malformedForLength(1);
                return -1;
            }
            this.f596b = false;
            this.f595a = null;
            return c2;
        }
        if (i2 - i < 2) {
            this.f595a = CoderResult.UNDERFLOW;
            return -1;
        }
        char c3 = cArr[i + 1];
        if (!Character.isLowSurrogate(c3)) {
            this.f595a = CoderResult.malformedForLength(1);
            return -1;
        }
        int codePoint = Character.toCodePoint(c2, c3);
        this.f596b = true;
        this.f595a = null;
        return codePoint;
    }
}
