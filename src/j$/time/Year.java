package j$.time;

import j$.nio.file.C2288b;
import j$.time.chrono.C2343r;
import j$.time.chrono.InterfaceC2336k;
import j$.time.format.C2371q;
import j$.time.format.EnumC2380z;
import j$.time.format.a0;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2410r;
import j$.time.temporal.C2411s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class Year implements Temporal, InterfaceC2405m, Comparable<Year>, Serializable {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f640b = 0;
    private static final long serialVersionUID = -23038383694477807L;

    /* JADX INFO: renamed from: a */
    public final int f641a;

    static {
        C2371q c2371q = new C2371q();
        c2371q.m842h(EnumC2393a.YEAR, 4, 10, a0.EXCEEDS_PAD);
        c2371q.m846l(Locale.getDefault(), EnumC2380z.SMART, null);
    }

    public Year(int i) {
        this.f641a = i;
    }

    public static Year of(int i) {
        EnumC2393a.YEAR.m877Y(i);
        return new Year(i);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2388n((byte) 11, this);
    }

    /* JADX INFO: renamed from: D */
    public final Year m723D(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2393a enumC2393a = EnumC2393a.YEAR;
        return of(enumC2393a.f832b.m885a(((long) this.f641a) + j, enumC2393a));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public final Year mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return (Year) interfaceC2408p.mo876X(this, j);
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        enumC2393a.m877Y(j);
        int i = AbstractC2389o.f819a[enumC2393a.ordinal()];
        if (i == 1) {
            if (this.f641a < 1) {
                j = 1 - j;
            }
            return of((int) j);
        }
        if (i == 2) {
            return of((int) j);
        }
        if (i == 3) {
            return mo556k(EnumC2393a.ERA) == j ? this : of(1 - this.f641a);
        }
        throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo678c(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo677b(LongCompanionObject.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo677b(j2, temporalUnit);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Year year) {
        return this.f641a - year.f641a;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    public final Object mo554d(C2352d c2352d) {
        return c2352d == AbstractC2409q.f850b ? C2343r.f701c : c2352d == AbstractC2409q.f851c ? ChronoUnit.YEARS : super.mo554d(c2352d);
    }

    @Override // j$.time.temporal.InterfaceC2405m
    /* JADX INFO: renamed from: e */
    public final Temporal mo665e(Temporal temporal) {
        if (InterfaceC2336k.m795r(temporal).equals(C2343r.f701c)) {
            return temporal.mo676a(this.f641a, EnumC2393a.YEAR);
        }
        C2288b.m639h("Adjustment only supported on ISO date-time");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Year) && this.f641a == ((Year) obj).f641a;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: g */
    public final int mo666g(InterfaceC2408p interfaceC2408p) {
        return mo667l(interfaceC2408p).m885a(mo556k(interfaceC2408p), interfaceC2408p);
    }

    public int getValue() {
        return this.f641a;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo750j(LocalDate localDate) {
        return (Year) localDate.mo665e(this);
    }

    public final int hashCode() {
        return this.f641a;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? interfaceC2408p == EnumC2393a.YEAR || interfaceC2408p == EnumC2393a.YEAR_OF_ERA || interfaceC2408p == EnumC2393a.ERA : interfaceC2408p != null && interfaceC2408p.mo879s(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p.mo875R(this);
        }
        int i = AbstractC2389o.f819a[((EnumC2393a) interfaceC2408p).ordinal()];
        if (i == 1) {
            int i2 = this.f641a;
            if (i2 < 1) {
                i2 = 1 - i2;
            }
            return i2;
        }
        if (i == 2) {
            return this.f641a;
        }
        if (i == 3) {
            return this.f641a < 1 ? 0 : 1;
        }
        throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        if (interfaceC2408p == EnumC2393a.YEAR_OF_ERA) {
            return C2411s.m883f(1L, this.f641a <= 0 ? 1000000000L : 999999999L);
        }
        return super.mo667l(interfaceC2408p);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo680n(Temporal temporal, TemporalUnit temporalUnit) {
        Year yearOf;
        if (temporal instanceof Year) {
            yearOf = (Year) temporal;
        } else {
            Objects.requireNonNull(temporal, "temporal");
            try {
                if (!C2343r.f701c.equals(InterfaceC2336k.m795r(temporal))) {
                    temporal = LocalDate.m682I(temporal);
                }
                yearOf = of(temporal.mo666g(EnumC2393a.YEAR));
            } catch (DateTimeException e) {
                C2288b.m638g("Unable to obtain Year from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, yearOf);
        }
        long j = ((long) yearOf.f641a) - ((long) this.f641a);
        int i = AbstractC2389o.f820b[((ChronoUnit) temporalUnit).ordinal()];
        if (i == 1) {
            return j;
        }
        if (i == 2) {
            return j / 10;
        }
        if (i == 3) {
            return j / 100;
        }
        if (i == 4) {
            return j / 1000;
        }
        if (i == 5) {
            EnumC2393a enumC2393a = EnumC2393a.ERA;
            return yearOf.mo556k(enumC2393a) - mo556k(enumC2393a);
        }
        C2288b.m635d("Unsupported unit: ", temporalUnit);
        return 0L;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final Year mo677b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (Year) temporalUnit.mo872s(this, j);
        }
        int i = AbstractC2389o.f820b[((ChronoUnit) temporalUnit).ordinal()];
        if (i == 1) {
            return m723D(j);
        }
        if (i == 2) {
            return m723D(Math.multiplyExact(j, 10L));
        }
        if (i == 3) {
            return m723D(Math.multiplyExact(j, 100L));
        }
        if (i == 4) {
            return m723D(Math.multiplyExact(j, 1000L));
        }
        if (i == 5) {
            EnumC2393a enumC2393a = EnumC2393a.ERA;
            return mo676a(Math.addExact(mo556k(enumC2393a), j), enumC2393a);
        }
        C2288b.m635d("Unsupported unit: ", temporalUnit);
        return null;
    }

    public final String toString() {
        return Integer.toString(this.f641a);
    }
}
