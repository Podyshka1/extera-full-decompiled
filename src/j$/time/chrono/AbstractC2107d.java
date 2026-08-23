package j$.time.chrono;

import j$.time.AbstractC2130d;
import j$.time.C2159g;
import j$.time.temporal.C2191s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2187o;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.chrono.d */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2107d implements InterfaceC2105b, Temporal, InterfaceC2185m, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    /* JADX INFO: renamed from: t */
    public static InterfaceC2105b m586t(InterfaceC2114k interfaceC2114k, Temporal temporal) {
        InterfaceC2105b interfaceC2105b = (InterfaceC2105b) temporal;
        if (interfaceC2114k.equals(interfaceC2105b.mo514f())) {
            return interfaceC2105b;
        }
        C2159g.m688e("Chronology mismatch, expected: ", interfaceC2114k.getId(), interfaceC2105b.mo514f().getId());
        return null;
    }

    /* JADX INFO: renamed from: B */
    public final long m587B(InterfaceC2105b interfaceC2105b) {
        if (mo514f().mo604z(EnumC2173a.MONTH_OF_YEAR).f707d != 12) {
            throw new IllegalStateException("ChronoLocalDateImpl only supports Chronologies with 12 months per year");
        }
        EnumC2173a enumC2173a = EnumC2173a.PROLEPTIC_MONTH;
        long jMo486k = mo486k(enumC2173a) * 32;
        EnumC2173a enumC2173a2 = EnumC2173a.DAY_OF_MONTH;
        return (((interfaceC2105b.mo486k(enumC2173a) * 32) + ((long) interfaceC2105b.mo484g(enumC2173a2))) - (jMo486k + ((long) mo484g(enumC2173a2)))) / 32;
    }

    /* JADX INFO: renamed from: G */
    public abstract InterfaceC2105b mo580G(long j);

    /* JADX INFO: renamed from: I */
    public abstract InterfaceC2105b mo581I(long j);

    /* JADX INFO: renamed from: P */
    public abstract InterfaceC2105b mo582P(long j);

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: R */
    public InterfaceC2105b mo508R(InterfaceC2187o interfaceC2187o) {
        return m586t(mo514f(), interfaceC2187o.mo490t(this));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public InterfaceC2105b mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p instanceof EnumC2173a) {
            throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
        return m586t(mo514f(), interfaceC2188p.mo718V(this, j));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public InterfaceC2105b mo497b(long j, InterfaceC2190r interfaceC2190r) {
        boolean z = interfaceC2190r instanceof ChronoUnit;
        if (!z) {
            if (!z) {
                return m586t(mo514f(), interfaceC2190r.mo714t(this, j));
            }
            C2159g.m687d("Unsupported unit: ", interfaceC2190r);
            return null;
        }
        switch (AbstractC2106c.f504a[((ChronoUnit) interfaceC2190r).ordinal()]) {
            case 1:
                return mo580G(j);
            case 2:
                return mo580G(Math.multiplyExact(j, 7L));
            case 3:
                return mo581I(j);
            case 4:
                return mo582P(j);
            case 5:
                return mo582P(Math.multiplyExact(j, 10L));
            case 6:
                return mo582P(Math.multiplyExact(j, 100L));
            case 7:
                return mo582P(Math.multiplyExact(j, 1000L));
            case 8:
                EnumC2173a enumC2173a = EnumC2173a.ERA;
                return mo496a(Math.addExact(mo486k(enumC2173a), j), (InterfaceC2188p) enumC2173a);
            default:
                C2159g.m687d("Unsupported unit: ", interfaceC2190r);
                return null;
        }
    }

    @Override // j$.time.chrono.InterfaceC2105b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public /* bridge */ /* synthetic */ Temporal mo498c(long j, InterfaceC2190r interfaceC2190r) {
        return mo498c(j, interfaceC2190r);
    }

    @Override // j$.time.chrono.InterfaceC2105b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC2105b) && compareTo((InterfaceC2105b) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2105b
    public int hashCode() {
        long jMo504J = mo504J();
        return mo514f().hashCode() ^ ((int) (jMo504J ^ (jMo504J >>> 32)));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public InterfaceC2105b mo559j(InterfaceC2185m interfaceC2185m) {
        return m586t(mo514f(), interfaceC2185m.mo483e(this));
    }

    @Override // j$.time.chrono.InterfaceC2105b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: o */
    public final long mo500o(Temporal temporal, InterfaceC2190r interfaceC2190r) {
        Objects.requireNonNull(temporal, "endExclusive");
        InterfaceC2105b interfaceC2105bMo597H = mo514f().mo597H(temporal);
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            Objects.requireNonNull(interfaceC2190r, "unit");
            return interfaceC2190r.between(this, interfaceC2105bMo597H);
        }
        switch (AbstractC2106c.f504a[((ChronoUnit) interfaceC2190r).ordinal()]) {
            case 1:
                return interfaceC2105bMo597H.mo504J() - mo504J();
            case 2:
                return (interfaceC2105bMo597H.mo504J() - mo504J()) / 7;
            case 3:
                return m587B(interfaceC2105bMo597H);
            case 4:
                return m587B(interfaceC2105bMo597H) / 12;
            case 5:
                return m587B(interfaceC2105bMo597H) / 120;
            case 6:
                return m587B(interfaceC2105bMo597H) / 1200;
            case 7:
                return m587B(interfaceC2105bMo597H) / 12000;
            case 8:
                EnumC2173a enumC2173a = EnumC2173a.ERA;
                return interfaceC2105bMo597H.mo486k(enumC2173a) - mo486k(enumC2173a);
            default:
                C2159g.m687d("Unsupported unit: ", interfaceC2190r);
                return 0L;
        }
    }

    @Override // j$.time.chrono.InterfaceC2105b
    public final String toString() {
        long jMo486k = mo486k(EnumC2173a.YEAR_OF_ERA);
        long jMo486k2 = mo486k(EnumC2173a.MONTH_OF_YEAR);
        long jMo486k3 = mo486k(EnumC2173a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(mo514f().toString());
        sb.append(" ");
        sb.append(mo506N());
        sb.append(" ");
        sb.append(jMo486k);
        sb.append(jMo486k2 < 10 ? "-0" : "-");
        sb.append(jMo486k2);
        sb.append(jMo486k3 < 10 ? "-0" : "-");
        sb.append(jMo486k3);
        return sb.toString();
    }
}
