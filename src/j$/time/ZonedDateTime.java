package j$.time;

import j$.nio.file.C2288b;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2410r;
import j$.time.temporal.C2411s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import j$.time.zone.C2413b;
import j$.time.zone.ZoneRules;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class ZonedDateTime implements Temporal, ChronoZonedDateTime<LocalDate>, Serializable {
    private static final long serialVersionUID = -6260982410461394882L;

    /* JADX INFO: renamed from: a */
    public final LocalDateTime f652a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f653b;

    /* JADX INFO: renamed from: c */
    public final ZoneId f654c;

    public ZonedDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        this.f652a = localDateTime;
        this.f653b = zoneOffset;
        this.f654c = zoneId;
    }

    /* JADX INFO: renamed from: D */
    public static ZonedDateTime m740D(InterfaceC2404l interfaceC2404l) {
        if (interfaceC2404l instanceof ZonedDateTime) {
            return (ZonedDateTime) interfaceC2404l;
        }
        try {
            ZoneId zoneIdM735s = ZoneId.m735s(interfaceC2404l);
            EnumC2393a enumC2393a = EnumC2393a.INSTANT_SECONDS;
            return interfaceC2404l.mo555i(enumC2393a) ? m743s(interfaceC2404l.mo556k(enumC2393a), interfaceC2404l.mo666g(EnumC2393a.NANO_OF_SECOND), zoneIdM735s) : of(LocalDate.m682I(interfaceC2404l), LocalTime.m708I(interfaceC2404l), zoneIdM735s);
        } catch (DateTimeException e) {
            C2288b.m638g("Unable to obtain ZonedDateTime from TemporalAccessor: ", interfaceC2404l, interfaceC2404l.getClass().getName(), e);
            return null;
        }
    }

    /* JADX INFO: renamed from: I */
    public static ZonedDateTime m741I(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return m743s(instant.getEpochSecond(), instant.getNano(), zoneId);
    }

    /* JADX INFO: renamed from: K */
    public static ZonedDateTime m742K(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        Objects.requireNonNull(localDateTime, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new ZonedDateTime(localDateTime, (ZoneOffset) zoneId, zoneId);
        }
        ZoneRules rules = zoneId.getRules();
        List listM896f = rules.m896f(localDateTime);
        if (listM896f.size() == 1) {
            zoneOffset = (ZoneOffset) listM896f.get(0);
        } else if (listM896f.size() == 0) {
            C2413b c2413bM895e = rules.m895e(localDateTime);
            localDateTime = localDateTime.m701X(Duration.ofSeconds(c2413bM895e.f878d.getTotalSeconds() - c2413bM895e.f877c.getTotalSeconds()).getSeconds());
            zoneOffset = c2413bM895e.f878d;
        } else if (zoneOffset == null || !listM896f.contains(zoneOffset)) {
            zoneOffset = (ZoneOffset) listM896f.get(0);
            Objects.requireNonNull(zoneOffset, "offset");
        }
        return new ZonedDateTime(localDateTime, zoneOffset, zoneId);
    }

    public static ZonedDateTime now(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        C2323a c2323a = zoneId == ZoneOffset.UTC ? C2323a.f655b : new C2323a(zoneId);
        Objects.requireNonNull(c2323a, "clock");
        return m741I(Instant.ofEpochMilli(System.currentTimeMillis()), c2323a.f656a);
    }

    public static ZonedDateTime of(LocalDate localDate, LocalTime localTime, ZoneId zoneId) {
        return m742K(LocalDateTime.of(localDate, localTime), null, zoneId);
    }

    public static ZonedDateTime ofInstant(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneId zoneId) {
        Objects.requireNonNull(localDateTime, "localDateTime");
        Objects.requireNonNull(zoneOffset, "offset");
        Objects.requireNonNull(zoneId, "zone");
        return zoneId.getRules().m896f(localDateTime).contains(zoneOffset) ? new ZonedDateTime(localDateTime, zoneOffset, zoneId) : m743s(localDateTime.toEpochSecond(zoneOffset), localDateTime.f618b.getNano(), zoneId);
    }

    public static ZonedDateTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (ZonedDateTime) dateTimeFormatter.m812b(charSequence, new C2352d(2));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: s */
    public static ZonedDateTime m743s(long j, int i, ZoneId zoneId) {
        ZoneOffset offset = zoneId.getRules().getOffset(Instant.ofEpochSecond(j, i));
        return new ZonedDateTime(LocalDateTime.m696K(j, i, offset), offset, zoneId);
    }

    private Object writeReplace() {
        return new C2388n((byte) 6, this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: G */
    public final ChronoZonedDateTime mo745G(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        return this.f654c.equals(zoneId) ? this : m742K(this.f652a, this.f653b, zoneId);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime mo677b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (ZonedDateTime) temporalUnit.mo872s(this, j);
        }
        ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
        boolean z = chronoUnit.compareTo(ChronoUnit.DAYS) >= 0 && chronoUnit != ChronoUnit.FOREVER;
        LocalDateTime localDateTime = this.f652a;
        return z ? m747X(localDateTime.mo677b(j, temporalUnit)) : ofInstant(localDateTime.mo677b(j, temporalUnit), this.f653b, this.f654c);
    }

    /* JADX INFO: renamed from: X */
    public final ZonedDateTime m747X(LocalDateTime localDateTime) {
        return m742K(localDateTime, this.f653b, this.f654c);
    }

    /* JADX INFO: renamed from: Y */
    public final ZonedDateTime m748Y(ZoneOffset zoneOffset) {
        return (zoneOffset.equals(this.f653b) || !this.f654c.getRules().m896f(this.f652a).contains(zoneOffset)) ? this : new ZonedDateTime(this.f652a, zoneOffset, this.f654c);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return (ZonedDateTime) interfaceC2408p.mo876X(this, j);
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        int i = AbstractC2392r.f826a[enumC2393a.ordinal()];
        return i != 1 ? i != 2 ? m747X(this.f652a.mo676a(j, interfaceC2408p)) : m748Y(ZoneOffset.ofTotalSeconds(enumC2393a.f832b.m885a(j, enumC2393a))) : m743s(j, this.f652a.f618b.getNano(), this.f654c);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final ZonedDateTime mo750j(InterfaceC2405m interfaceC2405m) {
        if (interfaceC2405m instanceof LocalDate) {
            return m747X(LocalDateTime.of((LocalDate) interfaceC2405m, this.f652a.toLocalTime()));
        }
        if (interfaceC2405m instanceof LocalTime) {
            return m747X(LocalDateTime.of(this.f652a.mo705m(), (LocalTime) interfaceC2405m));
        }
        if (interfaceC2405m instanceof LocalDateTime) {
            return m742K((LocalDateTime) interfaceC2405m, this.f653b, this.f654c);
        }
        if (interfaceC2405m instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) interfaceC2405m;
            return m742K(offsetDateTime.toLocalDateTime(), offsetDateTime.getOffset(), this.f654c);
        }
        if (!(interfaceC2405m instanceof Instant)) {
            return interfaceC2405m instanceof ZoneOffset ? m748Y((ZoneOffset) interfaceC2405m) : (ZonedDateTime) interfaceC2405m.mo665e(this);
        }
        Instant instant = (Instant) interfaceC2405m;
        return m743s(instant.getEpochSecond(), instant.getNano(), this.f654c);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final ChronoZonedDateTime mo678c(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo677b(LongCompanionObject.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo677b(j2, temporalUnit);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    public final Object mo554d(C2352d c2352d) {
        return c2352d == AbstractC2409q.f854f ? mo751m() : super.mo554d(c2352d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ZonedDateTime)) {
            return false;
        }
        ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
        return this.f652a.equals(zonedDateTime.f652a) && this.f653b.equals(zonedDateTime.f653b) && this.f654c.equals(zonedDateTime.f654c);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: g */
    public final int mo666g(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return super.mo666g(interfaceC2408p);
        }
        int i = AbstractC2392r.f826a[((EnumC2393a) interfaceC2408p).ordinal()];
        if (i != 1) {
            return i != 2 ? this.f652a.mo666g(interfaceC2408p) : getOffset().getTotalSeconds();
        }
        throw new C2410r("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public ZoneOffset getOffset() {
        return this.f653b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public ZoneId getZone() {
        return this.f654c;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f654c.hashCode(), 3) ^ (this.f652a.hashCode() ^ this.f653b.f650b);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        if (interfaceC2408p instanceof EnumC2393a) {
            return true;
        }
        return interfaceC2408p != null && interfaceC2408p.mo879s(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p.mo875R(this);
        }
        int i = AbstractC2392r.f826a[((EnumC2393a) interfaceC2408p).ordinal()];
        return i != 1 ? i != 2 ? this.f652a.mo556k(interfaceC2408p) : getOffset().getTotalSeconds() : toEpochSecond();
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? (interfaceC2408p == EnumC2393a.INSTANT_SECONDS || interfaceC2408p == EnumC2393a.OFFSET_SECONDS) ? ((EnumC2393a) interfaceC2408p).f832b : this.f652a.mo667l(interfaceC2408p) : interfaceC2408p.mo873D(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo680n(Temporal temporal, TemporalUnit temporalUnit) {
        ZonedDateTime zonedDateTimeM740D = m740D(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, zonedDateTimeM740D);
        }
        ZonedDateTime zonedDateTimeMo752o = zonedDateTimeM740D.mo752o(this.f654c);
        ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
        return (chronoUnit.compareTo(ChronoUnit.DAYS) < 0 || chronoUnit == ChronoUnit.FOREVER) ? OffsetDateTime.of(this.f652a, this.f653b).mo680n(OffsetDateTime.of(zonedDateTimeMo752o.f652a, zonedDateTimeMo752o.f653b), temporalUnit) : this.f652a.mo680n(zonedDateTimeMo752o.f652a, temporalUnit);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: toLocalDate, reason: merged with bridge method [inline-methods] */
    public LocalDate mo751m() {
        return this.f652a.mo705m();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: toLocalDateTime, reason: merged with bridge method [inline-methods] */
    public LocalDateTime mo744A() {
        return this.f652a;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public LocalTime toLocalTime() {
        return this.f652a.toLocalTime();
    }

    public final String toString() {
        String str = this.f652a.toString() + this.f653b.f651c;
        ZoneOffset zoneOffset = this.f653b;
        ZoneId zoneId = this.f654c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: withZoneSameInstant, reason: merged with bridge method [inline-methods] */
    public ZonedDateTime mo752o(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        return this.f654c.equals(zoneId) ? this : m743s(this.f652a.toEpochSecond(this.f653b), this.f652a.f618b.getNano(), zoneId);
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
}
