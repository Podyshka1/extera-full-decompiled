package j$.time.format;

import j$.time.temporal.C2067u;
import j$.time.temporal.InterfaceC2063q;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.time.format.g */
/* JADX INFO: loaded from: classes2.dex */
public final class C2015g extends C2017i {

    /* JADX INFO: renamed from: g */
    public final boolean f514g;

    public C2015g(InterfaceC2063q interfaceC2063q, int i, int i2, boolean z, int i3) {
        super(interfaceC2063q, i, i2, EnumC2032x.NOT_NEGATIVE, i3);
        this.f514g = z;
    }

    @Override // j$.time.format.C2017i
    /* JADX INFO: renamed from: a */
    public final C2017i mo597a() {
        if (this.f520e == -1) {
            return this;
        }
        return new C2015g(this.f516a, this.f517b, this.f518c, this.f514g, -1);
    }

    @Override // j$.time.format.C2017i
    /* JADX INFO: renamed from: b */
    public final C2017i mo598b(int i) {
        return new C2015g(this.f516a, this.f517b, this.f518c, this.f514g, this.f520e + i);
    }

    @Override // j$.time.format.C2017i, j$.time.format.InterfaceC2014f
    /* JADX INFO: renamed from: h */
    public final boolean mo596h(C2026r c2026r, StringBuilder sb) {
        InterfaceC2063q interfaceC2063q = this.f516a;
        Long lM612a = c2026r.m612a(interfaceC2063q);
        if (lM612a == null) {
            return false;
        }
        C2030v c2030v = c2026r.f547b.f504c;
        long jLongValue = lM612a.longValue();
        C2067u c2067uMo646j = interfaceC2063q.mo646j();
        c2067uMo646j.m662b(jLongValue, interfaceC2063q);
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(c2067uMo646j.f617a);
        BigDecimal bigDecimalAdd = BigDecimal.valueOf(c2067uMo646j.f620d).subtract(bigDecimalValueOf).add(BigDecimal.ONE);
        BigDecimal bigDecimalSubtract = BigDecimal.valueOf(jLongValue).subtract(bigDecimalValueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal bigDecimalDivide = bigDecimalSubtract.divide(bigDecimalAdd, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (bigDecimalDivide.compareTo(bigDecimal) != 0) {
            bigDecimal = bigDecimalDivide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimalDivide.stripTrailingZeros();
        }
        int iScale = bigDecimal.scale();
        boolean z = this.f514g;
        int i = this.f517b;
        if (iScale != 0) {
            String strSubstring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), i), this.f518c), roundingMode).toPlainString().substring(2);
            c2030v.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(strSubstring);
            return true;
        }
        if (i > 0) {
            if (z) {
                c2030v.getClass();
                sb.append('.');
            }
            for (int i2 = 0; i2 < i; i2++) {
                c2030v.getClass();
                sb.append('0');
            }
        }
        return true;
    }

    @Override // j$.time.format.C2017i
    public final String toString() {
        return "Fraction(" + this.f516a + "," + this.f517b + "," + this.f518c + (this.f514g ? ",DecimalPoint" : _UrlKt.FRAGMENT_ENCODE_SET) + ")";
    }
}
