package p022j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import p022j$.time.AbstractC2109c;
import p022j$.time.C2108b;
import p022j$.time.C2173h;
import p022j$.time.LocalDate;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.time.temporal.InterfaceC2204s;

/* JADX INFO: renamed from: j$.time.chrono.w */
/* JADX INFO: loaded from: classes2.dex */
public final class C2141w extends AbstractC2122d {

    /* JADX INFO: renamed from: d */
    public static final LocalDate f720d = LocalDate.m596of(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;

    /* JADX INFO: renamed from: a */
    public final transient LocalDate f721a;

    /* JADX INFO: renamed from: b */
    public final transient C2142x f722b;

    /* JADX INFO: renamed from: c */
    public final transient int f723c;

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: y */
    public final ChronoLocalDateTime mo613y(C2173h c2173h) {
        return new C2124f(this, c2173h);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C2141w(LocalDate localDate) {
        boolean z;
        LocalDate localDate2 = f720d;
        if (AbstractC2109c.m665b(localDate2)) {
            localDate.getClass();
            z = localDate.m611v(localDate2) < 0;
        } else if (localDate.mo612x() < localDate2.mo612x()) {
        }
        if (z) {
            throw new C2108b("JapaneseDate before Meiji 6 is not supported");
        }
        C2142x c2142xM711m = C2142x.m711m(localDate);
        this.f722b = c2142xM711m;
        this.f723c = (localDate.getYear() - c2142xM711m.f727b.getYear()) + 1;
        this.f721a = localDate;
    }

    @Override // p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: a */
    public final InterfaceC2129k mo610a() {
        return C2139u.f718c;
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b
    public final int hashCode() {
        C2139u.f718c.getClass();
        return this.f721a.hashCode() ^ (-688086063);
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: A */
    public final InterfaceC2130l mo666A() {
        return this.f722b;
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b, p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q == EnumC2186a.ALIGNED_DAY_OF_WEEK_IN_MONTH || interfaceC2202q == EnumC2186a.ALIGNED_DAY_OF_WEEK_IN_YEAR || interfaceC2202q == EnumC2186a.ALIGNED_WEEK_OF_MONTH || interfaceC2202q == EnumC2186a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        if (interfaceC2202q instanceof EnumC2186a) {
            return ((EnumC2186a) interfaceC2202q).isDateBased();
        }
        return interfaceC2202q != null && interfaceC2202q.mo769h(this);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return interfaceC2202q.mo770i(this);
        }
        if (!mo575e(interfaceC2202q)) {
            throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
        EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
        int i = AbstractC2140v.f719a[enumC2186a.ordinal()];
        if (i == 1) {
            return C2206u.m784e(1L, this.f721a.m603J());
        }
        if (i != 2) {
            if (i != 3) {
                return C2139u.f718c.m707i(enumC2186a);
            }
            int year = this.f722b.f727b.getYear();
            return this.f722b.m713p() != null ? C2206u.m784e(1L, (r0.f727b.getYear() - year) + 1) : C2206u.m784e(1L, 999999999 - year);
        }
        C2142x c2142xM713p = this.f722b.m713p();
        int iM600G = (c2142xM713p == null || c2142xM713p.f727b.getYear() != this.f721a.getYear()) ? this.f721a.m602I() ? 366 : 365 : c2142xM713p.f727b.m600G() - 1;
        if (this.f723c == 1) {
            iM600G -= this.f722b.f727b.m600G() - 1;
        }
        return C2206u.m784e(1L, iM600G);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return interfaceC2202q.mo772k(this);
        }
        switch (AbstractC2140v.f719a[((EnumC2186a) interfaceC2202q).ordinal()]) {
            case 2:
                return this.f723c == 1 ? (this.f721a.m600G() - this.f722b.f727b.m600G()) + 1 : this.f721a.m600G();
            case 3:
                return this.f723c;
            case 4:
            case 5:
            case 6:
            case 7:
                throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
            case 8:
                return this.f722b.f726a;
            default:
                return this.f721a.mo580w(interfaceC2202q);
        }
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public final C2141w mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
            if (mo580w(enumC2186a) == j) {
                return this;
            }
            int[] iArr = AbstractC2140v.f719a;
            int i = iArr[enumC2186a.ordinal()];
            if (i == 3 || i == 8 || i == 9) {
                int iM786a = C2139u.f718c.m707i(enumC2186a).m786a(j, enumC2186a);
                int i2 = iArr[enumC2186a.ordinal()];
                if (i2 == 3) {
                    return m710K(this.f722b, iM786a);
                }
                if (i2 == 8) {
                    return m710K(C2142x.m712s(iM786a), this.f723c);
                }
                if (i2 == 9) {
                    return m709J(this.f721a.m609R(iM786a));
                }
            }
            return m709J(this.f721a.mo588c(j, interfaceC2202q));
        }
        return (C2141w) super.mo588c(j, interfaceC2202q);
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: H */
    public final InterfaceC2120b mo590i(InterfaceC2200o interfaceC2200o) {
        return (C2141w) super.mo590i(interfaceC2200o);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2198m mo590i(LocalDate localDate) {
        return (C2141w) super.mo590i(localDate);
    }

    /* JADX INFO: renamed from: K */
    public final C2141w m710K(C2142x c2142x, int i) {
        C2139u.f718c.getClass();
        if (c2142x == null) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        int year = (c2142x.f727b.getYear() + i) - 1;
        if (i != 1 && (year < -999999999 || year > 999999999 || year < c2142x.f727b.getYear() || c2142x != C2142x.m711m(LocalDate.m596of(year, 1, 1)))) {
            throw new C2108b("Invalid yearOfEra value");
        }
        return m709J(this.f721a.m609R(year));
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: G */
    public final InterfaceC2120b mo670G(long j) {
        return m709J(this.f721a.m606N(j));
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: F */
    public final InterfaceC2120b mo669F(long j) {
        return m709J(this.f721a.m605M(j));
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: E */
    public final InterfaceC2120b mo668E(long j) {
        return m709J(this.f721a.plusDays(j));
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: d */
    public final InterfaceC2120b mo589d(long j, InterfaceC2204s interfaceC2204s) {
        return (C2141w) super.mo589d(j, interfaceC2204s);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: d */
    public final InterfaceC2198m mo589d(long j, InterfaceC2204s interfaceC2204s) {
        return (C2141w) super.mo589d(j, interfaceC2204s);
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: D */
    public final InterfaceC2120b mo591r(long j, InterfaceC2204s interfaceC2204s) {
        return (C2141w) super.mo591r(j, interfaceC2204s);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2198m mo591r(long j, EnumC2187b enumC2187b) {
        return (C2141w) super.mo591r(j, enumC2187b);
    }

    /* JADX INFO: renamed from: J */
    public final C2141w m709J(LocalDate localDate) {
        return localDate.equals(this.f721a) ? this : new C2141w(localDate);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: x */
    public final long mo612x() {
        return this.f721a.mo612x();
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2141w) {
            return this.f721a.equals(((C2141w) obj).f721a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2113D((byte) 4, this);
    }
}
