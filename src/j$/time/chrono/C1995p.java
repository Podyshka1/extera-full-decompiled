package j$.time.chrono;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.AbstractC1970c;
import j$.time.C1969b;
import j$.time.C2034h;
import j$.time.LocalDate;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;
import j$.time.temporal.InterfaceC2065s;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;

/* JADX INFO: renamed from: j$.time.chrono.p */
/* JADX INFO: loaded from: classes2.dex */
public final class C1995p extends AbstractC1983d {
    private static final long serialVersionUID = -5207853542612002020L;

    /* JADX INFO: renamed from: a */
    public final transient C1993n f475a;

    /* JADX INFO: renamed from: b */
    public final transient int f476b;

    /* JADX INFO: renamed from: c */
    public final transient int f477c;

    /* JADX INFO: renamed from: d */
    public final transient int f478d;

    @Override // j$.time.chrono.AbstractC1983d, j$.time.chrono.InterfaceC1981b
    /* JADX INFO: renamed from: y */
    public final ChronoLocalDateTime mo492y(C2034h c2034h) {
        return new C1985f(this, c2034h);
    }

    public C1995p(C1993n c1993n, int i, int i2, int i3) {
        c1993n.m574k(i, i2, i3);
        this.f475a = c1993n;
        this.f476b = i;
        this.f477c = i2;
        this.f478d = i3;
    }

    public C1995p(C1993n c1993n, long j) {
        int i = (int) j;
        c1993n.m572i();
        if (i < c1993n.f467e || i >= c1993n.f468f) {
            throw new C1969b("Hijrah date out of range");
        }
        int iBinarySearch = Arrays.binarySearch(c1993n.f466d, i);
        iBinarySearch = iBinarySearch < 0 ? (-iBinarySearch) - 2 : iBinarySearch;
        int i2 = c1993n.f469g;
        int[] iArr = {(iBinarySearch + i2) / 12, ((i2 + iBinarySearch) % 12) + 1, (i - c1993n.f466d[iBinarySearch]) + 1};
        this.f475a = c1993n;
        this.f476b = iArr[0];
        this.f477c = iArr[1];
        this.f478d = iArr[2];
    }

