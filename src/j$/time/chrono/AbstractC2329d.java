package j$.time.chrono;

import j$.nio.file.C2288b;
import j$.time.AbstractC2324b;
import j$.time.temporal.C2410r;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2407o;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.chrono.d */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2329d implements InterfaceC2327b, Temporal, InterfaceC2405m, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    /* JADX INFO: renamed from: s */
    public static InterfaceC2327b m770s(InterfaceC2336k interfaceC2336k, Temporal temporal) {
        InterfaceC2327b interfaceC2327b = (InterfaceC2327b) temporal;
        if (interfaceC2336k.equals(interfaceC2327b.mo692f())) {
            return interfaceC2327b;
        }
        C2288b.m642k("Chronology mismatch, expected: ", interfaceC2336k.getId(), interfaceC2327b.mo692f().getId());
        return null;
    }

    /* JADX INFO: renamed from: D */
    public final long m771D(InterfaceC2327b interfaceC2327b) {
        if (mo692f().mo778B(EnumC2393a.MONTH_OF_YEAR).f859d != 12) {
            throw new IllegalStateException("ChronoLocalDateImpl only supports Chronologies with 12 months per year");
        }
        EnumC2393a enumC2393a = EnumC2393a.PROLEPTIC_MONTH;
        long jMo556k = mo556k(enumC2393a) * 32;
        EnumC2393a enumC2393a2 = EnumC2393a.DAY_OF_MONTH;
        return (((interfaceC2327b.mo556k(enumC2393a) * 32) + ((long) interfaceC2327b.mo666g(enumC2393a2))) - (jMo556k + ((long) mo666g(enumC2393a2)))) / 32;
    }

    /* JADX INFO: renamed from: I */
    public abstract InterfaceC2327b mo764I(long j);

    /* JADX INFO: renamed from: K */
    public abstract InterfaceC2327b mo765K(long j);

    /* JADX INFO: renamed from: R */
    public abstract InterfaceC2327b mo766R(long j);

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: T */
    public InterfaceC2327b mo687T(InterfaceC2407o interfaceC2407o) {
        return m770s(mo692f(), interfaceC2407o.mo670s(this));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public InterfaceC2327b mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (interfaceC2408p instanceof EnumC2393a) {
            throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
        return m770s(mo692f(), interfaceC2408p.mo876X(this, j));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public InterfaceC2327b mo677b(long j, TemporalUnit temporalUnit) {
        boolean z = temporalUnit instanceof ChronoUnit;
        if (!z) {
            if (!z) {
                return m770s(mo692f(), temporalUnit.mo872s(this, j));
            }
            C2288b.m635d("Unsupported unit: ", temporalUnit);
            return null;
        }
        switch (AbstractC2328c.f662a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return mo764I(j);
            case 2:
                return mo764I(Math.multiplyExact(j, 7L));
            case 3:
                return mo765K(j);
            case 4:
                return mo766R(j);
            case 5:
                return mo766R(Math.multiplyExact(j, 10L));
            case 6:
                return mo766R(Math.multiplyExact(j, 100L));
            case 7:
                return mo766R(Math.multiplyExact(j, 1000L));
            case 8:
                EnumC2393a enumC2393a = EnumC2393a.ERA;
                return mo676a(Math.addExact(mo556k(enumC2393a), j), (InterfaceC2408p) enumC2393a);
            default:
                C2288b.m635d("Unsupported unit: ", temporalUnit);
                return null;
        }
    }

    @Override // j$.time.chrono.InterfaceC2327b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public /* bridge */ /* synthetic */ Temporal mo678c(long j, TemporalUnit temporalUnit) {
        return mo678c(j, temporalUnit);
    }

    @Override // j$.time.chrono.InterfaceC2327b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC2327b) && compareTo((InterfaceC2327b) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2327b
    public int hashCode() {
        long epochDay = toEpochDay();
        return mo692f().hashCode() ^ ((int) (epochDay ^ (epochDay >>> 32)));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public InterfaceC2327b mo750j(InterfaceC2405m interfaceC2405m) {
        return m770s(mo692f(), interfaceC2405m.mo665e(this));
    }

    @Override // j$.time.chrono.InterfaceC2327b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo680n(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        InterfaceC2327b interfaceC2327bMo782J = mo692f().mo782J(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            Objects.requireNonNull(temporalUnit, "unit");
            return temporalUnit.between(this, interfaceC2327bMo782J);
        }
        switch (AbstractC2328c.f662a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return interfaceC2327bMo782J.toEpochDay() - toEpochDay();
            case 2:
                return (interfaceC2327bMo782J.toEpochDay() - toEpochDay()) / 7;
            case 3:
                return m771D(interfaceC2327bMo782J);
            case 4:
                return m771D(interfaceC2327bMo782J) / 12;
            case 5:
                return m771D(interfaceC2327bMo782J) / 120;
            case 6:
                return m771D(interfaceC2327bMo782J) / 1200;
            case 7:
                return m771D(interfaceC2327bMo782J) / 12000;
            case 8:
                EnumC2393a enumC2393a = EnumC2393a.ERA;
                return interfaceC2327bMo782J.mo556k(enumC2393a) - mo556k(enumC2393a);
            default:
                C2288b.m635d("Unsupported unit: ", temporalUnit);
                return 0L;
        }
    }

    @Override // j$.time.chrono.InterfaceC2327b
    public final String toString() {
        long jMo556k = mo556k(EnumC2393a.YEAR_OF_ERA);
        long jMo556k2 = mo556k(EnumC2393a.MONTH_OF_YEAR);
        long jMo556k3 = mo556k(EnumC2393a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(mo692f().toString());
        sb.append(" ");
        sb.append(mo685O());
        sb.append(" ");
        sb.append(jMo556k);
        sb.append(jMo556k2 < 10 ? "-0" : "-");
        sb.append(jMo556k2);
        sb.append(jMo556k3 < 10 ? "-0" : "-");
        sb.append(jMo556k3);
        return sb.toString();
    }
}
