package j$.time;

import j$.nio.file.C2148b;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class Instant implements Temporal, InterfaceC2266m, Comparable<Instant>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final Instant f604c = new Instant(0, 0);

    /* JADX INFO: renamed from: d */
    public static final Instant f605d = ofEpochSecond(-31557014167219200L, 0);

    /* JADX INFO: renamed from: e */
    public static final Instant f606e = ofEpochSecond(31556889864403199L, 999999999);
    private static final long serialVersionUID = -665713676816604388L;

    /* JADX INFO: renamed from: a */
    public final long f607a;

    /* JADX INFO: renamed from: b */
    public final int f608b;

    public Instant(long j, int i) {
        this.f607a = j;
        this.f608b = i;
    }

    /* JADX INFO: renamed from: D */
    public static Instant m647D(InterfaceC2265l interfaceC2265l) {
        if (interfaceC2265l instanceof Instant) {
            return (Instant) interfaceC2265l;
        }
        Objects.requireNonNull(interfaceC2265l, "temporal");
        try {
            return ofEpochSecond(interfaceC2265l.mo532k(EnumC2254a.INSTANT_SECONDS), interfaceC2265l.mo642g(EnumC2254a.NANO_OF_SECOND));
        } catch (C2184b e) {
            C2148b.m614g("Unable to obtain Instant from TemporalAccessor: ", interfaceC2265l, interfaceC2265l.getClass().getName(), e);
            return null;
        }
    }

    public static Instant now() {
        C2183a.f654b.getClass();
        return ofEpochMilli(System.currentTimeMillis());
    }

    public static Instant ofEpochMilli(long j) {
        return m648s(Math.floorDiv(j, 1000L), ((int) Math.floorMod(j, 1000L)) * DurationKt.NANOS_IN_MILLIS);
    }

    public static Instant ofEpochSecond(long j, long j2) {
        return m648s(Math.addExact(j, Math.floorDiv(j2, 1000000000L)), (int) Math.floorMod(j2, 1000000000L));
    }

    public static Instant parse(CharSequence charSequence) {
        return (Instant) DateTimeFormatter.f719f.m768b(charSequence, new C2213e(0));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: s */
    public static Instant m648s(long j, int i) {
        if ((((long) i) | j) == 0) {
            return f604c;
        }
        if (j >= -31557014167219200L && j <= 31556889864403199L) {
            return new Instant(j, i);
        }
        C2148b.m615h("Instant exceeds minimum or maximum instant");
        return null;
    }

    private Object writeReplace() {
        return new C2249o((byte) 2, this);
    }

    /* JADX INFO: renamed from: I */
    public final Instant m649I(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return ofEpochSecond(Math.addExact(Math.addExact(this.f607a, j), j2 / 1000000000), ((long) this.f608b) + (j2 % 1000000000));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public final Instant mo653b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (Instant) temporalUnit.mo828s(this, j);
        }
        switch (AbstractC2214f.f718b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return m649I(0L, j);
            case 2:
                return m649I(j / 1000000, (j % 1000000) * 1000);
            case 3:
                return m649I(j / 1000, (j % 1000) * 1000000);
            case 4:
                return plusSeconds(j);
            case 5:
                return plusSeconds(Math.multiplyExact(j, 60L));
            case 6:
                return plusSeconds(Math.multiplyExact(j, 3600L));
            case 7:
                return plusSeconds(Math.multiplyExact(j, 43200L));
            case 8:
                return plusSeconds(Math.multiplyExact(j, 86400L));
            default:
                C2148b.m611d("Unsupported unit: ", temporalUnit);
                return null;
        }
    }

    /* JADX INFO: renamed from: S */
    public final long m651S(Instant instant) {
        long jSubtractExact = Math.subtractExact(instant.f607a, this.f607a);
        long j = instant.f608b - this.f608b;
        return (jSubtractExact <= 0 || j >= 0) ? (jSubtractExact >= 0 || j <= 0) ? jSubtractExact : jSubtractExact + 1 : jSubtractExact - 1;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public final Temporal mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return (Instant) interfaceC2269p.mo832Y(this, j);
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        enumC2254a.a0(j);
        int i = AbstractC2214f.f717a[enumC2254a.ordinal()];
        if (i == 1) {
            return j != ((long) this.f608b) ? m648s(this.f607a, (int) j) : this;
        }
        if (i == 2) {
            int i2 = ((int) j) * 1000;
            return i2 != this.f608b ? m648s(this.f607a, i2) : this;
        }
        if (i == 3) {
            int i3 = ((int) j) * DurationKt.NANOS_IN_MILLIS;
            return i3 != this.f608b ? m648s(this.f607a, i3) : this;
        }
        if (i == 4) {
            return j != this.f607a ? m648s(j, this.f608b) : this;
        }
        throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return OffsetDateTime.m686s(this, zoneOffset);
    }

    public ZonedDateTime atZone(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        return ZonedDateTime.m710s(getEpochSecond(), getNano(), zoneId);
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
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        int iCompare = Long.compare(this.f607a, instant2.f607a);
        return iCompare != 0 ? iCompare : this.f608b - instant2.f608b;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        if (c2213e == AbstractC2270q.f849c) {
            return ChronoUnit.NANOS;
        }
        if (c2213e == AbstractC2270q.f848b || c2213e == AbstractC2270q.f847a || c2213e == AbstractC2270q.f851e || c2213e == AbstractC2270q.f850d || c2213e == AbstractC2270q.f852f || c2213e == AbstractC2270q.f853g) {
            return null;
        }
        return c2213e.m766l(this);
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    public final Temporal mo641e(Temporal temporal) {
        return temporal.mo652a(this.f607a, EnumC2254a.INSTANT_SECONDS).mo652a(this.f608b, EnumC2254a.NANO_OF_SECOND);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            if (this.f607a == instant.f607a && this.f608b == instant.f608b) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    public final int mo642g(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return super.mo643l(interfaceC2269p).m837a(interfaceC2269p.mo831S(this), interfaceC2269p);
        }
        int i = AbstractC2214f.f717a[((EnumC2254a) interfaceC2269p).ordinal()];
        if (i == 1) {
            return this.f608b;
        }
        if (i == 2) {
            return this.f608b / 1000;
        }
        if (i == 3) {
            return this.f608b / DurationKt.NANOS_IN_MILLIS;
        }
        if (i == 4) {
            EnumC2254a enumC2254a = EnumC2254a.INSTANT_SECONDS;
            enumC2254a.f830b.m837a(this.f607a, enumC2254a);
        }
        throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
    }

    public long getEpochSecond() {
        return this.f607a;
    }

    public int getNano() {
        return this.f608b;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo716j(LocalDate localDate) {
        return (Instant) localDate.mo641e(this);
    }

    public final int hashCode() {
        long j = this.f607a;
        return (this.f608b * 51) + ((int) (j ^ (j >>> 32)));
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? interfaceC2269p == EnumC2254a.INSTANT_SECONDS || interfaceC2269p == EnumC2254a.NANO_OF_SECOND || interfaceC2269p == EnumC2254a.MICRO_OF_SECOND || interfaceC2269p == EnumC2254a.MILLI_OF_SECOND : interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        int i;
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p.mo831S(this);
        }
        int i2 = AbstractC2214f.f717a[((EnumC2254a) interfaceC2269p).ordinal()];
        if (i2 == 1) {
            i = this.f608b;
        } else if (i2 == 2) {
            i = this.f608b / 1000;
        } else {
            if (i2 != 3) {
                if (i2 == 4) {
                    return this.f607a;
                }
                throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
            }
            i = this.f608b / DurationKt.NANOS_IN_MILLIS;
        }
        return i;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo656n(Temporal temporal, TemporalUnit temporalUnit) {
        Instant instantM647D = m647D(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, instantM647D);
        }
        switch (AbstractC2214f.f718b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return Math.addExact(Math.multiplyExact(Math.subtractExact(instantM647D.f607a, this.f607a), 1000000000L), instantM647D.f608b - this.f608b);
            case 2:
                return Math.addExact(Math.multiplyExact(Math.subtractExact(instantM647D.f607a, this.f607a), 1000000000L), instantM647D.f608b - this.f608b) / 1000;
            case 3:
                return Math.subtractExact(instantM647D.toEpochMilli(), toEpochMilli());
            case 4:
                return m651S(instantM647D);
            case 5:
                return m651S(instantM647D) / 60;
            case 6:
                return m651S(instantM647D) / 3600;
            case 7:
                return m651S(instantM647D) / 43200;
            case 8:
                return m651S(instantM647D) / 86400;
            default:
                C2148b.m611d("Unsupported unit: ", temporalUnit);
                return 0L;
        }
    }

    public Instant plusSeconds(long j) {
        return m649I(j, 0L);
    }

    public long toEpochMilli() {
        long j = this.f607a;
        return (j >= 0 || this.f608b <= 0) ? Math.addExact(Math.multiplyExact(j, 1000L), this.f608b / DurationKt.NANOS_IN_MILLIS) : Math.addExact(Math.multiplyExact(j + 1, 1000L), (this.f608b / DurationKt.NANOS_IN_MILLIS) - 1000);
    }

    public String toString() {
        return DateTimeFormatter.f719f.m767a(this);
    }
}
