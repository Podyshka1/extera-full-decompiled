package j$.time.chrono;

import j$.time.AbstractC2130d;
import j$.time.C2159g;
import j$.time.C2162j;
import j$.time.C2196x;
import j$.time.LocalDate;
import j$.time.temporal.C2191s;
import j$.time.temporal.C2192t;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2187o;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* JADX INFO: renamed from: j$.time.chrono.w */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2126w extends AbstractC2107d {

    /* JADX INFO: renamed from: d */
    public static final LocalDate f548d = LocalDate.of(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;

    /* JADX INFO: renamed from: a */
    public final transient LocalDate f549a;

    /* JADX INFO: renamed from: b */
    public final transient C2127x f550b;

    /* JADX INFO: renamed from: c */
    public final transient int f551c;

    public C2126w(LocalDate localDate) {
        if (localDate.m512Y(f548d)) {
            C2159g.m684a("JapaneseDate before Meiji 6 is not supported");
            throw null;
        }
        C2127x c2127xM626r = C2127x.m626r(localDate);
        this.f550b = c2127xM626r;
        this.f551c = (localDate.getYear() - c2127xM626r.f555b.getYear()) + 1;
        this.f549a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new d0((byte) 4, this);
    }

    @Override // j$.time.chrono.AbstractC2107d
    /* JADX INFO: renamed from: G */
    public final InterfaceC2105b mo580G(long j) {
        return m624Y(this.f549a.plusDays(j));
    }

    @Override // j$.time.chrono.AbstractC2107d
    /* JADX INFO: renamed from: I */
    public final InterfaceC2105b mo581I(long j) {
        return m624Y(this.f549a.g0(j));
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: J */
    public final long mo504J() {
        return this.f549a.mo504J();
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: K */
    public final ChronoLocalDateTime mo505K(C2162j c2162j) {
        return new C2109f(this, c2162j);
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: N */
    public final InterfaceC2115l mo506N() {
        return this.f550b;
    }

    @Override // j$.time.chrono.AbstractC2107d
    /* JADX INFO: renamed from: P */
    public final InterfaceC2105b mo582P(long j) {
        return m624Y(this.f549a.i0(j));
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: R */
    public final InterfaceC2105b mo508R(InterfaceC2187o interfaceC2187o) {
        return (C2126w) super.mo508R(interfaceC2187o);
    }

    /* JADX INFO: renamed from: V */
    public final C2126w m622V(long j, ChronoUnit chronoUnit) {
        return (C2126w) super.mo497b(j, (InterfaceC2190r) chronoUnit);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public final C2126w mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return (C2126w) super.mo496a(j, interfaceC2188p);
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        if (mo486k(enumC2173a) == j) {
            return this;
        }
        int[] iArr = AbstractC2125v.f547a;
        int i = iArr[enumC2173a.ordinal()];
        if (i == 3 || i == 8 || i == 9) {
            C2124u c2124u = C2124u.f546c;
            int iM728a = c2124u.mo604z(enumC2173a).m728a(j, enumC2173a);
            int i2 = iArr[enumC2173a.ordinal()];
            if (i2 == 3) {
                return m624Y(this.f549a.m0(c2124u.mo596D(this.f550b, iM728a)));
            }
            if (i2 == 8) {
                return m624Y(this.f549a.m0(c2124u.mo596D(C2127x.m627t(iM728a), this.f551c)));
            }
            if (i2 == 9) {
                return m624Y(this.f549a.m0(iM728a));
            }
        }
        return m624Y(this.f549a.mo496a(j, interfaceC2188p));
    }

    /* JADX INFO: renamed from: Y */
    public final C2126w m624Y(LocalDate localDate) {
        return localDate.equals(this.f549a) ? this : new C2126w(localDate);
    }

    /* JADX INFO: renamed from: Z */
    public final C2126w m625Z(C2196x c2196x) {
        return (C2126w) super.mo559j(c2196x);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final InterfaceC2105b mo497b(long j, InterfaceC2190r interfaceC2190r) {
        return (C2126w) super.mo497b(j, interfaceC2190r);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final InterfaceC2105b mo498c(long j, InterfaceC2190r interfaceC2190r) {
        return (C2126w) super.mo498c(j, interfaceC2190r);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2126w) {
            return this.f549a.equals(((C2126w) obj).f549a);
        }
        return false;
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: f */
    public final InterfaceC2114k mo514f() {
        return C2124u.f546c;
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo559j(LocalDate localDate) {
        return (C2126w) super.mo559j(localDate);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b
    public final int hashCode() {
        C2124u.f546c.getClass();
        return this.f549a.hashCode() ^ (-688086063);
    }

    @Override // j$.time.chrono.InterfaceC2105b, j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p == EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_MONTH || interfaceC2188p == EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_YEAR || interfaceC2188p == EnumC2173a.ALIGNED_WEEK_OF_MONTH || interfaceC2188p == EnumC2173a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        return interfaceC2188p instanceof EnumC2173a ? ((EnumC2173a) interfaceC2188p).isDateBased() : interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: j */
    public final InterfaceC2105b mo559j(InterfaceC2185m interfaceC2185m) {
        return (C2126w) super.mo559j(interfaceC2185m);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p.mo717P(this);
        }
        switch (AbstractC2125v.f547a[((EnumC2173a) interfaceC2188p).ordinal()]) {
            case 2:
                int i = this.f551c;
                LocalDate localDate = this.f549a;
                return i == 1 ? (localDate.m510V() - this.f550b.f555b.m510V()) + 1 : localDate.m510V();
            case 3:
                return this.f551c;
            case 4:
            case 5:
            case 6:
            case 7:
                throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
            case 8:
                return this.f550b.f554a;
            default:
                return this.f549a.mo486k(interfaceC2188p);
        }
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p.mo715B(this);
        }
        if (!mo485i(interfaceC2188p)) {
            throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        int i = AbstractC2125v.f547a[enumC2173a.ordinal()];
        if (i == 1) {
            return C2192t.m726f(1L, this.f549a.a0());
        }
        if (i != 2) {
            if (i != 3) {
                return C2124u.f546c.mo604z(enumC2173a);
            }
            int year = this.f550b.f555b.getYear();
            return this.f550b.m628s() != null ? C2192t.m726f(1L, (r5.f555b.getYear() - year) + 1) : C2192t.m726f(1L, 999999999 - year);
        }
        C2127x c2127xM628s = this.f550b.m628s();
        int iM510V = (c2127xM628s == null || c2127xM628s.f555b.getYear() != this.f549a.getYear()) ? this.f549a.m513Z() ? 366 : 365 : c2127xM628s.f555b.m510V() - 1;
        if (this.f551c == 1) {
            iM510V -= this.f550b.f555b.m510V() - 1;
        }
        return C2192t.m726f(1L, iM510V);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final Temporal mo497b(long j, InterfaceC2190r interfaceC2190r) {
        return (C2126w) super.mo497b(j, interfaceC2190r);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo498c(long j, InterfaceC2190r interfaceC2190r) {
        return (C2126w) super.mo498c(j, interfaceC2190r);
    }

    public C2126w(C2127x c2127x, int i, LocalDate localDate) {
        if (!localDate.m512Y(f548d)) {
            this.f550b = c2127x;
            this.f551c = i;
            this.f549a = localDate;
            return;
        }
        C2159g.m684a("JapaneseDate before Meiji 6 is not supported");
        throw null;
    }
}