    @Override // j$.time.chrono.InterfaceC1981b
    /* JADX INFO: renamed from: a */
    public final InterfaceC1990k mo489a() {
        return this.f475a;
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: A */
    public final InterfaceC1991l mo543A() {
        return EnumC1996q.AH;
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return interfaceC2063q.mo645i(this);
        }
        if (!AbstractC1965a.m435r(this, interfaceC2063q)) {
            throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
        EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
        int i = AbstractC1994o.f474a[enumC2047a.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? this.f475a.m576v(enumC2047a) : C2067u.m659e(1L, 5L) : C2067u.m659e(1L, this.f475a.m577w(this.f476b, 12)) : C2067u.m659e(1L, this.f475a.m575n(this.f476b, this.f477c));
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return interfaceC2063q.mo647k(this);
        }
        switch (AbstractC1994o.f474a[((EnumC2047a) interfaceC2063q).ordinal()]) {
            case 1:
                return this.f478d;
            case 2:
                return m578I();
            case 3:
                return ((this.f478d - 1) / 7) + 1;
            case 4:
                return ((int) AbstractC1965a.m413S(mo491x() + 3, 7)) + 1;
            case 5:
                return ((this.f478d - 1) % 7) + 1;
            case 6:
                return ((m578I() - 1) % 7) + 1;
            case 7:
                return mo491x();
            case 8:
                return ((m578I() - 1) / 7) + 1;
            case 9:
                return this.f477c;
            case 10:
                return ((((long) this.f476b) * 12) + ((long) this.f477c)) - 1;
            case 11:
                return this.f476b;
            case 12:
                return this.f476b;
            case 13:
                return this.f476b <= 1 ? 0 : 1;
            default:
                throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public final C1995p mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return (C1995p) super.mo468c(j, interfaceC2063q);
        }
        EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
        this.f475a.m576v(enumC2047a).m662b(j, enumC2047a);
        int i = (int) j;
        switch (AbstractC1994o.f474a[enumC2047a.ordinal()]) {
            case 1:
                return m581L(this.f476b, this.f477c, i);
            case 2:
                return mo545E(Math.min(i, this.f475a.m577w(this.f476b, 12)) - m578I());
            case 3:
                return mo545E((j - mo460w(EnumC2047a.ALIGNED_WEEK_OF_MONTH)) * 7);
            case 4:
                return mo545E(j - ((long) (((int) AbstractC1965a.m413S(mo491x() + 3, 7)) + 1)));
            case 5:
                return mo545E(j - mo460w(EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 6:
                return mo545E(j - mo460w(EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 7:
                return new C1995p(this.f475a, j);
            case 8:
                return mo545E((j - mo460w(EnumC2047a.ALIGNED_WEEK_OF_YEAR)) * 7);
            case 9:
                return m581L(this.f476b, i, this.f478d);
            case 10:
                return mo546F(j - (((((long) this.f476b) * 12) + ((long) this.f477c)) - 1));
            case 11:
                if (this.f476b < 1) {
                    i = 1 - i;
                }
                return m581L(i, this.f477c, this.f478d);
            case 12:
                return m581L(i, this.f477c, this.f478d);
            case 13:
                return m581L(1 - this.f476b, this.f477c, this.f478d);
            default:
                throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
    }

    /* JADX INFO: renamed from: L */
    public final C1995p m581L(int i, int i2, int i3) {
        int iM575n = this.f475a.m575n(i, i2);
        if (i3 > iM575n) {
            i3 = iM575n;
        }
        return new C1995p(this.f475a, i, i2, i3);
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: H */
    public final InterfaceC1981b mo470i(InterfaceC2061o interfaceC2061o) {
        return (C1995p) super.mo470i(interfaceC2061o);
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2059m mo470i(LocalDate localDate) {
        return (C1995p) super.mo470i(localDate);
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.chrono.InterfaceC1981b
    /* JADX INFO: renamed from: x */
    public final long mo491x() {
        return this.f475a.m574k(this.f476b, this.f477c, this.f478d);
    }

    /* JADX INFO: renamed from: I */
    public final int m578I() {
        return this.f475a.m577w(this.f476b, this.f477c - 1) + this.f478d;
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: G */
    public final InterfaceC1981b mo547G(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = ((long) this.f476b) + ((long) ((int) j));
        int i = (int) j2;
        if (j2 == i) {
            return m581L(i, this.f477c, this.f478d);
        }
        throw new ArithmeticException();
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public final C1995p mo546F(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f476b) * 12) + ((long) (this.f477c - 1)) + j;
        C1993n c1993n = this.f475a;
        long jM414T = AbstractC1965a.m414T(j2, 12L);
        int i = c1993n.f469g;
        if (jM414T >= i / 12 && jM414T <= (((c1993n.f466d.length - 1) + i) / 12) - 1) {
            return m581L((int) jM414T, ((int) AbstractC1965a.m413S(j2, 12L)) + 1, this.f478d);
        }
        throw new C1969b("Invalid Hijrah year: " + jM414T);
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public final C1995p mo545E(long j) {
        return new C1995p(this.f475a, mo491x() + j);
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.chrono.InterfaceC1981b, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: d */
    public final InterfaceC1981b mo469d(long j, InterfaceC2065s interfaceC2065s) {
        return (C1995p) super.mo469d(j, interfaceC2065s);
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: d */
    public final InterfaceC2059m mo469d(long j, InterfaceC2065s interfaceC2065s) {
        return (C1995p) super.mo469d(j, interfaceC2065s);
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: D */
    public final InterfaceC1981b mo471r(long j, InterfaceC2065s interfaceC2065s) {
        return (C1995p) super.mo471r(j, interfaceC2065s);
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2059m mo471r(long j, EnumC2048b enumC2048b) {
        return (C1995p) super.mo471r(j, enumC2048b);
    }

    @Override // j$.time.chrono.AbstractC1983d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1995p) {
            C1995p c1995p = (C1995p) obj;
            if (this.f476b == c1995p.f476b && this.f477c == c1995p.f477c && this.f478d == c1995p.f478d && this.f475a.equals(c1995p.f475a)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.chrono.InterfaceC1981b
    public final int hashCode() {
        int i = this.f476b;
        int i2 = this.f477c;
        int i3 = this.f478d;
        this.f475a.getClass();
        return (((i << 11) + (i2 << 6)) + i3) ^ ((i & (-2048)) ^ 2100100019);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C1974D((byte) 6, this);
    }
}
