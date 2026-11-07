package j$.time.chrono;

import j$.nio.file.C2288b;
import j$.time.AbstractC2324b;
import j$.time.C2352d;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.C2410r;
import j$.time.temporal.C2411s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2407o;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* JADX INFO: renamed from: j$.time.chrono.w */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2348w extends AbstractC2329d {

    /* JADX INFO: renamed from: d */
    public static final LocalDate f706d = LocalDate.of(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;

    /* JADX INFO: renamed from: a */
    public final transient LocalDate f707a;

    /* JADX INFO: renamed from: b */
    public final transient C2349x f708b;

    /* JADX INFO: renamed from: c */
    public final transient int f709c;

    public C2348w(LocalDate localDate) {
        if (localDate.m691Z(f706d)) {
            C2288b.m639h("JapaneseDate before Meiji 6 is not supported");
            throw null;
        }
        C2349x c2349xM807p = C2349x.m807p(localDate);
        this.f708b = c2349xM807p;
        this.f709c = (localDate.getYear() - c2349xM807p.f713b.getYear()) + 1;
        this.f707a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new d0((byte) 4, this);
    }

    @Override // j$.time.chrono.AbstractC2329d
    /* JADX INFO: renamed from: I */
    public final InterfaceC2327b mo764I(long j) {
        return a0(this.f707a.plusDays(j));
    }

    @Override // j$.time.chrono.AbstractC2329d
    /* JADX INFO: renamed from: K */
    public final InterfaceC2327b mo765K(long j) {
        return a0(this.f707a.h0(j));
    }

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: L */
    public final ChronoLocalDateTime mo684L(LocalTime localTime) {
        return new C2331f(this, localTime);
    }

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: O */
    public final InterfaceC2337l mo685O() {
        return this.f708b;
    }

    @Override // j$.time.chrono.AbstractC2329d
    /* JADX INFO: renamed from: R */
    public final InterfaceC2327b mo766R(long j) {
        return a0(this.f707a.j0(j));
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: T */
    public final InterfaceC2327b mo687T(InterfaceC2407o interfaceC2407o) {
        return (C2348w) super.mo687T(interfaceC2407o);
    }

    /* JADX INFO: renamed from: X */
    public final C2348w m804X(long j, ChronoUnit chronoUnit) {
        return (C2348w) super.mo677b(j, (TemporalUnit) chronoUnit);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final C2348w mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return (C2348w) super.mo676a(j, interfaceC2408p);
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        if (mo556k(enumC2393a) == j) {
            return this;
        }
        int[] iArr = AbstractC2347v.f705a;
        int i = iArr[enumC2393a.ordinal()];
        if (i == 3 || i == 8 || i == 9) {
            C2346u c2346u = C2346u.f704c;
            int iM885a = c2346u.mo778B(enumC2393a).m885a(j, enumC2393a);
            int i2 = iArr[enumC2393a.ordinal()];
            if (i2 == 3) {
                return a0(this.f707a.n0(c2346u.mo781F(this.f708b, iM885a)));
            }
            if (i2 == 8) {
                return a0(this.f707a.n0(c2346u.mo781F(C2349x.m808r(iM885a), this.f709c)));
            }
            if (i2 == 9) {
                return a0(this.f707a.n0(iM885a));
            }
        }
        return a0(this.f707a.mo676a(j, interfaceC2408p));
    }

    /* JADX INFO: renamed from: Z */
    public final C2348w m806Z(C2352d c2352d) {
        return (C2348w) super.mo750j(c2352d);
    }

    public final C2348w a0(LocalDate localDate) {
        return localDate.equals(this.f707a) ? this : new C2348w(localDate);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final InterfaceC2327b mo677b(long j, TemporalUnit temporalUnit) {
        return (C2348w) super.mo677b(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final InterfaceC2327b mo678c(long j, TemporalUnit temporalUnit) {
        return (C2348w) super.mo678c(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2348w) {
            return this.f707a.equals(((C2348w) obj).f707a);
        }
        return false;
    }

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: f */
    public final InterfaceC2336k mo692f() {
        return C2346u.f704c;
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo750j(LocalDate localDate) {
        return (C2348w) super.mo750j(localDate);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b
    public final int hashCode() {
        C2346u.f704c.getClass();
        return this.f707a.hashCode() ^ (-688086063);
    }

    @Override // j$.time.chrono.InterfaceC2327b, j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        if (interfaceC2408p == EnumC2393a.ALIGNED_DAY_OF_WEEK_IN_MONTH || interfaceC2408p == EnumC2393a.ALIGNED_DAY_OF_WEEK_IN_YEAR || interfaceC2408p == EnumC2393a.ALIGNED_WEEK_OF_MONTH || interfaceC2408p == EnumC2393a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        return interfaceC2408p instanceof EnumC2393a ? ((EnumC2393a) interfaceC2408p).isDateBased() : interfaceC2408p != null && interfaceC2408p.mo879s(this);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: j */
    public final InterfaceC2327b mo750j(InterfaceC2405m interfaceC2405m) {
        return (C2348w) super.mo750j(interfaceC2405m);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p.mo875R(this);
        }
        switch (AbstractC2347v.f705a[((EnumC2393a) interfaceC2408p).ordinal()]) {
            case 2:
                int i = this.f709c;
                LocalDate localDate = this.f707a;
                return i == 1 ? (localDate.m689X() - this.f708b.f713b.m689X()) + 1 : localDate.m689X();
            case 3:
                return this.f709c;
            case 4:
            case 5:
            case 6:
            case 7:
                throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
            case 8:
                return this.f708b.f712a;
            default:
                return this.f707a.mo556k(interfaceC2408p);
        }
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p.mo873D(this);
        }
        if (!mo555i(interfaceC2408p)) {
            throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        int i = AbstractC2347v.f705a[enumC2393a.ordinal()];
        if (i == 1) {
            return C2411s.m883f(1L, this.f707a.b0());
        }
        if (i != 2) {
            if (i != 3) {
                return C2346u.f704c.mo778B(enumC2393a);
            }
            int year = this.f708b.f713b.getYear();
            return this.f708b.m809q() != null ? C2411s.m883f(1L, (r5.f713b.getYear() - year) + 1) : C2411s.m883f(1L, 999999999 - year);
        }
        C2349x c2349xM809q = this.f708b.m809q();
        int iM689X = (c2349xM809q == null || c2349xM809q.f713b.getYear() != this.f707a.getYear()) ? this.f707a.a0() ? 366 : 365 : c2349xM809q.f713b.m689X() - 1;
        if (this.f709c == 1) {
            iM689X -= this.f708b.f713b.m689X() - 1;
        }
        return C2411s.m883f(1L, iM689X);
    }

    @Override // j$.time.chrono.InterfaceC2327b
    public final long toEpochDay() {
        return this.f707a.toEpochDay();
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final Temporal mo677b(long j, TemporalUnit temporalUnit) {
        return (C2348w) super.mo677b(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo678c(long j, TemporalUnit temporalUnit) {
        return (C2348w) super.mo678c(j, temporalUnit);
    }

    public C2348w(C2349x c2349x, int i, LocalDate localDate) {
        if (!localDate.m691Z(f706d)) {
            this.f708b = c2349x;
            this.f709c = i;
            this.f707a = localDate;
            return;
        }
        C2288b.m639h("JapaneseDate before Meiji 6 is not supported");
        throw null;
    }
}
