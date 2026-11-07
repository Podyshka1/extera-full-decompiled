package j$.time;

import j$.nio.file.C2148b;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.C2272s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import j$.time.zone.C2274b;
import j$.time.zone.ZoneRules;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ZonedDateTime implements Temporal, ChronoZonedDateTime<LocalDate>, Serializable {
    private static final long serialVersionUID = -6260982410461394882L;

    /* JADX INFO: renamed from: a */
    public final LocalDateTime f651a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f652b;

    /* JADX INFO: renamed from: c */
    public final ZoneId f653c;

    public ZonedDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        this.f651a = localDateTime;
        this.f652b = zoneOffset;
        this.f653c = zoneId;
    }

    /* JADX INFO: renamed from: D */
    public static ZonedDateTime m708D(InterfaceC2265l interfaceC2265l) {
        if (interfaceC2265l instanceof ZonedDateTime) {
            return (ZonedDateTime) interfaceC2265l;
        }
        try {
            ZoneId zoneIdM705s = ZoneId.m705s(interfaceC2265l);
            EnumC2254a enumC2254a = EnumC2254a.INSTANT_SECONDS;
            return interfaceC2265l.mo531i(enumC2254a) ? m710s(interfaceC2265l.mo532k(enumC2254a), interfaceC2265l.mo642g(EnumC2254a.NANO_OF_SECOND), zoneIdM705s) : m709I(LocalDateTime.of(LocalDate.m658I(interfaceC2265l), LocalTime.m681I(interfaceC2265l)), null, zoneIdM705s);
        } catch (C2184b e) {
            C2148b.m614g("Unable to obtain ZonedDateTime from TemporalAccessor: ", interfaceC2265l, interfaceC2265l.getClass().getName(), e);
            return null;
        }
    }

    /* JADX INFO: renamed from: I */
    public static ZonedDateTime m709I(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        Objects.requireNonNull(localDateTime, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new ZonedDateTime(localDateTime, (ZoneOffset) zoneId, zoneId);
        }
        ZoneRules rules = zoneId.getRules();
        List listM848f = rules.m848f(localDateTime);
        if (listM848f.size() == 1) {
            zoneOffset = (ZoneOffset) listM848f.get(0);
        } else if (listM848f.size() == 0) {
            C2274b c2274bM847e = rules.m847e(localDateTime);
            localDateTime = localDateTime.m676Y(Duration.ofSeconds(c2274bM847e.f876d.getTotalSeconds() - c2274bM847e.f875c.getTotalSeconds()).getSeconds());
            zoneOffset = c2274bM847e.f876d;
        } else if (zoneOffset == null || !listM848f.contains(zoneOffset)) {
            zoneOffset = (ZoneOffset) listM848f.get(0);
            Objects.requireNonNull(zoneOffset, "offset");
        }
        return new ZonedDateTime(localDateTime, zoneOffset, zoneId);
    }

    public static ZonedDateTime ofInstant(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        Objects.requireNonNull(localDateTime, "localDateTime");
        Objects.requireNonNull(zoneOffset, "offset");
        Objects.requireNonNull(zoneId, "zone");
        return zoneId.getRules().m848f(localDateTime).contains(zoneOffset) ? new ZonedDateTime(localDateTime, zoneOffset, zoneId) : m710s(localDateTime.toEpochSecond(zoneOffset), localDateTime.f617b.getNano(), zoneId);
    }

    public static ZonedDateTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (ZonedDateTime) dateTimeFormatter.m768b(charSequence, new C2213e(1));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: s */
    public static ZonedDateTime m710s(long j, int i, ZoneId zoneId) {
        ZoneOffset offset = zoneId.getRules().getOffset(Instant.ofEpochSecond(j, i));
        return new ZonedDateTime(LocalDateTime.m671K(j, i, offset), offset, zoneId);
    }

    private Object writeReplace() {
        return new C2249o((byte) 6, this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: G */
    public final ChronoZonedDateTime mo712G(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        return this.f653c.equals(zoneId) ? this : m709I(this.f651a, this.f652b, zoneId);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime mo653b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (ZonedDateTime) temporalUnit.mo828s(this, j);
        }
        ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
        boolean z = chronoUnit.compareTo(ChronoUnit.DAYS) >= 0 && chronoUnit != ChronoUnit.FOREVER;
        LocalDateTime localDateTime = this.f651a;
        if (z) {
            return m709I(localDateTime.mo653b(j, temporalUnit), this.f652b, this.f653c);
        }
        return ofInstant(localDateTime.mo653b(j, temporalUnit), this.f652b, this.f653c);
    }

    /* JADX INFO: renamed from: S */
    public final ZonedDateTime m714S(ZoneOffset zoneOffset) {
        return (zoneOffset.equals(this.f652b) || !this.f653c.getRules().m848f(this.f651a).contains(zoneOffset)) ? this : new ZonedDateTime(this.f651a, zoneOffset, this.f653c);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return (ZonedDateTime) interfaceC2269p.mo832Y(this, j);
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        int i = AbstractC2253s.f824a[enumC2254a.ordinal()];
        if (i == 1) {
            return m710s(j, this.f651a.f617b.getNano(), this.f653c);
        }
        if (i == 2) {
            return m714S(ZoneOffset.ofTotalSeconds(enumC2254a.f830b.m837a(j, enumC2254a)));
        }
        return m709I(this.f651a.mo652a(j, interfaceC2269p), this.f652b, this.f653c);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final ZonedDateTime mo716j(InterfaceC2266m interfaceC2266m) {
        if (interfaceC2266m instanceof LocalDate) {
            return m709I(LocalDateTime.of((LocalDate) interfaceC2266m, this.f651a.toLocalTime()), this.f652b, this.f653c);
        }
        if (interfaceC2266m instanceof LocalTime) {
            return m709I(LocalDateTime.of(this.f651a.mo678m(), (LocalTime) interfaceC2266m), this.f652b, this.f653c);
        }
        if (interfaceC2266m instanceof LocalDateTime) {
            return m709I((LocalDateTime) interfaceC2266m, this.f652b, this.f653c);
        }
        if (interfaceC2266m instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) interfaceC2266m;
            return m709I(offsetDateTime.toLocalDateTime(), offsetDateTime.getOffset(), this.f653c);
        }
        if (!(interfaceC2266m instanceof Instant)) {
            return interfaceC2266m instanceof ZoneOffset ? m714S((ZoneOffset) interfaceC2266m) : (ZonedDateTime) interfaceC2266m.mo641e(this);
        }
        Instant instant = (Instant) interfaceC2266m;
        return m710s(instant.getEpochSecond(), instant.getNano(), this.f653c);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime mo718o(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        return this.f653c.equals(zoneId) ? this : m710s(this.f651a.toEpochSecond(this.f652b), this.f651a.f617b.getNano(), zoneId);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final ChronoZonedDateTime mo654c(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo653b(LongCompanionObject.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo653b(j2, temporalUnit);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        return c2213e == AbstractC2270q.f852f ? mo717m() : super.mo530d(c2213e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ZonedDateTime)) {
            return false;
        }
        ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
        return this.f651a.equals(zonedDateTime.f651a) && this.f652b.equals(zonedDateTime.f652b) && this.f653c.equals(zonedDateTime.f653c);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    public final int mo642g(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return super.mo642g(interfaceC2269p);
        }
        int i = AbstractC2253s.f824a[((EnumC2254a) interfaceC2269p).ordinal()];
        if (i != 1) {
            return i != 2 ? this.f651a.mo642g(interfaceC2269p) : getOffset().getTotalSeconds();
        }
        throw new C2271r("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public ZoneOffset getOffset() {
        return this.f652b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public ZoneId getZone() {
        return this.f653c;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f653c.hashCode(), 3) ^ (this.f651a.hashCode() ^ this.f652b.f649b);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p instanceof EnumC2254a) {
            return true;
        }
        return interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p.mo831S(this);
        }
        int i = AbstractC2253s.f824a[((EnumC2254a) interfaceC2269p).ordinal()];
        return i != 1 ? i != 2 ? this.f651a.mo532k(interfaceC2269p) : getOffset().getTotalSeconds() : m721Z();
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? (interfaceC2269p == EnumC2254a.INSTANT_SECONDS || interfaceC2269p == EnumC2254a.OFFSET_SECONDS) ? ((EnumC2254a) interfaceC2269p).f830b : this.f651a.mo643l(interfaceC2269p) : interfaceC2269p.mo829D(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo656n(Temporal temporal, TemporalUnit temporalUnit) {
        ZonedDateTime zonedDateTimeM708D = m708D(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, zonedDateTimeM708D);
        }
        ZonedDateTime zonedDateTimeMo718o = zonedDateTimeM708D.mo718o(this.f653c);
        ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
        return (chronoUnit.compareTo(ChronoUnit.DAYS) < 0 || chronoUnit == ChronoUnit.FOREVER) ? OffsetDateTime.of(this.f651a, this.f652b).mo656n(OffsetDateTime.of(zonedDateTimeMo718o.f651a, zonedDateTimeMo718o.f652b), temporalUnit) : this.f651a.mo656n(zonedDateTimeMo718o.f651a, temporalUnit);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: toLocalDate, reason: merged with bridge method [inline-methods] */
    public LocalDate mo717m() {
        return this.f651a.mo678m();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: toLocalDateTime, reason: merged with bridge method [inline-methods] */
    public LocalDateTime mo711A() {
        return this.f651a;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final LocalTime toLocalTime() {
        return this.f651a.toLocalTime();
    }

    public final String toString() {
        String str = this.f651a.toString() + this.f652b.f650c;
        ZoneOffset zoneOffset = this.f652b;
        ZoneId zoneId = this.f653c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
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
}
