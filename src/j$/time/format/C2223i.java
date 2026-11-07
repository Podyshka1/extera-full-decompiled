package j$.time.format;

import j$.nio.file.C2148b;
import j$.time.temporal.EnumC2254a;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: renamed from: j$.time.format.i */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2223i implements InterfaceC2219e {

    /* JADX INFO: renamed from: d */
    public static final String[] f747d = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS", "+HHmmss", "+HH:mm:ss", "+H", "+Hmm", "+H:mm", "+HMM", "+H:MM", "+HMMss", "+H:MM:ss", "+HMMSS", "+H:MM:SS", "+Hmmss", "+H:mm:ss"};

    /* JADX INFO: renamed from: e */
    public static final C2223i f748e = new C2223i("+HH:MM:ss", "Z");

    /* JADX INFO: renamed from: f */
    public static final C2223i f749f = new C2223i("+HH:MM:ss", MVEL.VERSION_SUB);

    /* JADX INFO: renamed from: a */
    public final String f750a;

    /* JADX INFO: renamed from: b */
    public final int f751b;

    /* JADX INFO: renamed from: c */
    public final int f752c;

    public C2223i(String str, String str2) {
        for (int i = 0; i < 22; i++) {
            if (f747d[i].equals(str)) {
                this.f751b = i;
                this.f752c = i % 11;
                this.f750a = str2;
                return;
            }
        }
        C2148b.m608a("Invalid zone offset pattern: ".concat(str));
        throw null;
    }

    /* JADX INFO: renamed from: a */
    public static void m779a(boolean z, int i, StringBuilder sb) {
        sb.append(z ? ":" : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append((char) ((i / 10) + 48));
        sb.append((char) ((i % 10) + 48));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0026  */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m780b(CharSequence charSequence, boolean z, int i, int[] iArr) {
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
    public static void m781c(CharSequence charSequence, boolean z, int[] iArr) {
        if (!z) {
            m783e(charSequence, 1, 2, iArr);
        } else {
            if (m780b(charSequence, false, 1, iArr)) {
                return;
            }
            iArr[0] = ~iArr[0];
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m782d(CharSequence charSequence, boolean z, boolean z2, int[] iArr) {
        if (m780b(charSequence, z, 2, iArr) || !z2) {
            return;
        }
        iArr[0] = ~iArr[0];
    }

    /* JADX INFO: renamed from: e */
    public static void m783e(CharSequence charSequence, int i, int i2, int[] iArr) {
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

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: D */
    public final int mo774D(C2232r c2232r, CharSequence charSequence, int i) {
        C2232r c2232r2;
        int i2;
        CharSequence charSequence2;
        int i3;
        int i4;
        int i5;
        int i6;
        int length = charSequence.length();
        int length2 = this.f750a.length();
        if (length2 != 0) {
            c2232r2 = c2232r;
            i2 = i;
            if (i2 == length) {
                return ~i2;
            }
            charSequence2 = charSequence;
            if (c2232r2.m809g(charSequence2, i2, this.f750a, 0, length2)) {
                return c2232r2.m808f(EnumC2254a.OFFSET_SECONDS, 0L, i2, i2 + length2);
            }
        } else {
            if (i == length) {
                return c2232r.m808f(EnumC2254a.OFFSET_SECONDS, 0L, i, i);
            }
            c2232r2 = c2232r;
            charSequence2 = charSequence;
            i2 = i;
        }
        char cCharAt = charSequence2.charAt(i2);
        if (cCharAt == '+' || cCharAt == '-') {
            int i7 = cCharAt == '-' ? -1 : 1;
            int i8 = this.f752c;
            boolean z = i8 > 0 && i8 % 2 == 0;
            int i9 = this.f751b;
            boolean z2 = i9 < 11;
            int[] iArr = new int[4];
            iArr[0] = i2 + 1;
            if (!c2232r2.f780c) {
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
                    m781c(charSequence2, z2, iArr);
                    break;
                case 1:
                case 2:
                case 13:
                    m781c(charSequence2, z2, iArr);
                    m782d(charSequence2, z, false, iArr);
                    break;
                case 3:
                case 4:
                case 15:
                    m781c(charSequence2, z2, iArr);
                    m782d(charSequence2, z, true, iArr);
                    break;
                case 5:
                case 6:
                case 17:
                    m781c(charSequence2, z2, iArr);
                    m782d(charSequence2, z, true, iArr);
                    m780b(charSequence2, z, 3, iArr);
                    break;
                case 7:
                case 8:
                case 19:
                    m781c(charSequence2, z2, iArr);
                    m782d(charSequence2, z, true, iArr);
                    if (!m780b(charSequence2, z, 3, iArr)) {
                        iArr[0] = ~iArr[0];
                    }
                    break;
                case 9:
                case 10:
                case 21:
                    m781c(charSequence2, z2, iArr);
                    if (m780b(charSequence2, z, 2, iArr)) {
                        m780b(charSequence2, z, 3, iArr);
                    }
                    break;
                case 12:
                    m783e(charSequence2, 1, 4, iArr);
                    break;
                case 14:
                    m783e(charSequence2, 3, 4, iArr);
                    break;
                case 16:
                    m783e(charSequence2, 3, 6, iArr);
                    break;
                case 18:
                    m783e(charSequence2, 5, 6, iArr);
                    break;
                case 20:
                    m783e(charSequence2, 1, 6, iArr);
                    break;
            }
            int i10 = iArr[0];
            if (i10 > 0) {
                int i11 = iArr[1];
                if (i11 <= 23 && (i3 = iArr[2]) <= 59 && (i4 = iArr[3]) <= 59) {
                    return c2232r2.m808f(EnumC2254a.OFFSET_SECONDS, ((long) i7) * ((((long) i3) * 60) + (((long) i11) * 3600) + ((long) i4)), i2, i10);
                }
                C2148b.m615h("Value out of range: Hour[0-23], Minute[0-59], Second[0-59]");
                return 0;
            }
        }
        return length2 == 0 ? c2232r2.m808f(EnumC2254a.OFFSET_SECONDS, 0L, i2, i2) : ~i2;
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: s */
    public final boolean mo775s(C2234t c2234t, StringBuilder sb) {
        Long lM810a = c2234t.m810a(EnumC2254a.OFFSET_SECONDS);
        boolean z = false;
        if (lM810a == null) {
            return false;
        }
        int intExact = Math.toIntExact(lM810a.longValue());
        String str = this.f750a;
        if (intExact == 0) {
            sb.append(str);
            return true;
        }
        int iAbs = Math.abs((intExact / 3600) % 100);
        int iAbs2 = Math.abs((intExact / 60) % 60);
        int iAbs3 = Math.abs(intExact % 60);
        int length = sb.length();
        sb.append(intExact < 0 ? "-" : "+");
        if (this.f751b >= 11 && iAbs < 10) {
            sb.append((char) (iAbs + 48));
        } else {
            m779a(false, iAbs, sb);
        }
        int i = this.f752c;
        if ((i >= 3 && i <= 8) || ((i >= 9 && iAbs3 > 0) || (i >= 1 && iAbs2 > 0))) {
            m779a(i > 0 && i % 2 == 0, iAbs2, sb);
            iAbs += iAbs2;
            if (i == 7 || i == 8 || (i >= 5 && iAbs3 > 0)) {
                if (i > 0 && i % 2 == 0) {
                    z = true;
                }
                m779a(z, iAbs3, sb);
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
        String strReplace = this.f750a.replace("'", "''");
        return "Offset(" + f747d[this.f751b] + ",'" + strReplace + "')";
    }
}
