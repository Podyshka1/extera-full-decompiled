package p022j$.time.format;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import okhttp3.internal.url._UrlKt;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.InterfaceC2202q;

/* JADX INFO: renamed from: j$.time.format.g */
/* JADX INFO: loaded from: classes2.dex */
public final class C2154g extends C2156i {

    /* JADX INFO: renamed from: g */
    public final boolean f749g;

    public C2154g(InterfaceC2202q interfaceC2202q, int i, int i2, boolean z, int i3) {
        super(interfaceC2202q, i, i2, EnumC2171x.NOT_NEGATIVE, i3);
        this.f749g = z;
    }

    @Override // p022j$.time.format.C2156i
    /* JADX INFO: renamed from: a */
    public final C2156i mo720a() {
        if (this.f755e == -1) {
            return this;
        }
        return new C2154g(this.f751a, this.f752b, this.f753c, this.f749g, -1);
    }

    @Override // p022j$.time.format.C2156i
    /* JADX INFO: renamed from: b */
    public final C2156i mo721b(int i) {
        return new C2154g(this.f751a, this.f752b, this.f753c, this.f749g, this.f755e + i);
    }

    @Override // p022j$.time.format.C2156i, p022j$.time.format.InterfaceC2153f
    /* JADX INFO: renamed from: h */
    public final boolean mo719h(C2165r c2165r, StringBuilder sb) {
        InterfaceC2202q interfaceC2202q = this.f751a;
        Long lM735a = c2165r.m735a(interfaceC2202q);
        if (lM735a == null) {
            return false;
        }
        C2169v c2169v = c2165r.f782b.f739c;
        long jLongValue = lM735a.longValue();
        C2206u c2206uMo771j = interfaceC2202q.mo771j();
        c2206uMo771j.m787b(jLongValue, interfaceC2202q);
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(c2206uMo771j.f852a);
        BigDecimal bigDecimalAdd = BigDecimal.valueOf(c2206uMo771j.f855d).subtract(bigDecimalValueOf).add(BigDecimal.ONE);
        BigDecimal bigDecimalSubtract = BigDecimal.valueOf(jLongValue).subtract(bigDecimalValueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal bigDecimalDivide = bigDecimalSubtract.divide(bigDecimalAdd, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (bigDecimalDivide.compareTo(bigDecimal) != 0) {
            bigDecimal = bigDecimalDivide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimalDivide.stripTrailingZeros();
        }
        int iScale = bigDecimal.scale();
        boolean z = this.f749g;
        int i = this.f752b;
        if (iScale != 0) {
            String strSubstring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), i), this.f753c), roundingMode).toPlainString().substring(2);
            c2169v.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(strSubstring);
            return true;
        }
        if (i > 0) {
            if (z) {
                c2169v.getClass();
                sb.append('.');
            }
            for (int i2 = 0; i2 < i; i2++) {
                c2169v.getClass();
                sb.append('0');
            }
        }
        return true;
    }

    @Override // p022j$.time.format.C2156i
    public final String toString() {
        return "Fraction(" + this.f751a + "," + this.f752b + "," + this.f753c + (this.f749g ? ",DecimalPoint" : _UrlKt.FRAGMENT_ENCODE_SET) + ")";
    }
}
