package p022j$.time.format;

import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import p022j$.time.temporal.EnumC2186a;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.time.format.j */
/* JADX INFO: loaded from: classes2.dex */
public final class C2157j implements InterfaceC2153f {

    /* JADX INFO: renamed from: d */
    public static final String[] f756d = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS", "+HHmmss", "+HH:mm:ss", "+H", "+Hmm", "+H:mm", "+HMM", "+H:MM", "+HMMss", "+H:MM:ss", "+HMMSS", "+H:MM:SS", "+Hmmss", "+H:mm:ss"};

    /* JADX INFO: renamed from: e */
    public static final C2157j f757e = new C2157j("+HH:MM:ss", "Z");

    /* JADX INFO: renamed from: a */
    public final String f758a;

    /* JADX INFO: renamed from: b */
    public final int f759b;

    /* JADX INFO: renamed from: c */
    public final int f760c;

    static {
        new C2157j("+HH:MM:ss", MVEL.VERSION_SUB);
    }

    public C2157j(String str, String str2) {
        Objects.requireNonNull(str, "pattern");
        Objects.requireNonNull(str2, "noOffsetText");
        for (int i = 0; i < 22; i++) {
            if (f756d[i].equals(str)) {
                this.f759b = i;
                this.f760c = i % 11;
                this.f758a = str2;
                return;
            }
        }
        throw new IllegalArgumentException("Invalid zone offset pattern: ".concat(str));
    }

    @Override // p022j$.time.format.InterfaceC2153f
    /* JADX INFO: renamed from: h */
    public final boolean mo719h(C2165r c2165r, StringBuilder sb) {
        Long lM735a = c2165r.m735a(EnumC2186a.OFFSET_SECONDS);
        boolean z = false;
        if (lM735a == null) {
            return false;
        }
        long jLongValue = lM735a.longValue();
        int i = (int) jLongValue;
        if (jLongValue != i) {
            throw new ArithmeticException();
        }
        String str = this.f758a;
        if (i == 0) {
            sb.append(str);
            return true;
        }
        int iAbs = Math.abs((i / 3600) % 100);
        int iAbs2 = Math.abs((i / 60) % 60);
        int iAbs3 = Math.abs(i % 60);
        int length = sb.length();
        sb.append(i < 0 ? "-" : "+");
        if (this.f759b >= 11 && iAbs < 10) {
            sb.append((char) (iAbs + 48));
        } else {
            m722a(false, iAbs, sb);
        }
        int i2 = this.f760c;
        if ((i2 >= 3 && i2 <= 8) || ((i2 >= 9 && iAbs3 > 0) || (i2 >= 1 && iAbs2 > 0))) {
            m722a(i2 > 0 && i2 % 2 == 0, iAbs2, sb);
            iAbs += iAbs2;
            if (i2 == 7 || i2 == 8 || (i2 >= 5 && iAbs3 > 0)) {
                if (i2 > 0 && i2 % 2 == 0) {
                    z = true;
                }
                m722a(z, iAbs3, sb);
                iAbs += iAbs3;
            }
        }
        if (iAbs == 0) {
            sb.setLength(length);
            sb.append(str);
        }
        return true;
    }

    /* JADX INFO: renamed from: a */
    public static void m722a(boolean z, int i, StringBuilder sb) {
        sb.append(z ? ":" : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append((char) ((i / 10) + 48));
        sb.append((char) ((i % 10) + 48));
    }

    public final String toString() {
        String strReplace = this.f758a.replace("'", "''");
        return "Offset(" + f756d[this.f759b] + ",'" + strReplace + "')";
    }
}
