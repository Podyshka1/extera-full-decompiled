package j$.time.chrono;

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

/* JADX INFO: renamed from: j$.time.chrono.w */
/* JADX INFO: loaded from: classes2.dex */
public final class C2002w extends AbstractC1983d {

    /* JADX INFO: renamed from: d */
    public static final LocalDate f485d = LocalDate.of(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;

    /* JADX INFO: renamed from: a */
    public final transient LocalDate f486a;

    /* JADX INFO: renamed from: b */
    public final transient C2003x f487b;

    /* JADX INFO: renamed from: c */
    public final transient int f488c;

    @Override // j$.time.chrono.AbstractC1983d, j$.time.chrono.InterfaceC1981b
    /* JADX INFO: renamed from: y */
    public final ChronoLocalDateTime mo492y(C2034h c2034h) {
        return new C1985f(this, c2034h);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C2002w(LocalDate localDate) {
        boolean z;
        LocalDate localDate2 = f485d;
        if (AbstractC1970c.m542b(localDate2)) {
            localDate.getClass();
            z = localDate.m490v(localDate2) < 0;
        } else if (localDate.mo491x() < localDate2.mo491x()) {
        }
        if (z) {
            throw new C1969b("JapaneseDate before Meiji 6 is not supported");
        }
        C2003x c2003xM588m = C2003x.m588m(localDate);
        this.f487b = c2003xM588m;
        this.f488c = (localDate.getYear() - c2003xM588m.f492b.getYear()) + 1;
        this.f486a = localDate;
    }

    @Override // j$.time.chrono.InterfaceC1981b
    /* JADX INFO: renamed from: a */
    public final InterfaceC1990k mo489a() {
        return C2000u.f483c;
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.chrono.InterfaceC1981b
    public final int hashCode() {
        C2000u.f483c.getClass();
        return this.f486a.hashCode() ^ (-688086063);
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: A */
    public final InterfaceC1991l mo543A() {
        return this.f487b;
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.chrono.InterfaceC1981b, j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_MONTH || interfaceC2063q == EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_YEAR || interfaceC2063q == EnumC2047a.ALIGNED_WEEK_OF_MONTH || interfaceC2063q == EnumC2047a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        if (interfaceC2063q instanceof EnumC2047a) {
            return ((EnumC2047a) interfaceC2063q).isDateBased();
        }
        return interfaceC2063q != null && interfaceC2063q.mo644h(this);
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return interfaceC2063q.mo645i(this);
        }
        if (!mo455e(interfaceC2063q)) {
            throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
        EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
        int i = AbstractC2001v.f484a[enumC2047a.ordinal()];
        if (i == 1) {
            return C2067u.m659e(1L, this.f486a.m482J());
        }
        if (i != 2) {
            if (i != 3) {
                return C2000u.f483c.m584i(enumC2047a);
            }
            int year = this.f487b.f492b.getYear();
            return this.f487b.m590p() != null ? C2067u.m659e(1L, (r0.f492b.getYear() - year) + 1) : C2067u.m659e(1L, 999999999 - year);
        }
        C2003x c2003xM590p = this.f487b.m590p();
        int iM479G = (c2003xM590p == null || c2003xM590p.f492b.getYear() != this.f486a.getYear()) ? this.f486a.m481I() ? 366 : 365 : c2003xM590p.f492b.m479G() - 1;
        if (this.f488c == 1) {
            iM479G -= this.f487b.f492b.m479G() - 1;
        }
        return C2067u.m659e(1L, iM479G);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return interfaceC2063q.mo647k(this);
        }
        switch (AbstractC2001v.f484a[((EnumC2047a) interfaceC2063q).ordinal()]) {
            case 2:
                return this.f488c == 1 ? (this.f486a.m479G() - this.f487b.f492b.m479G()) + 1 : this.f486a.m479G();
            case 3:
                return this.f488c;
            case 4:
            case 5:
            case 6:
            case 7:
                throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
            case 8:
                return this.f487b.f491a;
            default:
                return this.f486a.mo460w(interfaceC2063q);
        }
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public final C2002w mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
            if (mo460w(enumC2047a) == j) {
                return this;
            }
            int[] iArr = AbstractC2001v.f484a;
            int i = iArr[enumC2047a.ordinal()];
            if (i == 3 || i == 8 || i == 9) {
                int iM661a = C2000u.f483c.m584i(enumC2047a).m661a(j, enumC2047a);
                int i2 = iArr[enumC2047a.ordinal()];
                if (i2 == 3) {
                    return m587K(this.f487b, iM661a);
                }
                if (i2 == 8) {
                    return m587K(C2003x.m589s(iM661a), this.f488c);
                }
                if (i2 == 9) {
                    return m586J(this.f486a.m488R(iM661a));
                }
            }
            return m586J(this.f486a.mo468c(j, interfaceC2063q));
        }
        return (C2002w) super.mo468c(j, interfaceC2063q);
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: H */
    public final InterfaceC1981b mo470i(InterfaceC2061o interfaceC2061o) {
        return (C2002w) super.mo470i(interfaceC2061o);
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2059m mo470i(LocalDate localDate) {
        return (C2002w) super.mo470i(localDate);
    }

    /* JADX INFO: renamed from: K */
    public final C2002w m587K(C2003x c2003x, int i) {
        C2000u.f483c.getClass();
        if (c2003x == null) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        int year = (c2003x.f492b.getYear() + i) - 1;
        if (i != 1 && (year < -999999999 || year > 999999999 || year < c2003x.f492b.getYear() || c2003x != C2003x.m588m(LocalDate.of(year, 1, 1)))) {
            throw new C1969b("Invalid yearOfEra value");
        }
        return m586J(this.f486a.m488R(year));
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: G */
    public final InterfaceC1981b mo547G(long j) {
        return m586J(this.f486a.m485N(j));
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: F */
    public final InterfaceC1981b mo546F(long j) {
        return m586J(this.f486a.m484M(j));
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: E */
    public final InterfaceC1981b mo545E(long j) {
        return m586J(this.f486a.plusDays(j));
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.chrono.InterfaceC1981b, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: d */
    public final InterfaceC1981b mo469d(long j, InterfaceC2065s interfaceC2065s) {
        return (C2002w) super.mo469d(j, interfaceC2065s);
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: d */
    public final InterfaceC2059m mo469d(long j, InterfaceC2065s interfaceC2065s) {
        return (C2002w) super.mo469d(j, interfaceC2065s);
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: D */
    public final InterfaceC1981b mo471r(long j, InterfaceC2065s interfaceC2065s) {
        return (C2002w) super.mo471r(j, interfaceC2065s);
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2059m mo471r(long j, EnumC2048b enumC2048b) {
        return (C2002w) super.mo471r(j, enumC2048b);
    }

    /* JADX INFO: renamed from: J */
    public final C2002w m586J(LocalDate localDate) {
        return localDate.equals(this.f486a) ? this : new C2002w(localDate);
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.chrono.InterfaceC1981b
    /* JADX INFO: renamed from: x */
    public final long mo491x() {
        return this.f486a.mo491x();
    }

    @Override // j$.time.chrono.AbstractC1983d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2002w) {
            return this.f486a.equals(((C2002w) obj).f486a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C1974D((byte) 4, this);
    }
}
