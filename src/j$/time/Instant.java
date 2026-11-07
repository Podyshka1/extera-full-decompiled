package j$.time;

import j$.nio.file.C2288b;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2410r;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class Instant implements Temporal, InterfaceC2405m, Comparable<Instant>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final Instant f605c = new Instant(0, 0);

    /* JADX INFO: renamed from: d */
    public static final Instant f606d = ofEpochSecond(-31557014167219200L, 0);

    /* JADX INFO: renamed from: e */
    public static final Instant f607e = ofEpochSecond(31556889864403199L, 999999999);
    private static final long serialVersionUID = -665713676816604388L;

    /* JADX INFO: renamed from: a */
    public final long f608a;

    /* JADX INFO: renamed from: b */
    public final int f609b;

    public Instant(long j, int i) {
        this.f608a = j;
        this.f609b = i;
    }

    /* JADX INFO: renamed from: D */
    public static Instant m671D(InterfaceC2404l interfaceC2404l) {
        if (interfaceC2404l instanceof Instant) {
            return (Instant) interfaceC2404l;
        }
        Objects.requireNonNull(interfaceC2404l, "temporal");
        try {
            return ofEpochSecond(interfaceC2404l.mo556k(EnumC2393a.INSTANT_SECONDS), interfaceC2404l.mo666g(EnumC2393a.NANO_OF_SECOND));
        } catch (DateTimeException e) {
            C2288b.m638g("Unable to obtain Instant from TemporalAccessor: ", interfaceC2404l, interfaceC2404l.getClass().getName(), e);
            return null;
        }
    }

    public static Instant now() {
        C2323a.f655b.getClass();
        return ofEpochMilli(System.currentTimeMillis());
    }

    public static Instant ofEpochMilli(long j) {
        return m672s(Math.floorDiv(j, 1000L), ((int) Math.floorMod(j, 1000L)) * DurationKt.NANOS_IN_MILLIS);
    }

    public static Instant ofEpochSecond(long j, long j2) {
        return m672s(Math.addExact(j, Math.floorDiv(j2, 1000000000L)), (int) Math.floorMod(j2, 1000000000L));
    }

    public static Instant parse(CharSequence charSequence) {
        return (Instant) DateTimeFormatter.f723g.m812b(charSequence, new C2352d(0));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: s */
    public static Instant m672s(long j, int i) {
        if ((((long) i) | j) == 0) {
            return f605c;
        }
        if (j >= -31557014167219200L && j <= 31556889864403199L) {
            return new Instant(j, i);
        }
        C2288b.m639h("Instant exceeds minimum or maximum instant");
        return null;
    }

    private Object writeReplace() {
        return new C2388n((byte) 2, this);
    }

    /* JADX INFO: renamed from: I */
    public final Instant m673I(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return ofEpochSecond(Math.addExact(Math.addExact(this.f608a, j), j2 / 1000000000), ((long) this.f609b) + (j2 % 1000000000));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public final Instant mo677b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (Instant) temporalUnit.mo872s(this, j);
        }
        switch (AbstractC2353e.f719b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return m673I(0L, j);
            case 2:
                return m673I(j / 1000000, (j % 1000000) * 1000);
            case 3:
                return m673I(j / 1000, (j % 1000) * 1000000);
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
                C2288b.m635d("Unsupported unit: ", temporalUnit);
                return null;
        }
    }

    /* JADX INFO: renamed from: R */
    public final long m675R(Instant instant) {
        long jSubtractExact = Math.subtractExact(instant.f608a, this.f608a);
        long j = instant.f609b - this.f609b;
        return (jSubtractExact <= 0 || j >= 0) ? (jSubtractExact >= 0 || j <= 0) ? jSubtractExact : jSubtractExact + 1 : jSubtractExact - 1;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public final Temporal mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return (Instant) interfaceC2408p.mo876X(this, j);
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        enumC2393a.m877Y(j);
        int i = AbstractC2353e.f718a[enumC2393a.ordinal()];
        if (i == 1) {
            return j != ((long) this.f609b) ? m672s(this.f608a, (int) j) : this;
        }
        if (i == 2) {
            int i2 = ((int) j) * 1000;
            return i2 != this.f609b ? m672s(this.f608a, i2) : this;
        }
        if (i == 3) {
            int i3 = ((int) j) * DurationKt.NANOS_IN_MILLIS;
            return i3 != this.f609b ? m672s(this.f608a, i3) : this;
        }
        if (i == 4) {
            return j != this.f608a ? m672s(j, this.f609b) : this;
        }
        throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return OffsetDateTime.m715D(this, zoneOffset);
    }

    public ZonedDateTime atZone(ZoneId zoneId) {
        return ZonedDateTime.m741I(this, zoneId);
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
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        int iCompare = Long.compare(this.f608a, instant2.f608a);
        return iCompare != 0 ? iCompare : this.f609b - instant2.f609b;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    public final Object mo554d(C2352d c2352d) {
        if (c2352d == AbstractC2409q.f851c) {
            return ChronoUnit.NANOS;
        }
        if (c2352d == AbstractC2409q.f850b || c2352d == AbstractC2409q.f849a || c2352d == AbstractC2409q.f853e || c2352d == AbstractC2409q.f852d || c2352d == AbstractC2409q.f854f || c2352d == AbstractC2409q.f855g) {
            return null;
        }
        return c2352d.m810l(this);
    }

    @Override // j$.time.temporal.InterfaceC2405m
    /* JADX INFO: renamed from: e */
    public final Temporal mo665e(Temporal temporal) {
        return temporal.mo676a(this.f608a, EnumC2393a.INSTANT_SECONDS).mo676a(this.f609b, EnumC2393a.NANO_OF_SECOND);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            if (this.f608a == instant.f608a && this.f609b == instant.f609b) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: g */
    public final int mo666g(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return super.mo667l(interfaceC2408p).m885a(interfaceC2408p.mo875R(this), interfaceC2408p);
        }
        int i = AbstractC2353e.f718a[((EnumC2393a) interfaceC2408p).ordinal()];
        if (i == 1) {
            return this.f609b;
        }
        if (i == 2) {
            return this.f609b / 1000;
        }
        if (i == 3) {
            return this.f609b / DurationKt.NANOS_IN_MILLIS;
        }
        if (i == 4) {
            EnumC2393a enumC2393a = EnumC2393a.INSTANT_SECONDS;
            enumC2393a.f832b.m885a(this.f608a, enumC2393a);
        }
        throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
    }

    public long getEpochSecond() {
        return this.f608a;
    }

    public int getNano() {
        return this.f609b;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo750j(LocalDate localDate) {
        return (Instant) localDate.mo665e(this);
    }

    public final int hashCode() {
        long j = this.f608a;
        return (this.f609b * 51) + ((int) (j ^ (j >>> 32)));
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? interfaceC2408p == EnumC2393a.INSTANT_SECONDS || interfaceC2408p == EnumC2393a.NANO_OF_SECOND || interfaceC2408p == EnumC2393a.MICRO_OF_SECOND || interfaceC2408p == EnumC2393a.MILLI_OF_SECOND : interfaceC2408p != null && interfaceC2408p.mo879s(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        int i;
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p.mo875R(this);
        }
        int i2 = AbstractC2353e.f718a[((EnumC2393a) interfaceC2408p).ordinal()];
        if (i2 == 1) {
            i = this.f609b;
        } else if (i2 == 2) {
            i = this.f609b / 1000;
        } else {
            if (i2 != 3) {
                if (i2 == 4) {
                    return this.f608a;
                }
                throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
            }
            i = this.f609b / DurationKt.NANOS_IN_MILLIS;
        }
        return i;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo680n(Temporal temporal, TemporalUnit temporalUnit) {
        Instant instantM671D = m671D(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, instantM671D);
        }
        switch (AbstractC2353e.f719b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return Math.addExact(Math.multiplyExact(Math.subtractExact(instantM671D.f608a, this.f608a), 1000000000L), instantM671D.f609b - this.f609b);
            case 2:
                return Math.addExact(Math.multiplyExact(Math.subtractExact(instantM671D.f608a, this.f608a), 1000000000L), instantM671D.f609b - this.f609b) / 1000;
            case 3:
                return Math.subtractExact(instantM671D.toEpochMilli(), toEpochMilli());
            case 4:
                return m675R(instantM671D);
            case 5:
                return m675R(instantM671D) / 60;
            case 6:
                return m675R(instantM671D) / 3600;
            case 7:
                return m675R(instantM671D) / 43200;
            case 8:
                return m675R(instantM671D) / 86400;
            default:
                C2288b.m635d("Unsupported unit: ", temporalUnit);
                return 0L;
        }
    }

    public Instant plusSeconds(long j) {
        return m673I(j, 0L);
    }

    public long toEpochMilli() {
        long j = this.f608a;
        return (j >= 0 || this.f609b <= 0) ? Math.addExact(Math.multiplyExact(j, 1000L), this.f609b / DurationKt.NANOS_IN_MILLIS) : Math.addExact(Math.multiplyExact(j + 1, 1000L), (this.f609b / DurationKt.NANOS_IN_MILLIS) - 1000);
    }

    public String toString() {
        return DateTimeFormatter.f723g.m811a(this);
    }
}
