package j$.time;

import j$.time.chrono.ChronoZonedDateTime;
import j$.time.format.DateTimeFormatter;
import j$.time.format.DateTimeParseException;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2191s;
import j$.time.temporal.C2192t;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;
import j$.time.zone.C2199b;
import j$.time.zone.ZoneRules;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class ZonedDateTime implements Temporal, ChronoZonedDateTime<LocalDate>, Serializable {
    private static final long serialVersionUID = -6260982410461394882L;

    /* JADX INFO: renamed from: a */
    public final LocalDateTime f495a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f496b;

    /* JADX INFO: renamed from: c */
    public final ZoneId f497c;

    public ZonedDateTime(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        this.f495a = localDateTime;
        this.f496b = zoneOffset;
        this.f497c = zoneId;
    }

    /* JADX INFO: renamed from: B */
    public static ZonedDateTime m550B(InterfaceC2184l interfaceC2184l) {
        if (interfaceC2184l instanceof ZonedDateTime) {
            return (ZonedDateTime) interfaceC2184l;
        }
        try {
            ZoneId zoneIdM544t = ZoneId.m544t(interfaceC2184l);
            EnumC2173a enumC2173a = EnumC2173a.INSTANT_SECONDS;
            return interfaceC2184l.mo485i(enumC2173a) ? m552t(interfaceC2184l.mo486k(enumC2173a), interfaceC2184l.mo484g(EnumC2173a.NANO_OF_SECOND), zoneIdM544t) : m551G(LocalDateTime.m518I(LocalDate.m502G(interfaceC2184l), C2162j.m694G(interfaceC2184l)), zoneIdM544t, null);
        } catch (C2103c e) {
            C2159g.m690g("Unable to obtain ZonedDateTime from TemporalAccessor: ", interfaceC2184l, interfaceC2184l.getClass().getName(), e);
            return null;
        }
    }

    /* JADX INFO: renamed from: G */
    public static ZonedDateTime m551G(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localDateTime, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new ZonedDateTime(localDateTime, zoneId, (ZoneOffset) zoneId);
        }
        ZoneRules rules = zoneId.getRules();
        List listM741f = rules.m741f(localDateTime);
        if (listM741f.size() == 1) {
            zoneOffset = (ZoneOffset) listM741f.get(0);
        } else if (listM741f.size() == 0) {
            C2199b c2199bM740e = rules.m740e(localDateTime);
            localDateTime = localDateTime.m524X(Duration.ofSeconds(c2199bM740e.f734d.getTotalSeconds() - c2199bM740e.f733c.getTotalSeconds()).getSeconds());
            zoneOffset = c2199bM740e.f734d;
        } else if (zoneOffset == null || !listM741f.contains(zoneOffset)) {
            zoneOffset = (ZoneOffset) listM741f.get(0);
            Objects.requireNonNull(zoneOffset, "offset");
        }
        return new ZonedDateTime(localDateTime, zoneId, zoneOffset);
    }

    public static ZonedDateTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        String string;
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        C2196x c2196x = new C2196x(0);
        Objects.requireNonNull(charSequence, "text");
        try {
            return (ZonedDateTime) dateTimeFormatter.m631b(charSequence).mo482d(c2196x);
        } catch (DateTimeParseException e) {
            throw e;
        } catch (RuntimeException e2) {
            if (charSequence.length() > 64) {
                string = charSequence.subSequence(0, 64).toString() + "...";
            } else {
                string = charSequence.toString();
            }
            DateTimeParseException dateTimeParseException = new DateTimeParseException("Text '" + string + "' could not be parsed: " + e2.getMessage(), e2);
            charSequence.toString();
            throw dateTimeParseException;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: t */
    public static ZonedDateTime m552t(long j, int i, ZoneId zoneId) {
        ZoneOffset offset = zoneId.getRules().getOffset(Instant.ofEpochSecond(j, i));
        return new ZonedDateTime(LocalDateTime.m519P(j, i, offset), zoneId, offset);
    }

    private Object writeReplace() {
        return new C2170r((byte) 6, this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: E */
    public final ChronoZonedDateTime mo553E(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        return this.f497c.equals(zoneId) ? this : m551G(this.f495a, zoneId, this.f496b);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime mo497b(long j, InterfaceC2190r interfaceC2190r) {
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return (ZonedDateTime) interfaceC2190r.mo714t(this, j);
        }
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2190r;
        boolean z = chronoUnit.compareTo(ChronoUnit.DAYS) >= 0 && chronoUnit != ChronoUnit.FOREVER;
        LocalDateTime localDateTime = this.f495a;
        if (z) {
            return m551G(localDateTime.mo497b(j, interfaceC2190r), this.f497c, this.f496b);
        }
        LocalDateTime localDateTimeMo497b = localDateTime.mo497b(j, interfaceC2190r);
        ZoneOffset zoneOffset = this.f496b;
        ZoneId zoneId = this.f497c;
        Objects.requireNonNull(localDateTimeMo497b, "localDateTime");
        Objects.requireNonNull(zoneOffset, "offset");
        Objects.requireNonNull(zoneId, "zone");
        return zoneId.getRules().m741f(localDateTimeMo497b).contains(zoneOffset) ? new ZonedDateTime(localDateTimeMo497b, zoneId, zoneOffset) : m552t(localDateTimeMo497b.toEpochSecond(zoneOffset), localDateTimeMo497b.f477b.f658d, zoneId);
    }

    /* JADX INFO: renamed from: P */
    public final ZonedDateTime m555P(ZoneOffset zoneOffset) {
        return (zoneOffset.equals(this.f496b) || !this.f497c.getRules().m741f(this.f495a).contains(zoneOffset)) ? this : new ZonedDateTime(this.f495a, this.f497c, zoneOffset);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return (ZonedDateTime) interfaceC2188p.mo718V(this, j);
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        int i = AbstractC2197y.f715a[enumC2173a.ordinal()];
        return i != 1 ? i != 2 ? m551G(this.f495a.mo496a(j, interfaceC2188p), this.f497c, this.f496b) : m555P(ZoneOffset.m549Z(enumC2173a.f681b.m728a(j, enumC2173a))) : m552t(j, this.f495a.f477b.f658d, this.f497c);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final ZonedDateTime mo559j(InterfaceC2185m interfaceC2185m) {
        if (interfaceC2185m instanceof LocalDate) {
            return m551G(LocalDateTime.m518I((LocalDate) interfaceC2185m, this.f495a.f477b), this.f497c, this.f496b);
        }
        if (interfaceC2185m instanceof C2162j) {
            return m551G(LocalDateTime.m518I(this.f495a.f476a, (C2162j) interfaceC2185m), this.f497c, this.f496b);
        }
        if (interfaceC2185m instanceof LocalDateTime) {
            return m551G((LocalDateTime) interfaceC2185m, this.f497c, this.f496b);
        }
        if (interfaceC2185m instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) interfaceC2185m;
            return m551G(offsetDateTime.toLocalDateTime(), this.f497c, offsetDateTime.f480b);
        }
        if (!(interfaceC2185m instanceof Instant)) {
            return interfaceC2185m instanceof ZoneOffset ? m555P((ZoneOffset) interfaceC2185m) : (ZonedDateTime) interfaceC2185m.mo483e(this);
        }
        Instant instant = (Instant) interfaceC2185m;
        return m552t(instant.getEpochSecond(), instant.getNano(), this.f497c);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime mo563q(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        return this.f497c.equals(zoneId) ? this : m552t(this.f495a.toEpochSecond(this.f496b), this.f495a.f477b.f658d, zoneId);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final ChronoZonedDateTime mo498c(long j, InterfaceC2190r interfaceC2190r) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo497b(LongCompanionObject.MAX_VALUE, interfaceC2190r);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo497b(j2, interfaceC2190r);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        return c2196x == AbstractC2189q.f702f ? mo561n() : super.mo482d(c2196x);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ZonedDateTime)) {
            return false;
        }
        ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
        return this.f495a.equals(zonedDateTime.f495a) && this.f496b.equals(zonedDateTime.f496b) && this.f497c.equals(zonedDateTime.f497c);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    public final int mo484g(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return super.mo484g(interfaceC2188p);
        }
        int i = AbstractC2197y.f715a[((EnumC2173a) interfaceC2188p).ordinal()];
        if (i != 1) {
            return i != 2 ? this.f495a.mo484g(interfaceC2188p) : this.f496b.getTotalSeconds();
        }
        throw new C2191s("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public ZoneId getZone() {
        return this.f497c;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f497c.hashCode(), 3) ^ (this.f495a.hashCode() ^ this.f496b.f493b);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p instanceof EnumC2173a) {
            return true;
        }
        return interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p.mo717P(this);
        }
        int i = AbstractC2197y.f715a[((EnumC2173a) interfaceC2188p).ordinal()];
        return i != 1 ? i != 2 ? this.f495a.mo486k(interfaceC2188p) : this.f496b.getTotalSeconds() : m570W();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: l */
    public final C2162j mo560l() {
        return this.f495a.f477b;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? (interfaceC2188p == EnumC2173a.INSTANT_SECONDS || interfaceC2188p == EnumC2173a.OFFSET_SECONDS) ? ((EnumC2173a) interfaceC2188p).f681b : this.f495a.mo487m(interfaceC2188p) : interfaceC2188p.mo715B(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: o */
    public final long mo500o(Temporal temporal, InterfaceC2190r interfaceC2190r) {
        ZonedDateTime zonedDateTimeM550B = m550B(temporal);
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return interfaceC2190r.between(this, zonedDateTimeM550B);
        }
        ZonedDateTime zonedDateTimeMo563q = zonedDateTimeM550B.mo563q(this.f497c);
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2190r;
        return (chronoUnit.compareTo(ChronoUnit.DAYS) < 0 || chronoUnit == ChronoUnit.FOREVER) ? new OffsetDateTime(this.f495a, this.f496b).mo500o(new OffsetDateTime(zonedDateTimeMo563q.f495a, zonedDateTimeMo563q.f496b), interfaceC2190r) : this.f495a.mo500o(zonedDateTimeMo563q.f495a, interfaceC2190r);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: p */
    public final ZoneOffset mo562p() {
        return this.f496b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: toLocalDate, reason: merged with bridge method [inline-methods] */
    public LocalDate mo561n() {
        return this.f495a.f476a;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: toLocalDateTime, reason: merged with bridge method [inline-methods] */
    public LocalDateTime mo564y() {
        return this.f495a;
    }

    public final String toString() {
        String str = this.f495a.toString() + this.f496b.f494c;
        ZoneOffset zoneOffset = this.f496b;
        ZoneId zoneId = this.f497c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo498c(long j, InterfaceC2190r interfaceC2190r) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo497b(LongCompanionObject.MAX_VALUE, interfaceC2190r);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo497b(j2, interfaceC2190r);
    }
}
