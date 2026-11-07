package j$.time.format;

import j$.nio.file.C2148b;
import j$.time.AbstractC2185c;
import j$.time.temporal.C2272s;
import j$.time.temporal.InterfaceC2269p;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.time.format.f */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2220f extends C2222h {

    /* JADX INFO: renamed from: g */
    public final boolean f740g;

    public C2220f(InterfaceC2269p interfaceC2269p) {
        this(interfaceC2269p, 0, 9, true, 0);
        Objects.requireNonNull(interfaceC2269p, "field");
        C2272s c2272sMo830K = interfaceC2269p.mo830K();
        if (c2272sMo830K.f854a == c2272sMo830K.f855b && c2272sMo830K.f856c == c2272sMo830K.f857d) {
            return;
        }
        C2148b.m608a(AbstractC2185c.m719a("Field must have a fixed set of values: ", interfaceC2269p));
        throw null;
    }

    @Override // j$.time.format.C2222h, j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: D */
    public final int mo774D(C2232r c2232r, CharSequence charSequence, int i) {
        boolean z = c2232r.f780c;
        DateTimeFormatter dateTimeFormatter = c2232r.f778a;
        int i2 = (z || mo776a(c2232r)) ? this.f743b : 0;
        int i3 = (c2232r.f780c || mo776a(c2232r)) ? this.f744c : 9;
        int length = charSequence.length();
        if (i != length) {
            if (this.f740g) {
                char cCharAt = charSequence.charAt(i);
                dateTimeFormatter.f722c.getClass();
                if (cCharAt == '.') {
                    i++;
                } else if (i2 > 0) {
                    return ~i;
                }
            }
            int i4 = i;
            int i5 = i2 + i4;
            if (i5 > length) {
                return ~i4;
            }
            int iMin = Math.min(i3 + i4, length);
            int i6 = 0;
            int i7 = i4;
            while (true) {
                if (i7 >= iMin) {
                    break;
                }
                int i8 = i7 + 1;
                char cCharAt2 = charSequence.charAt(i7);
                dateTimeFormatter.f722c.getClass();
                int i9 = cCharAt2 - '0';
                if (i9 < 0 || i9 > 9) {
                    i9 = -1;
                }
                if (i9 >= 0) {
                    i6 = (i6 * 10) + i9;
                    i7 = i8;
                } else if (i8 < i5) {
                    return ~i4;
                }
            }
            BigDecimal bigDecimalMovePointLeft = new BigDecimal(i6).movePointLeft(i7 - i4);
            C2272s c2272sMo830K = this.f742a.mo830K();
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(c2272sMo830K.f854a);
            return c2232r.m808f(this.f742a, bigDecimalMovePointLeft.multiply(BigDecimal.valueOf(c2272sMo830K.f857d).subtract(bigDecimalValueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(bigDecimalValueOf).longValueExact(), i4, i7);
        }
        if (i2 > 0) {
            return ~i;
        }
        return i;
    }

    @Override // j$.time.format.C2222h
    /* JADX INFO: renamed from: a */
    public final boolean mo776a(C2232r c2232r) {
        return c2232r.f780c && this.f743b == this.f744c && !this.f740g;
    }

    @Override // j$.time.format.C2222h
    /* JADX INFO: renamed from: b */
    public final C2222h mo777b() {
        if (this.f746e == -1) {
            return this;
        }
        return new C2220f(this.f742a, this.f743b, this.f744c, this.f740g, -1);
    }

    @Override // j$.time.format.C2222h
    /* JADX INFO: renamed from: c */
    public final C2222h mo778c(int i) {
        return new C2220f(this.f742a, this.f743b, this.f744c, this.f740g, this.f746e + i);
    }

    @Override // j$.time.format.C2222h, j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: s */
    public final boolean mo775s(C2234t c2234t, StringBuilder sb) {
        InterfaceC2269p interfaceC2269p = this.f742a;
        Long lM810a = c2234t.m810a(interfaceC2269p);
        if (lM810a == null) {
            return false;
        }
        C2238x c2238x = c2234t.f787b.f722c;
        long jLongValue = lM810a.longValue();
        C2272s c2272sMo830K = interfaceC2269p.mo830K();
        c2272sMo830K.m838b(jLongValue, interfaceC2269p);
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(c2272sMo830K.f854a);
        BigDecimal bigDecimalAdd = BigDecimal.valueOf(c2272sMo830K.f857d).subtract(bigDecimalValueOf).add(BigDecimal.ONE);
        BigDecimal bigDecimalSubtract = BigDecimal.valueOf(jLongValue).subtract(bigDecimalValueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal bigDecimalDivide = bigDecimalSubtract.divide(bigDecimalAdd, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (bigDecimalDivide.compareTo(bigDecimal) != 0) {
            bigDecimal = bigDecimalDivide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimalDivide.stripTrailingZeros();
        }
        int iScale = bigDecimal.scale();
        boolean z = this.f740g;
        int i = this.f743b;
        if (iScale != 0) {
            String strSubstring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), i), this.f744c), roundingMode).toPlainString().substring(2);
            c2238x.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(strSubstring);
            return true;
        }
        if (i > 0) {
            if (z) {
                c2238x.getClass();
                sb.append('.');
            }
            for (int i2 = 0; i2 < i; i2++) {
                c2238x.getClass();
                sb.append('0');
            }
        }
        return true;
    }

    @Override // j$.time.format.C2222h
    public final String toString() {
        return "Fraction(" + this.f742a + "," + this.f743b + "," + this.f744c + (this.f740g ? ",DecimalPoint" : _UrlKt.FRAGMENT_ENCODE_SET) + ")";
    }

    public C2220f(InterfaceC2269p interfaceC2269p, int i, int i2, boolean z, int i3) {
        super(interfaceC2269p, i, i2, a0.NOT_NEGATIVE, i3);
        this.f740g = z;
    }
}
