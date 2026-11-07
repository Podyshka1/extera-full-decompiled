package j$.time.format;

import j$.nio.file.C2288b;
import j$.time.AbstractC2324b;
import j$.time.temporal.C2411s;
import j$.time.temporal.InterfaceC2408p;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.time.format.f */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2360f extends C2362h {

    /* JADX INFO: renamed from: g */
    public final boolean f744g;

    public C2360f(InterfaceC2408p interfaceC2408p) {
        this(interfaceC2408p, 0, 9, true, 0);
        Objects.requireNonNull(interfaceC2408p, "field");
        C2411s c2411sMo874K = interfaceC2408p.mo874K();
        if (c2411sMo874K.f856a == c2411sMo874K.f857b && c2411sMo874K.f858c == c2411sMo874K.f859d) {
            return;
        }
        C2288b.m632a(AbstractC2324b.m753a("Field must have a fixed set of values: ", interfaceC2408p));
        throw null;
    }

    @Override // j$.time.format.C2362h, j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: D */
    public final int mo818D(C2372r c2372r, CharSequence charSequence, int i) {
        boolean z = c2372r.f784c;
        DateTimeFormatter dateTimeFormatter = c2372r.f782a;
        int i2 = (z || mo820a(c2372r)) ? this.f747b : 0;
        int i3 = (c2372r.f784c || mo820a(c2372r)) ? this.f748c : 9;
        int length = charSequence.length();
        if (i != length) {
            if (this.f744g) {
                char cCharAt = charSequence.charAt(i);
                dateTimeFormatter.f726c.getClass();
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
                dateTimeFormatter.f726c.getClass();
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
            C2411s c2411sMo874K = this.f746a.mo874K();
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(c2411sMo874K.f856a);
            return c2372r.m852f(this.f746a, bigDecimalMovePointLeft.multiply(BigDecimal.valueOf(c2411sMo874K.f859d).subtract(bigDecimalValueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(bigDecimalValueOf).longValueExact(), i4, i7);
        }
        if (i2 > 0) {
            return ~i;
        }
        return i;
    }

    @Override // j$.time.format.C2362h
    /* JADX INFO: renamed from: a */
    public final boolean mo820a(C2372r c2372r) {
        return c2372r.f784c && this.f747b == this.f748c && !this.f744g;
    }

    @Override // j$.time.format.C2362h
    /* JADX INFO: renamed from: b */
    public final C2362h mo821b() {
        if (this.f750e == -1) {
            return this;
        }
        return new C2360f(this.f746a, this.f747b, this.f748c, this.f744g, -1);
    }

    @Override // j$.time.format.C2362h
    /* JADX INFO: renamed from: c */
    public final C2362h mo822c(int i) {
        return new C2360f(this.f746a, this.f747b, this.f748c, this.f744g, this.f750e + i);
    }

    @Override // j$.time.format.C2362h, j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: s */
    public final boolean mo819s(C2374t c2374t, StringBuilder sb) {
        InterfaceC2408p interfaceC2408p = this.f746a;
        Long lM854a = c2374t.m854a(interfaceC2408p);
        if (lM854a == null) {
            return false;
        }
        C2378x c2378x = c2374t.f791b.f726c;
        long jLongValue = lM854a.longValue();
        C2411s c2411sMo874K = interfaceC2408p.mo874K();
        c2411sMo874K.m886b(jLongValue, interfaceC2408p);
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(c2411sMo874K.f856a);
        BigDecimal bigDecimalAdd = BigDecimal.valueOf(c2411sMo874K.f859d).subtract(bigDecimalValueOf).add(BigDecimal.ONE);
        BigDecimal bigDecimalSubtract = BigDecimal.valueOf(jLongValue).subtract(bigDecimalValueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal bigDecimalDivide = bigDecimalSubtract.divide(bigDecimalAdd, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (bigDecimalDivide.compareTo(bigDecimal) != 0) {
            bigDecimal = bigDecimalDivide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimalDivide.stripTrailingZeros();
        }
        int iScale = bigDecimal.scale();
        boolean z = this.f744g;
        int i = this.f747b;
        if (iScale != 0) {
            String strSubstring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), i), this.f748c), roundingMode).toPlainString().substring(2);
            c2378x.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(strSubstring);
            return true;
        }
        if (i > 0) {
            if (z) {
                c2378x.getClass();
                sb.append('.');
            }
            for (int i2 = 0; i2 < i; i2++) {
                c2378x.getClass();
                sb.append('0');
            }
        }
        return true;
    }

    @Override // j$.time.format.C2362h
    public final String toString() {
        return "Fraction(" + this.f746a + "," + this.f747b + "," + this.f748c + (this.f744g ? ",DecimalPoint" : _UrlKt.FRAGMENT_ENCODE_SET) + ")";
    }

    public C2360f(InterfaceC2408p interfaceC2408p, int i, int i2, boolean z, int i3) {
        super(interfaceC2408p, i, i2, a0.NOT_NEGATIVE, i3);
        this.f744g = z;
    }
}
