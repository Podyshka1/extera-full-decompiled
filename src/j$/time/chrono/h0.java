package j$.time.chrono;

import j$.time.AbstractC2130d;
import j$.time.C2162j;
import j$.time.LocalDate;
import j$.time.temporal.C2191s;
import j$.time.temporal.C2192t;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2187o;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class h0 extends AbstractC2107d {
    private static final long serialVersionUID = -8722293800195731463L;

    /* JADX INFO: renamed from: a */
    public final transient LocalDate f520a;

    public h0(LocalDate localDate) {
        Objects.requireNonNull(localDate, "isoDate");
        this.f520a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new d0((byte) 8, this);
    }

    @Override // j$.time.chrono.AbstractC2107d
    /* JADX INFO: renamed from: G */
    public final InterfaceC2105b mo580G(long j) {
        return m607Y(this.f520a.plusDays(j));
    }

    @Override // j$.time.chrono.AbstractC2107d
    /* JADX INFO: renamed from: I */
    public final InterfaceC2105b mo581I(long j) {
        return m607Y(this.f520a.g0(j));
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: J */
    public final long mo504J() {
        return this.f520a.mo504J();
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: K */
    public final ChronoLocalDateTime mo505K(C2162j c2162j) {
        return new C2109f(this, c2162j);
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: N */
    public final InterfaceC2115l mo506N() {
        return m605V() >= 1 ? i0.BE : i0.BEFORE_BE;
    }

    @Override // j$.time.chrono.AbstractC2107d
    /* JADX INFO: renamed from: P */
    public final InterfaceC2105b mo582P(long j) {
        return m607Y(this.f520a.i0(j));
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: R */
    public final InterfaceC2105b mo508R(InterfaceC2187o interfaceC2187o) {
        return (h0) super.mo508R(interfaceC2187o);
    }

    /* JADX INFO: renamed from: V */
    public final int m605V() {
        return this.f520a.getYear() + 543;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    @Override // j$.time.chrono.AbstractC2107d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final h0 mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return (h0) super.mo496a(j, interfaceC2188p);
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        if (mo486k(enumC2173a) == j) {
            return this;
        }
        int[] iArr = g0.f518a;
        int i = iArr[enumC2173a.ordinal()];
        if (i == 4) {
            int iM728a = f0.f512c.mo604z(enumC2173a).m728a(j, enumC2173a);
            int i2 = iArr[enumC2173a.ordinal()];
            if (i2 == 4) {
                LocalDate localDate = this.f520a;
                if (m605V() < 1) {
                    iM728a = 1 - iM728a;
                }
                return m607Y(localDate.m0(iM728a - 543));
            }
            if (i2 == 6) {
                return m607Y(this.f520a.m0(iM728a - 543));
            }
            if (i2 == 7) {
                return m607Y(this.f520a.m0((-542) - m605V()));
            }
        } else {
            if (i == 5) {
                f0.f512c.mo604z(enumC2173a).m729b(j, enumC2173a);
                long jM605V = ((long) m605V()) * 12;
                LocalDate localDate2 = this.f520a;
                return m607Y(localDate2.g0(j - ((jM605V + ((long) localDate2.f472b)) - 1)));
            }
            if (i == 6 || i == 7) {
            }
        }
        return m607Y(this.f520a.mo496a(j, interfaceC2188p));
    }

    /* JADX INFO: renamed from: Y */
    public final h0 m607Y(LocalDate localDate) {
        return localDate.equals(this.f520a) ? this : new h0(localDate);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final InterfaceC2105b mo497b(long j, InterfaceC2190r interfaceC2190r) {
        return (h0) super.mo497b(j, interfaceC2190r);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final InterfaceC2105b mo498c(long j, InterfaceC2190r interfaceC2190r) {
        return (h0) super.mo498c(j, interfaceC2190r);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h0) {
            return this.f520a.equals(((h0) obj).f520a);
        }
        return false;
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: f */
    public final InterfaceC2114k mo514f() {
        return f0.f512c;
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo559j(LocalDate localDate) {
        return (h0) super.mo559j(localDate);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b
    public final int hashCode() {
        f0.f512c.getClass();
        return this.f520a.hashCode() ^ 146118545;
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: j */
    public final InterfaceC2105b mo559j(InterfaceC2185m interfaceC2185m) {
        return (h0) super.mo559j(interfaceC2185m);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p.mo717P(this);
        }
        int i = g0.f518a[((EnumC2173a) interfaceC2188p).ordinal()];
        if (i == 4) {
            int iM605V = m605V();
            if (iM605V < 1) {
                iM605V = 1 - iM605V;
            }
            return iM605V;
        }
        if (i == 5) {
            return ((((long) m605V()) * 12) + ((long) this.f520a.f472b)) - 1;
        }
        if (i == 6) {
            return m605V();
        }
        if (i != 7) {
            return this.f520a.mo486k(interfaceC2188p);
        }
        return m605V() < 1 ? 0 : 1;
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
        int i = g0.f518a[enumC2173a.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return this.f520a.mo487m(interfaceC2188p);
        }
        if (i != 4) {
            return f0.f512c.mo604z(enumC2173a);
        }
        C2192t c2192t = EnumC2173a.YEAR.f681b;
        return C2192t.m726f(1L, m605V() <= 0 ? (-(c2192t.f704a + 543)) + 1 : c2192t.f707d + 543);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final Temporal mo497b(long j, InterfaceC2190r interfaceC2190r) {
        return (h0) super.mo497b(j, interfaceC2190r);
    }

    @Override // j$.time.chrono.AbstractC2107d, j$.time.chrono.InterfaceC2105b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo498c(long j, InterfaceC2190r interfaceC2190r) {
        return (h0) super.mo498c(j, interfaceC2190r);
    }
}
