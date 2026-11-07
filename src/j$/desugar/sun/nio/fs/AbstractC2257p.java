package j$.desugar.sun.nio.fs;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.p */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2257p {

    /* JADX INFO: renamed from: a */
    public static final long f481a;

    /* JADX INFO: renamed from: b */
    public static final long f482b;

    /* JADX INFO: renamed from: c */
    public static final char[] f483c;

    static {
        long j = 0;
        for (int iMax = Math.max(Math.min(48, 63), 0); iMax <= Math.max(Math.min(57, 63), 0); iMax++) {
            j |= 1 << iMax;
        }
        long jM603b = m603b('A', 'Z') | m603b('a', 'z');
        long jM605d = m605d("-_.!~*'()");
        long jM604c = jM603b | m604c("-_.!~*'()");
        long jM605d2 = j | jM605d | m605d(":@&=+$,");
        long jM604c2 = jM604c | m604c(":@&=+$,");
        f481a = jM605d2 | m605d(";/");
        f482b = jM604c2 | m604c(";/");
        f483c = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    /* JADX INFO: renamed from: a */
    public static int m602a(char c2) {
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
    public static long m603b(char c2, char c3) {
        long j = 0;
        for (int iMax = Math.max(Math.min((int) c2, 127), 64) - 64; iMax <= Math.max(Math.min((int) c3, 127), 64) - 64; iMax++) {
            j |= 1 << iMax;
        }
        return j;
    }

    /* JADX INFO: renamed from: c */
    public static long m604c(String str) {
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
    public static long m605d(String str) {
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
