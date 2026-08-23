package j$.time.format;

import j$.time.AbstractC2130d;
import j$.time.temporal.C2192t;
import j$.time.temporal.InterfaceC2188p;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.time.format.f */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2138f extends C2140h {

    /* JADX INFO: renamed from: g */
    public final boolean f584g;

    public C2138f(InterfaceC2188p interfaceC2188p) {
        this(interfaceC2188p, 0, 9, true, 0);
        Objects.requireNonNull(interfaceC2188p, "field");
        C2192t c2192tMo716I = interfaceC2188p.mo716I();
        if (c2192tMo716I.f704a != c2192tMo716I.f705b || c2192tMo716I.f706c != c2192tMo716I.f707d) {
            throw new IllegalArgumentException(AbstractC2130d.m629a("Field must have a fixed set of values: ", interfaceC2188p));
        }
    }

    @Override // j$.time.format.C2140h, j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: B */
    public final int mo636B(C2150r c2150r, CharSequence charSequence, int i) {
        boolean z = c2150r.f624c;
        DateTimeFormatter dateTimeFormatter = c2150r.f622a;
        int i2 = (z || mo638a(c2150r)) ? this.f587b : 0;
        int i3 = (c2150r.f624c || mo638a(c2150r)) ? this.f588c : 9;
        int length = charSequence.length();
        if (i != length) {
            if (this.f584g) {
                char cCharAt = charSequence.charAt(i);
                dateTimeFormatter.f566c.getClass();
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
                dateTimeFormatter.f566c.getClass();
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
            C2192t c2192tMo716I = this.f586a.mo716I();
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(c2192tMo716I.f704a);
            return c2150r.m670f(this.f586a, bigDecimalMovePointLeft.multiply(BigDecimal.valueOf(c2192tMo716I.f707d).subtract(bigDecimalValueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(bigDecimalValueOf).longValueExact(), i4, i7);
        }
        if (i2 > 0) {
            return ~i;
        }
        return i;
    }

    @Override // j$.time.format.C2140h
    /* JADX INFO: renamed from: a */
    public final boolean mo638a(C2150r c2150r) {
        return c2150r.f624c && this.f587b == this.f588c && !this.f584g;
    }

    @Override // j$.time.format.C2140h
    /* JADX INFO: renamed from: b */
    public final C2140h mo639b() {
        if (this.f590e == -1) {
            return this;
        }
        return new C2138f(this.f586a, this.f587b, this.f588c, this.f584g, -1);
    }

    @Override // j$.time.format.C2140h
    /* JADX INFO: renamed from: c */
    public final C2140h mo640c(int i) {
        return new C2138f(this.f586a, this.f587b, this.f588c, this.f584g, this.f590e + i);
    }

    @Override // j$.time.format.C2140h, j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: t */
    public final boolean mo637t(C2152t c2152t, StringBuilder sb) {
        InterfaceC2188p interfaceC2188p = this.f586a;
        Long lM672a = c2152t.m672a(interfaceC2188p);
        if (lM672a == null) {
            return false;
        }
        C2156x c2156x = c2152t.f631b.f566c;
        long jLongValue = lM672a.longValue();
        C2192t c2192tMo716I = interfaceC2188p.mo716I();
        c2192tMo716I.m729b(jLongValue, interfaceC2188p);
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(c2192tMo716I.f704a);
        BigDecimal bigDecimalAdd = BigDecimal.valueOf(c2192tMo716I.f707d).subtract(bigDecimalValueOf).add(BigDecimal.ONE);
        BigDecimal bigDecimalSubtract = BigDecimal.valueOf(jLongValue).subtract(bigDecimalValueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal bigDecimalDivide = bigDecimalSubtract.divide(bigDecimalAdd, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (bigDecimalDivide.compareTo(bigDecimal) != 0) {
            bigDecimal = bigDecimalDivide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimalDivide.stripTrailingZeros();
        }
        int iScale = bigDecimal.scale();
        boolean z = this.f584g;
        int i = this.f587b;
        if (iScale != 0) {
            String strSubstring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), i), this.f588c), roundingMode).toPlainString().substring(2);
            c2156x.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(strSubstring);
            return true;
        }
        if (i > 0) {
            if (z) {
                c2156x.getClass();
                sb.append('.');
            }
            for (int i2 = 0; i2 < i; i2++) {
                c2156x.getClass();
                sb.append('0');
            }
        }
        return true;
    }

    @Override // j$.time.format.C2140h
    public final String toString() {
        return "Fraction(" + this.f586a + "," + this.f587b + "," + this.f588c + (this.f584g ? ",DecimalPoint" : _UrlKt.FRAGMENT_ENCODE_SET) + ")";
    }

    public C2138f(InterfaceC2188p interfaceC2188p, int i, int i2, boolean z, int i3) {
        super(interfaceC2188p, i, i2, a0.NOT_NEGATIVE, i3);
        this.f584g = z;
    }
}
