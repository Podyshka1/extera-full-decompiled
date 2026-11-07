package j$.time;

import j$.nio.file.C2148b;
import j$.time.chrono.C2203r;
import j$.time.chrono.InterfaceC2196k;
import j$.time.format.C2231q;
import j$.time.format.EnumC2240z;
import j$.time.format.a0;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.C2272s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class Year implements Temporal, InterfaceC2266m, Comparable<Year>, Serializable {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f639b = 0;
    private static final long serialVersionUID = -23038383694477807L;

    /* JADX INFO: renamed from: a */
    public final int f640a;

    static {
        C2231q c2231q = new C2231q();
        c2231q.m798h(EnumC2254a.YEAR, 4, 10, a0.EXCEEDS_PAD);
        c2231q.m802l(Locale.getDefault(), EnumC2240z.SMART, null);
    }

    public Year(int i) {
        this.f640a = i;
    }

    public static Year of(int i) {
        EnumC2254a.YEAR.a0(i);
        return new Year(i);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2249o((byte) 11, this);
    }

    /* JADX INFO: renamed from: D */
    public final Year m693D(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2254a enumC2254a = EnumC2254a.YEAR;
        return of(enumC2254a.f830b.m837a(((long) this.f640a) + j, enumC2254a));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public final Year mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return (Year) interfaceC2269p.mo832Y(this, j);
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        enumC2254a.a0(j);
        int i = AbstractC2250p.f817a[enumC2254a.ordinal()];
        if (i == 1) {
            if (this.f640a < 1) {
                j = 1 - j;
            }
            return of((int) j);
        }
        if (i == 2) {
            return of((int) j);
        }
        if (i == 3) {
            return mo532k(EnumC2254a.ERA) == j ? this : of(1 - this.f640a);
        }
        throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo654c(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo653b(LongCompanionObject.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo653b(j2, temporalUnit);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Year year) {
        return this.f640a - year.f640a;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        return c2213e == AbstractC2270q.f848b ? C2203r.f699c : c2213e == AbstractC2270q.f849c ? ChronoUnit.YEARS : super.mo530d(c2213e);
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    public final Temporal mo641e(Temporal temporal) {
        if (InterfaceC2196k.m758r(temporal).equals(C2203r.f699c)) {
            return temporal.mo652a(this.f640a, EnumC2254a.YEAR);
        }
        C2148b.m615h("Adjustment only supported on ISO date-time");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Year) && this.f640a == ((Year) obj).f640a;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    public final int mo642g(InterfaceC2269p interfaceC2269p) {
        return mo643l(interfaceC2269p).m837a(mo532k(interfaceC2269p), interfaceC2269p);
    }

    public int getValue() {
        return this.f640a;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo677j(LocalDate localDate) {
        return (Year) localDate.mo641e(this);
    }

    public final int hashCode() {
        return this.f640a;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? interfaceC2269p == EnumC2254a.YEAR || interfaceC2269p == EnumC2254a.YEAR_OF_ERA || interfaceC2269p == EnumC2254a.ERA : interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p.mo831S(this);
        }
        int i = AbstractC2250p.f817a[((EnumC2254a) interfaceC2269p).ordinal()];
        if (i == 1) {
            int i2 = this.f640a;
            if (i2 < 1) {
                i2 = 1 - i2;
            }
            return i2;
        }
        if (i == 2) {
            return this.f640a;
        }
        if (i == 3) {
            return this.f640a < 1 ? 0 : 1;
        }
        throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p == EnumC2254a.YEAR_OF_ERA) {
            return C2272s.m835f(1L, this.f640a <= 0 ? 1000000000L : 999999999L);
        }
        return super.mo643l(interfaceC2269p);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo656n(Temporal temporal, TemporalUnit temporalUnit) {
        Year yearOf;
        if (temporal instanceof Year) {
            yearOf = (Year) temporal;
        } else {
            Objects.requireNonNull(temporal, "temporal");
            try {
                if (!C2203r.f699c.equals(InterfaceC2196k.m758r(temporal))) {
                    temporal = LocalDate.m658I(temporal);
                }
                yearOf = of(temporal.mo642g(EnumC2254a.YEAR));
            } catch (C2184b e) {
                C2148b.m614g("Unable to obtain Year from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, yearOf);
        }
        long j = ((long) yearOf.f640a) - ((long) this.f640a);
        int i = AbstractC2250p.f818b[((ChronoUnit) temporalUnit).ordinal()];
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
            EnumC2254a enumC2254a = EnumC2254a.ERA;
            return yearOf.mo532k(enumC2254a) - mo532k(enumC2254a);
        }
        C2148b.m611d("Unsupported unit: ", temporalUnit);
        return 0L;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final Year mo653b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (Year) temporalUnit.mo828s(this, j);
        }
        int i = AbstractC2250p.f818b[((ChronoUnit) temporalUnit).ordinal()];
        if (i == 1) {
            return m693D(j);
        }
        if (i == 2) {
            return m693D(Math.multiplyExact(j, 10L));
        }
        if (i == 3) {
            return m693D(Math.multiplyExact(j, 100L));
        }
        if (i == 4) {
            return m693D(Math.multiplyExact(j, 1000L));
        }
        if (i == 5) {
            EnumC2254a enumC2254a = EnumC2254a.ERA;
            return mo652a(Math.addExact(mo532k(enumC2254a), j), enumC2254a);
        }
        C2148b.m611d("Unsupported unit: ", temporalUnit);
        return null;
    }

    public final String toString() {
        return Integer.toString(this.f640a);
    }
}
