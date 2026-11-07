package j$.time.chrono;

import j$.nio.file.C2148b;
import j$.time.AbstractC2185c;
import j$.time.temporal.C2271r;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2268o;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.chrono.d */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2189d implements InterfaceC2187b, Temporal, InterfaceC2266m, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    /* JADX INFO: renamed from: s */
    public static InterfaceC2187b m735s(InterfaceC2196k interfaceC2196k, Temporal temporal) {
        InterfaceC2187b interfaceC2187b = (InterfaceC2187b) temporal;
        if (interfaceC2196k.equals(interfaceC2187b.mo667f())) {
            return interfaceC2187b;
        }
        C2148b.m618k("Chronology mismatch, expected: ", interfaceC2196k.getId(), interfaceC2187b.mo667f().getId());
        return null;
    }

    /* JADX INFO: renamed from: D */
    public final long m736D(InterfaceC2187b interfaceC2187b) {
        if (mo667f().mo743B(EnumC2254a.MONTH_OF_YEAR).f857d != 12) {
            throw new IllegalStateException("ChronoLocalDateImpl only supports Chronologies with 12 months per year");
        }
        EnumC2254a enumC2254a = EnumC2254a.PROLEPTIC_MONTH;
        long jMo532k = mo532k(enumC2254a) * 32;
        EnumC2254a enumC2254a2 = EnumC2254a.DAY_OF_MONTH;
        return (((interfaceC2187b.mo532k(enumC2254a) * 32) + ((long) interfaceC2187b.mo642g(enumC2254a2))) - (jMo532k + ((long) mo642g(enumC2254a2)))) / 32;
    }

    /* JADX INFO: renamed from: I */
    public abstract InterfaceC2187b mo731I(long j);

    /* JADX INFO: renamed from: K */
    public abstract InterfaceC2187b mo732K(long j);

    /* JADX INFO: renamed from: S */
    public abstract InterfaceC2187b mo733S(long j);

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: U */
    public InterfaceC2187b mo664U(InterfaceC2268o interfaceC2268o) {
        return m735s(mo667f(), interfaceC2268o.mo646s(this));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public InterfaceC2187b mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p instanceof EnumC2254a) {
            throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
        return m735s(mo667f(), interfaceC2269p.mo832Y(this, j));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public InterfaceC2187b mo653b(long j, TemporalUnit temporalUnit) {
        boolean z = temporalUnit instanceof ChronoUnit;
        if (!z) {
            if (!z) {
                return m735s(mo667f(), temporalUnit.mo828s(this, j));
            }
            C2148b.m611d("Unsupported unit: ", temporalUnit);
            return null;
        }
        switch (AbstractC2188c.f660a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return mo731I(j);
            case 2:
                return mo731I(Math.multiplyExact(j, 7L));
            case 3:
                return mo732K(j);
            case 4:
                return mo733S(j);
            case 5:
                return mo733S(Math.multiplyExact(j, 10L));
            case 6:
                return mo733S(Math.multiplyExact(j, 100L));
            case 7:
                return mo733S(Math.multiplyExact(j, 1000L));
            case 8:
                EnumC2254a enumC2254a = EnumC2254a.ERA;
                return mo652a(Math.addExact(mo532k(enumC2254a), j), (InterfaceC2269p) enumC2254a);
            default:
                C2148b.m611d("Unsupported unit: ", temporalUnit);
                return null;
        }
    }

    @Override // j$.time.chrono.InterfaceC2187b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public /* bridge */ /* synthetic */ Temporal mo654c(long j, TemporalUnit temporalUnit) {
        return mo654c(j, temporalUnit);
    }

    @Override // j$.time.chrono.InterfaceC2187b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC2187b) && compareTo((InterfaceC2187b) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2187b
    public int hashCode() {
        long jMo660L = mo660L();
        return mo667f().hashCode() ^ ((int) (jMo660L ^ (jMo660L >>> 32)));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public InterfaceC2187b mo716j(InterfaceC2266m interfaceC2266m) {
        return m735s(mo667f(), interfaceC2266m.mo641e(this));
    }

    @Override // j$.time.chrono.InterfaceC2187b, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo656n(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        InterfaceC2187b interfaceC2187bMo747J = mo667f().mo747J(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            Objects.requireNonNull(temporalUnit, "unit");
            return temporalUnit.between(this, interfaceC2187bMo747J);
        }
        switch (AbstractC2188c.f660a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return interfaceC2187bMo747J.mo660L() - mo660L();
            case 2:
                return (interfaceC2187bMo747J.mo660L() - mo660L()) / 7;
            case 3:
                return m736D(interfaceC2187bMo747J);
            case 4:
                return m736D(interfaceC2187bMo747J) / 12;
            case 5:
                return m736D(interfaceC2187bMo747J) / 120;
            case 6:
                return m736D(interfaceC2187bMo747J) / 1200;
            case 7:
                return m736D(interfaceC2187bMo747J) / 12000;
            case 8:
                EnumC2254a enumC2254a = EnumC2254a.ERA;
                return interfaceC2187bMo747J.mo532k(enumC2254a) - mo532k(enumC2254a);
            default:
                C2148b.m611d("Unsupported unit: ", temporalUnit);
                return 0L;
        }
    }

    @Override // j$.time.chrono.InterfaceC2187b
    public final String toString() {
        long jMo532k = mo532k(EnumC2254a.YEAR_OF_ERA);
        long jMo532k2 = mo532k(EnumC2254a.MONTH_OF_YEAR);
        long jMo532k3 = mo532k(EnumC2254a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(mo667f().toString());
        sb.append(" ");
        sb.append(mo662P());
        sb.append(" ");
        sb.append(jMo532k);
        sb.append(jMo532k2 < 10 ? "-0" : "-");
        sb.append(jMo532k2);
        sb.append(jMo532k3 < 10 ? "-0" : "-");
        sb.append(jMo532k3);
        return sb.toString();
    }
}
