package j$.time.chrono;

import j$.time.AbstractC2185c;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.C2271r;
import j$.time.temporal.C2272s;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2268o;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class b0 extends AbstractC2189d {
    private static final long serialVersionUID = 1300372329181994526L;

    /* JADX INFO: renamed from: a */
    public final transient LocalDate f659a;

    public b0(LocalDate localDate) {
        Objects.requireNonNull(localDate, "isoDate");
        this.f659a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new d0((byte) 7, this);
    }

    @Override // j$.time.chrono.AbstractC2189d
    /* JADX INFO: renamed from: I */
    public final InterfaceC2187b mo731I(long j) {
        return b0(this.f659a.plusDays(j));
    }

    @Override // j$.time.chrono.AbstractC2189d
    /* JADX INFO: renamed from: K */
    public final InterfaceC2187b mo732K(long j) {
        return b0(this.f659a.j0(j));
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: L */
    public final long mo660L() {
        return this.f659a.mo660L();
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: M */
    public final ChronoLocalDateTime mo661M(LocalTime localTime) {
        return new C2191f(this, localTime);
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: P */
    public final InterfaceC2197l mo662P() {
        return m734Y() >= 1 ? c0.ROC : c0.BEFORE_ROC;
    }

    @Override // j$.time.chrono.AbstractC2189d
    /* JADX INFO: renamed from: S */
    public final InterfaceC2187b mo733S(long j) {
        return b0(this.f659a.l0(j));
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: U */
    public final InterfaceC2187b mo664U(InterfaceC2268o interfaceC2268o) {
        return (b0) super.mo664U(interfaceC2268o);
    }

    /* JADX INFO: renamed from: Y */
    public final int m734Y() {
        return this.f659a.getYear() - 1911;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
    @Override // j$.time.chrono.AbstractC2189d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final b0 mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return (b0) super.mo652a(j, interfaceC2269p);
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        if (mo532k(enumC2254a) == j) {
            return this;
        }
        int[] iArr = a0.f658a;
        int i = iArr[enumC2254a.ordinal()];
        if (i == 4) {
            int iM837a = C2211z.f714c.mo743B(enumC2254a).m837a(j, enumC2254a);
            int i2 = iArr[enumC2254a.ordinal()];
            if (i2 == 4) {
                return b0(this.f659a.p0(m734Y() >= 1 ? iM837a + 1911 : 1912 - iM837a));
            }
            if (i2 == 6) {
                return b0(this.f659a.p0(iM837a + 1911));
            }
            if (i2 == 7) {
                return b0(this.f659a.p0(1912 - m734Y()));
            }
        } else {
            if (i == 5) {
                C2211z.f714c.mo743B(enumC2254a).m838b(j, enumC2254a);
                return b0(this.f659a.j0(j - (((((long) m734Y()) * 12) + ((long) this.f659a.getMonthValue())) - 1)));
            }
            if (i == 6 || i == 7) {
            }
        }
        return b0(this.f659a.mo652a(j, interfaceC2269p));
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final InterfaceC2187b mo653b(long j, TemporalUnit temporalUnit) {
        return (b0) super.mo653b(j, temporalUnit);
    }

    public final b0 b0(LocalDate localDate) {
        return localDate.equals(this.f659a) ? this : new b0(localDate);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final InterfaceC2187b mo654c(long j, TemporalUnit temporalUnit) {
        return (b0) super.mo654c(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b0) {
            return this.f659a.equals(((b0) obj).f659a);
        }
        return false;
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: f */
    public final InterfaceC2196k mo667f() {
        return C2211z.f714c;
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo677j(LocalDate localDate) {
        return (b0) super.mo716j(localDate);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b
    public final int hashCode() {
        C2211z.f714c.getClass();
        return this.f659a.hashCode() ^ (-1990173233);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: j */
    public final InterfaceC2187b mo716j(InterfaceC2266m interfaceC2266m) {
        return (b0) super.mo716j(interfaceC2266m);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p.mo831S(this);
        }
        int i = a0.f658a[((EnumC2254a) interfaceC2269p).ordinal()];
        if (i == 4) {
            int iM734Y = m734Y();
            if (iM734Y < 1) {
                iM734Y = 1 - iM734Y;
            }
            return iM734Y;
        }
        if (i == 5) {
            return ((((long) m734Y()) * 12) + ((long) this.f659a.getMonthValue())) - 1;
        }
        if (i == 6) {
            return m734Y();
        }
        if (i != 7) {
            return this.f659a.mo532k(interfaceC2269p);
        }
        return m734Y() < 1 ? 0 : 1;
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
        int i = a0.f658a[enumC2254a.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return this.f659a.mo643l(interfaceC2269p);
        }
        if (i != 4) {
            return C2211z.f714c.mo743B(enumC2254a);
        }
        C2272s c2272s = EnumC2254a.YEAR.f830b;
        return C2272s.m835f(1L, m734Y() <= 0 ? (-c2272s.f854a) + 1912 : c2272s.f857d - 1911);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final Temporal mo653b(long j, TemporalUnit temporalUnit) {
        return (b0) super.mo653b(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC2189d, j$.time.chrono.InterfaceC2187b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo654c(long j, TemporalUnit temporalUnit) {
        return (b0) super.mo654c(j, temporalUnit);
    }
}
