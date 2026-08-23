package j$.time.format;

import j$.time.C2159g;
import j$.time.temporal.EnumC2173a;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: renamed from: j$.time.format.i */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2141i implements InterfaceC2137e {

    /* JADX INFO: renamed from: d */
    public static final String[] f591d = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS", "+HHmmss", "+HH:mm:ss", "+H", "+Hmm", "+H:mm", "+HMM", "+H:MM", "+HMMss", "+H:MM:ss", "+HMMSS", "+H:MM:SS", "+Hmmss", "+H:mm:ss"};

    /* JADX INFO: renamed from: e */
    public static final C2141i f592e = new C2141i("+HH:MM:ss", "Z");

    /* JADX INFO: renamed from: f */
    public static final C2141i f593f = new C2141i("+HH:MM:ss", MVEL.VERSION_SUB);

    /* JADX INFO: renamed from: a */
    public final String f594a;

    /* JADX INFO: renamed from: b */
    public final int f595b;

    /* JADX INFO: renamed from: c */
    public final int f596c;

    public C2141i(String str, String str2) {
        for (int i = 0; i < 22; i++) {
            if (f591d[i].equals(str)) {
                this.f595b = i;
                this.f596c = i % 11;
                this.f594a = str2;
                return;
            }
        }
        throw new IllegalArgumentException("Invalid zone offset pattern: ".concat(str));
    }

    /* JADX INFO: renamed from: a */
    public static void m641a(boolean z, int i, StringBuilder sb) {
        sb.append(z ? ":" : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append((char) ((i / 10) + 48));
        sb.append((char) ((i % 10) + 48));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0026  */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m642b(CharSequence charSequence, boolean z, int i, int[] iArr) {
        int i2;
        int i3 = iArr[0];
        if (i3 < 0) {
            return true;
        }
        if (!z || i == 1) {
            i2 = i3 + 2;
            if (i2 <= charSequence.length()) {
                int i4 = i3 + 1;
                char cCharAt = charSequence.charAt(i3);
                char cCharAt2 = charSequence.charAt(i4);
                if (cCharAt >= '0' && cCharAt <= '9' && cCharAt2 >= '0' && cCharAt2 <= '9') {
                    int i5 = (cCharAt2 - '0') + ((cCharAt - '0') * 10);
                    if (i5 >= 0 && i5 <= 59) {
                        iArr[i] = i5;
                        iArr[0] = i2;
                        return true;
                    }
                }
            }
        } else {
            int i6 = i3 + 1;
            if (i6 <= charSequence.length() && charSequence.charAt(i3) == ':') {
                i3 = i6;
                i2 = i3 + 2;
                if (i2 <= charSequence.length()) {
                }
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: c */
    public static void m643c(CharSequence charSequence, boolean z, int[] iArr) {
        if (!z) {
            m645e(charSequence, 1, 2, iArr);
        } else {
            if (m642b(charSequence, false, 1, iArr)) {
                return;
            }
            iArr[0] = ~iArr[0];
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m644d(CharSequence charSequence, boolean z, boolean z2, int[] iArr) {
        if (m642b(charSequence, z, 2, iArr) || !z2) {
            return;
        }
        iArr[0] = ~iArr[0];
    }

    /* JADX INFO: renamed from: e */
    public static void m645e(CharSequence charSequence, int i, int i2, int[] iArr) {
        int i3;
        char cCharAt;
        int i4 = iArr[0];
        char[] cArr = new char[i2];
        int i5 = 0;
        int i6 = 0;
        while (i5 < i2 && (i3 = i4 + 1) <= charSequence.length() && (cCharAt = charSequence.charAt(i4)) >= '0' && cCharAt <= '9') {
            cArr[i5] = cCharAt;
            i6++;
            i5++;
            i4 = i3;
        }
        if (i6 < i) {
            iArr[0] = ~iArr[0];
            return;
        }
        switch (i6) {
            case 1:
                iArr[1] = cArr[0] - '0';
                break;
            case 2:
                iArr[1] = (cArr[1] - '0') + ((cArr[0] - '0') * 10);
                break;
            case 3:
                iArr[1] = cArr[0] - '0';
                iArr[2] = (cArr[2] - '0') + ((cArr[1] - '0') * 10);
                break;
            case 4:
                iArr[1] = (cArr[1] - '0') + ((cArr[0] - '0') * 10);
                iArr[2] = (cArr[3] - '0') + ((cArr[2] - '0') * 10);
                break;
            case 5:
                iArr[1] = cArr[0] - '0';
                iArr[2] = (cArr[2] - '0') + ((cArr[1] - '0') * 10);
                iArr[3] = (cArr[4] - '0') + ((cArr[3] - '0') * 10);
                break;
            case 6:
                iArr[1] = (cArr[1] - '0') + ((cArr[0] - '0') * 10);
                iArr[2] = (cArr[3] - '0') + ((cArr[2] - '0') * 10);
                iArr[3] = (cArr[5] - '0') + ((cArr[4] - '0') * 10);
                break;
        }
        iArr[0] = i4;
    }

    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: B */
    public final int mo636B(C2150r c2150r, CharSequence charSequence, int i) {
        C2150r c2150r2;
        int i2;
        CharSequence charSequence2;
        int i3;
        int i4;
        int i5;
        int i6;
        int length = charSequence.length();
        int length2 = this.f594a.length();
        if (length2 != 0) {
            c2150r2 = c2150r;
            i2 = i;
            if (i2 == length) {
                return ~i2;
            }
            charSequence2 = charSequence;
            if (c2150r2.m671g(charSequence2, i2, this.f594a, 0, length2)) {
                return c2150r2.m670f(EnumC2173a.OFFSET_SECONDS, 0L, i2, i2 + length2);
            }
        } else {
            if (i == length) {
                return c2150r.m670f(EnumC2173a.OFFSET_SECONDS, 0L, i, i);
            }
            c2150r2 = c2150r;
            charSequence2 = charSequence;
            i2 = i;
        }
        char cCharAt = charSequence2.charAt(i2);
        if (cCharAt == '+' || cCharAt == '-') {
            int i7 = cCharAt == '-' ? -1 : 1;
            int i8 = this.f596c;
            boolean z = i8 > 0 && i8 % 2 == 0;
            int i9 = this.f595b;
            boolean z2 = i9 < 11;
            int[] iArr = new int[4];
            iArr[0] = i2 + 1;
            if (!c2150r2.f624c) {
                if (z2) {
                    if (z || (i9 == 0 && length > (i6 = i2 + 3) && charSequence2.charAt(i6) == ':')) {
                        i9 = 10;
                        z = true;
                    } else {
                        i9 = 9;
                    }
                } else if (z || (i9 == 11 && length > (i5 = i2 + 3) && (charSequence2.charAt(i2 + 2) == ':' || charSequence2.charAt(i5) == ':'))) {
                    i9 = 21;
                    z = true;
                } else {
                    i9 = 20;
                }
            }
            switch (i9) {
                case 0:
                case 11:
                    m643c(charSequence2, z2, iArr);
                    break;
                case 1:
                case 2:
                case 13:
                    m643c(charSequence2, z2, iArr);
                    m644d(charSequence2, z, false, iArr);
                    break;
                case 3:
                case 4:
                case 15:
                    m643c(charSequence2, z2, iArr);
                    m644d(charSequence2, z, true, iArr);
                    break;
                case 5:
                case 6:
                case 17:
                    m643c(charSequence2, z2, iArr);
                    m644d(charSequence2, z, true, iArr);
                    m642b(charSequence2, z, 3, iArr);
                    break;
                case 7:
                case 8:
                case 19:
                    m643c(charSequence2, z2, iArr);
                    m644d(charSequence2, z, true, iArr);
                    if (!m642b(charSequence2, z, 3, iArr)) {
                        iArr[0] = ~iArr[0];
                    }
                    break;
                case 9:
                case 10:
                case 21:
                    m643c(charSequence2, z2, iArr);
                    if (m642b(charSequence2, z, 2, iArr)) {
                        m642b(charSequence2, z, 3, iArr);
                    }
                    break;
                case 12:
                    m645e(charSequence2, 1, 4, iArr);
                    break;
                case 14:
                    m645e(charSequence2, 3, 4, iArr);
                    break;
                case 16:
                    m645e(charSequence2, 3, 6, iArr);
                    break;
                case 18:
                    m645e(charSequence2, 5, 6, iArr);
                    break;
                case 20:
                    m645e(charSequence2, 1, 6, iArr);
                    break;
            }
            int i10 = iArr[0];
            if (i10 > 0) {
                int i11 = iArr[1];
                if (i11 <= 23 && (i3 = iArr[2]) <= 59 && (i4 = iArr[3]) <= 59) {
                    return c2150r2.m670f(EnumC2173a.OFFSET_SECONDS, ((long) i7) * ((((long) i3) * 60) + (((long) i11) * 3600) + ((long) i4)), i2, i10);
                }
                C2159g.m684a("Value out of range: Hour[0-23], Minute[0-59], Second[0-59]");
                return 0;
            }
        }
        return length2 == 0 ? c2150r2.m670f(EnumC2173a.OFFSET_SECONDS, 0L, i2, i2) : ~i2;
    }

    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: t */
    public final boolean mo637t(C2152t c2152t, StringBuilder sb) {
        Long lM672a = c2152t.m672a(EnumC2173a.OFFSET_SECONDS);
        boolean z = false;
        if (lM672a == null) {
            return false;
        }
        int intExact = Math.toIntExact(lM672a.longValue());
        String str = this.f594a;
        if (intExact == 0) {
            sb.append(str);
            return true;
        }
        int iAbs = Math.abs((intExact / 3600) % 100);
        int iAbs2 = Math.abs((intExact / 60) % 60);
        int iAbs3 = Math.abs(intExact % 60);
        int length = sb.length();
        sb.append(intExact < 0 ? "-" : "+");
        if (this.f595b >= 11 && iAbs < 10) {
            sb.append((char) (iAbs + 48));
        } else {
            m641a(false, iAbs, sb);
        }
        int i = this.f596c;
        if ((i >= 3 && i <= 8) || ((i >= 9 && iAbs3 > 0) || (i >= 1 && iAbs2 > 0))) {
            m641a(i > 0 && i % 2 == 0, iAbs2, sb);
            iAbs += iAbs2;
            if (i == 7 || i == 8 || (i >= 5 && iAbs3 > 0)) {
                if (i > 0 && i % 2 == 0) {
                    z = true;
                }
                m641a(z, iAbs3, sb);
                iAbs += iAbs3;
            }
        }
        if (iAbs == 0) {
            sb.setLength(length);
            sb.append(str);
        }
        return true;
    }

    public final String toString() {
        String strReplace = this.f594a.replace("'", "''");
        return "Offset(" + f591d[this.f595b] + ",'" + strReplace + "')";
    }
}
