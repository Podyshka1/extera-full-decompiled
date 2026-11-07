package j$.time.chrono;

import j$.time.AbstractC2324b;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.C2410r;
import j$.time.temporal.C2411s;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2407o;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class h0 extends AbstractC2329d {
    private static final long serialVersionUID = -8722293800195731463L;

    /* JADX INFO: renamed from: a */
    public final transient LocalDate f678a;

    public h0(LocalDate localDate) {
        Objects.requireNonNull(localDate, "isoDate");
        this.f678a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new d0((byte) 8, this);
    }

    @Override // j$.time.chrono.AbstractC2329d
    /* JADX INFO: renamed from: I */
    public final InterfaceC2327b mo764I(long j) {
        return m791Z(this.f678a.plusDays(j));
    }

    @Override // j$.time.chrono.AbstractC2329d
    /* JADX INFO: renamed from: K */
    public final InterfaceC2327b mo765K(long j) {
        return m791Z(this.f678a.h0(j));
    }

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: L */
    public final ChronoLocalDateTime mo684L(LocalTime localTime) {
        return new C2331f(this, localTime);
    }

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: O */
    public final InterfaceC2337l mo685O() {
        return m789X() >= 1 ? i0.BE : i0.BEFORE_BE;
    }

    @Override // j$.time.chrono.AbstractC2329d
    /* JADX INFO: renamed from: R */
    public final InterfaceC2327b mo766R(long j) {
        return m791Z(this.f678a.j0(j));
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: T */
    public final InterfaceC2327b mo687T(InterfaceC2407o interfaceC2407o) {
        return (h0) super.mo687T(interfaceC2407o);
    }

    /* JADX INFO: renamed from: X */
    public final int m789X() {
        return this.f678a.getYear() + 543;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
    @Override // j$.time.chrono.AbstractC2329d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final h0 mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return (h0) super.mo676a(j, interfaceC2408p);
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        if (mo556k(enumC2393a) == j) {
            return this;
        }
        int[] iArr = g0.f676a;
        int i = iArr[enumC2393a.ordinal()];
        if (i == 4) {
            int iM885a = f0.f670c.mo778B(enumC2393a).m885a(j, enumC2393a);
            int i2 = iArr[enumC2393a.ordinal()];
            if (i2 == 4) {
                LocalDate localDate = this.f678a;
                if (m789X() < 1) {
                    iM885a = 1 - iM885a;
                }
                return m791Z(localDate.n0(iM885a - 543));
            }
            if (i2 == 6) {
                return m791Z(this.f678a.n0(iM885a - 543));
            }
            if (i2 == 7) {
                return m791Z(this.f678a.n0((-542) - m789X()));
            }
        } else {
            if (i == 5) {
                f0.f670c.mo778B(enumC2393a).m886b(j, enumC2393a);
                return m791Z(this.f678a.h0(j - (((((long) m789X()) * 12) + ((long) this.f678a.getMonthValue())) - 1)));
            }
            if (i == 6 || i == 7) {
            }
        }
        return m791Z(this.f678a.mo676a(j, interfaceC2408p));
    }

    /* JADX INFO: renamed from: Z */
    public final h0 m791Z(LocalDate localDate) {
        return localDate.equals(this.f678a) ? this : new h0(localDate);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final InterfaceC2327b mo677b(long j, TemporalUnit temporalUnit) {
        return (h0) super.mo677b(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final InterfaceC2327b mo678c(long j, TemporalUnit temporalUnit) {
        return (h0) super.mo678c(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h0) {
            return this.f678a.equals(((h0) obj).f678a);
        }
        return false;
    }

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: f */
    public final InterfaceC2336k mo692f() {
        return f0.f670c;
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo750j(LocalDate localDate) {
        return (h0) super.mo750j(localDate);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b
    public final int hashCode() {
        f0.f670c.getClass();
        return this.f678a.hashCode() ^ 146118545;
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: j */
    public final InterfaceC2327b mo750j(InterfaceC2405m interfaceC2405m) {
        return (h0) super.mo750j(interfaceC2405m);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p.mo875R(this);
        }
        int i = g0.f676a[((EnumC2393a) interfaceC2408p).ordinal()];
        if (i == 4) {
            int iM789X = m789X();
            if (iM789X < 1) {
                iM789X = 1 - iM789X;
            }
            return iM789X;
        }
        if (i == 5) {
            return ((((long) m789X()) * 12) + ((long) this.f678a.getMonthValue())) - 1;
        }
        if (i == 6) {
            return m789X();
        }
        if (i != 7) {
            return this.f678a.mo556k(interfaceC2408p);
        }
        return m789X() < 1 ? 0 : 1;
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
        int i = g0.f676a[enumC2393a.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return this.f678a.mo667l(interfaceC2408p);
        }
        if (i != 4) {
            return f0.f670c.mo778B(enumC2393a);
        }
        C2411s c2411s = EnumC2393a.YEAR.f832b;
        return C2411s.m883f(1L, m789X() <= 0 ? (-(c2411s.f856a + 543)) + 1 : c2411s.f859d + 543);
    }

    @Override // j$.time.chrono.InterfaceC2327b
    public final long toEpochDay() {
        return this.f678a.toEpochDay();
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final Temporal mo677b(long j, TemporalUnit temporalUnit) {
        return (h0) super.mo677b(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC2329d, j$.time.chrono.InterfaceC2327b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo678c(long j, TemporalUnit temporalUnit) {
        return (h0) super.mo678c(j, temporalUnit);
    }
}
