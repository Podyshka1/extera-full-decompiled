package j$.desugar.sun.nio.fs;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.p */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2117p {

    /* JADX INFO: renamed from: a */
    public static final long f480a;

    /* JADX INFO: renamed from: b */
    public static final long f481b;

    /* JADX INFO: renamed from: c */
    public static final char[] f482c;

    static {
        long j = 0;
        for (int iMax = Math.max(Math.min(48, 63), 0); iMax <= Math.max(Math.min(57, 63), 0); iMax++) {
            j |= 1 << iMax;
        }
        long jM579b = m579b('A', 'Z') | m579b('a', 'z');
        long jM581d = m581d("-_.!~*'()");
        long jM580c = jM579b | m580c("-_.!~*'()");
        long jM581d2 = j | jM581d | m581d(":@&=+$,");
        long jM580c2 = jM580c | m580c(":@&=+$,");
        f480a = jM581d2 | m581d(";/");
        f481b = jM580c2 | m580c(";/");
        f482c = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    /* JADX INFO: renamed from: a */
    public static int m578a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return c2 - 'W';
        }
        if (c2 < 'A' || c2 > 'F') {
            throw new AssertionError();
        }
        return c2 - '7';
    }

    /* JADX INFO: renamed from: b */
    public static long m579b(char c2, char c3) {
        long j = 0;
        for (int iMax = Math.max(Math.min((int) c2, 127), 64) - 64; iMax <= Math.max(Math.min((int) c3, 127), 64) - 64; iMax++) {
            j |= 1 << iMax;
        }
        return j;
    }

    /* JADX INFO: renamed from: c */
    public static long m580c(String str) {
        int length = str.length();
        long j = 0;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= '@' && cCharAt < 128) {
                j |= 1 << (cCharAt - '@');
            }
        }
        return j;
    }

    /* JADX INFO: renamed from: d */
    public static long m581d(String str) {
        int length = str.length();
        long j = 0;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt < '@') {
                j |= 1 << cCharAt;
            }
        }
        return j;
    }
}
