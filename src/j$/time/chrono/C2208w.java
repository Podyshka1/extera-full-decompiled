package j$.time.chrono;

import j$.nio.file.C2148b;
import j$.time.AbstractC2185c;
import j$.time.C2213e;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.C2271r;
import j$.time.temporal.C2272s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2268o;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* JADX INFO: renamed from: j$.time.chrono.w */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2208w extends AbstractC2189d {

    /* JADX INFO: renamed from: d */
    public static final LocalDate f704d = LocalDate.of(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;

    /* JADX INFO: renamed from: a */
    public final transient LocalDate f705a;

    /* JADX INFO: renamed from: b */
    public final transient C2209x f706b;

    /* JADX INFO: renamed from: c */
    public final transient int f707c;

    public C2208w(LocalDate localDate) {
        if (localDate.b0(f704d)) {
            C2148b.m615h("JapaneseDate before Meiji 6 is not supported");
            throw null;
        }
        C2209x c2209xM763p = C2209x.m763p(localDate);
        this.f706b = c2209xM763p;
        this.f707c = (localDate.getYear() - c2209xM763p.f711b.getYear()) + 1;
        this.f705a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new d0((byte) 4, this);
    }

    @Override // j$.time.chrono.AbstractC2189d
    /* JADX INFO: renamed from: I */
    public final InterfaceC2187b mo731I(long j) {
        return c0(this.f705a.plusDays(j));
    }

    @Override // j$.time.chrono.AbstractC2189d
    /* JADX INFO: renamed from: K */
    public final InterfaceC2187b mo732K(long j) {
        return c0(this.f705a.j0(j));
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: L */
    public final long mo660L() {
        return this.f705a.mo660L();
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: M */
    public final ChronoLocalDateTime mo661M(LocalTime localTime) {
        return new C2191f(this, localTime);
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: P */
    public final InterfaceC2197l mo662P() {
        return this.f706b;
    }

    @Override // j$.time.chrono.AbstractC2189d
    /* JADX INFO: renamed from: S */
    public final InterfaceC2187b mo733S(long j) {
        return c0(this.f705a.l0(j));
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: U */
    public final InterfaceC2187b mo664U(InterfaceC2268o interfaceC2268o) {
        return (C2208w) super.mo664U(interfaceC2268o);
    }

    /* JADX INFO: renamed from: Y */
    public final C2208w m762Y(long j, ChronoUnit chronoUnit) {
        return (C2208w) super.mo653b(j, (TemporalUnit) chronoUnit);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public final C2208w mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return (C2208w) super.mo652a(j, interfaceC2269p);
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        if (mo532k(enumC2254a) == j) {
            return this;
        }
        int[] iArr = AbstractC2207v.f703a;
        int i = iArr[enumC2254a.ordinal()];
        if (i == 3 || i == 8 || i == 9) {
            C2206u c2206u = C2206u.f702c;
            int iM837a = c2206u.mo743B(enumC2254a).m837a(j, enumC2254a);
            int i2 = iArr[enumC2254a.ordinal()];
            if (i2 == 3) {
                return c0(this.f705a.p0(c2206u.mo746F(this.f706b, iM837a)));
            }
            if (i2 == 8) {
                return c0(this.f705a.p0(c2206u.mo746F(C2209x.m764r(iM837a), this.f707c)));
            }
            if (i2 == 9) {
                return c0(this.f705a.p0(iM837a));
            }
        }
        return c0(this.f705a.mo652a(j, interfaceC2269p));
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final InterfaceC2187b mo653b(long j, TemporalUnit temporalUnit) {
        return (C2208w) super.mo653b(j, temporalUnit);
    }

    public final C2208w b0(C2213e c2213e) {
        return (C2208w) super.mo716j(c2213e);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final InterfaceC2187b mo654c(long j, TemporalUnit temporalUnit) {
        return (C2208w) super.mo654c(j, temporalUnit);
    }

    public final C2208w c0(LocalDate localDate) {
        return localDate.equals(this.f705a) ? this : new C2208w(localDate);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2208w) {
            return this.f705a.equals(((C2208w) obj).f705a);
        }
        return false;
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: f */
    public final InterfaceC2196k mo667f() {
        return C2206u.f702c;
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo716j(LocalDate localDate) {
        return (C2208w) super.mo716j(localDate);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b
    public final int hashCode() {
        C2206u.f702c.getClass();
        return this.f705a.hashCode() ^ (-688086063);
    }

    @Override // j$.time.chrono.InterfaceC2187b, j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p == EnumC2254a.ALIGNED_DAY_OF_WEEK_IN_MONTH || interfaceC2269p == EnumC2254a.ALIGNED_DAY_OF_WEEK_IN_YEAR || interfaceC2269p == EnumC2254a.ALIGNED_WEEK_OF_MONTH || interfaceC2269p == EnumC2254a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        return interfaceC2269p instanceof EnumC2254a ? ((EnumC2254a) interfaceC2269p).isDateBased() : interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: j */
    public final InterfaceC2187b mo716j(InterfaceC2266m interfaceC2266m) {
        return (C2208w) super.mo716j(interfaceC2266m);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p.mo831S(this);
        }
        switch (AbstractC2207v.f703a[((EnumC2254a) interfaceC2269p).ordinal()]) {
            case 2:
                int i = this.f707c;
                LocalDate localDate = this.f705a;
                return i == 1 ? (localDate.m666Y() - this.f706b.f711b.m666Y()) + 1 : localDate.m666Y();
            case 3:
                return this.f707c;
            case 4:
            case 5:
            case 6:
            case 7:
                throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
            case 8:
                return this.f706b.f710a;
            default:
                return this.f705a.mo532k(interfaceC2269p);
        }
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p.mo829D(this);
        }
        if (!mo531i(interfaceC2269p)) {
            throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        int i = AbstractC2207v.f703a[enumC2254a.ordinal()];
        if (i == 1) {
            return C2272s.m835f(1L, this.f705a.d0());
        }
        if (i != 2) {
            if (i != 3) {
                return C2206u.f702c.mo743B(enumC2254a);
            }
            int year = this.f706b.f711b.getYear();
            return this.f706b.m765q() != null ? C2272s.m835f(1L, (r5.f711b.getYear() - year) + 1) : C2272s.m835f(1L, 999999999 - year);
        }
        C2209x c2209xM765q = this.f706b.m765q();
        int iM666Y = (c2209xM765q == null || c2209xM765q.f711b.getYear() != this.f705a.getYear()) ? this.f705a.c0() ? 366 : 365 : c2209xM765q.f711b.m666Y() - 1;
        if (this.f707c == 1) {
            iM666Y -= this.f706b.f711b.m666Y() - 1;
        }
        return C2272s.m835f(1L, iM666Y);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final Temporal mo653b(long j, TemporalUnit temporalUnit) {
        return (C2208w) super.mo653b(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo654c(long j, TemporalUnit temporalUnit) {
        return (C2208w) super.mo654c(j, temporalUnit);
    }

    public C2208w(C2209x c2209x, int i, LocalDate localDate) {
        if (!localDate.b0(f704d)) {
            this.f706b = c2209x;
            this.f707c = i;
            this.f705a = localDate;
            return;
        }
        C2148b.m615h("JapaneseDate before Meiji 6 is not supported");
        throw null;
    }
}
