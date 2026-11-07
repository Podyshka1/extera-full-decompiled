package j$.time.chrono;

import j$.nio.file.C2288b;
import j$.time.Duration;
import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
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

/* JADX INFO: renamed from: j$.time.chrono.j */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2335j implements ChronoZonedDateTime, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;

    /* JADX INFO: renamed from: a */
    public final transient C2331f f681a;

    /* JADX INFO: renamed from: b */
    public final transient ZoneOffset f682b;

    /* JADX INFO: renamed from: c */
    public final transient ZoneId f683c;

    public C2335j(ZoneId zoneId, ZoneOffset zoneOffset, C2331f c2331f) {
        Objects.requireNonNull(c2331f, "dateTime");
        this.f681a = c2331f;
        Objects.requireNonNull(zoneOffset, "offset");
        this.f682b = zoneOffset;
        Objects.requireNonNull(zoneId, "zone");
        this.f683c = zoneId;
    }

    /* JADX INFO: renamed from: D */
    public static C2335j m792D(ZoneId zoneId, ZoneOffset zoneOffset, C2331f c2331f) {
        Objects.requireNonNull(c2331f, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new C2335j(zoneId, (ZoneOffset) zoneId, c2331f);
        }
        ZoneRules rules = zoneId.getRules();
        LocalDateTime localDateTimeM695D = LocalDateTime.m695D(c2331f);
        List listM896f = rules.m896f(localDateTimeM695D);
        if (listM896f.size() == 1) {
            zoneOffset = (ZoneOffset) listM896f.get(0);
        } else if (listM896f.size() == 0) {
            C2413b c2413bM895e = rules.m895e(localDateTimeM695D);
            c2331f = c2331f.m774I(c2331f.f668a, 0L, 0L, Duration.ofSeconds(c2413bM895e.f878d.getTotalSeconds() - c2413bM895e.f877c.getTotalSeconds()).getSeconds(), 0L);
            zoneOffset = c2413bM895e.f878d;
        } else {
            if (zoneOffset == null || !listM896f.contains(zoneOffset)) {
                zoneOffset = (ZoneOffset) listM896f.get(0);
            }
            c2331f = c2331f;
        }
        Objects.requireNonNull(zoneOffset, "offset");
        return new C2335j(zoneId, zoneOffset, c2331f);
    }

    /* JADX INFO: renamed from: I */
    public static C2335j m793I(InterfaceC2336k interfaceC2336k, Instant instant, ZoneId zoneId) {
        ZoneOffset offset = zoneId.getRules().getOffset(instant);
        Objects.requireNonNull(offset, "offset");
        return new C2335j(zoneId, offset, (C2331f) interfaceC2336k.mo796N(LocalDateTime.m696K(instant.getEpochSecond(), instant.getNano(), offset)));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: s */
    public static C2335j m794s(InterfaceC2336k interfaceC2336k, Temporal temporal) {
        C2335j c2335j = (C2335j) temporal;
        if (interfaceC2336k.equals(c2335j.m755f())) {
            return c2335j;
        }
        C2288b.m642k("Chronology mismatch, required: ", interfaceC2336k.getId(), c2335j.m755f().getId());
        return null;
    }

    private Object writeReplace() {
        return new d0((byte) 3, this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: A */
    public final ChronoLocalDateTime mo744A() {
        return this.f681a;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: G */
    public final ChronoZonedDateTime mo745G(ZoneId zoneId) {
        return m792D(zoneId, this.f682b, this.f681a);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public final ChronoZonedDateTime mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return m794s(m755f(), interfaceC2408p.mo876X(this, j));
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        int i = AbstractC2334i.f679a[enumC2393a.ordinal()];
        if (i == 1) {
            return mo677b(j - toEpochSecond(), (TemporalUnit) ChronoUnit.SECONDS);
        }
        if (i != 2) {
            return m792D(this.f683c, this.f682b, this.f681a.mo676a(j, interfaceC2408p));
        }
        return m793I(m755f(), this.f681a.toInstant(ZoneOffset.ofTotalSeconds(enumC2393a.f832b.m885a(j, enumC2393a))), this.f683c);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final ChronoZonedDateTime mo677b(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? mo750j(this.f681a.mo677b(j, temporalUnit)) : m794s(m755f(), temporalUnit.mo872s(this, j));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoZonedDateTime) && compareTo((ChronoZonedDateTime) obj) == 0;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneOffset getOffset() {
        return this.f682b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneId getZone() {
        return this.f683c;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f683c.hashCode(), 3) ^ (this.f681a.hashCode() ^ this.f682b.f650b);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        if (interfaceC2408p instanceof EnumC2393a) {
            return true;
        }
        return interfaceC2408p != null && interfaceC2408p.mo879s(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo680n(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoZonedDateTime chronoZonedDateTimeMo797w = m755f().mo797w(temporal);
        if (temporalUnit instanceof ChronoUnit) {
            return this.f681a.mo680n(chronoZonedDateTimeMo797w.mo752o(this.f682b).mo744A(), temporalUnit);
        }
        Objects.requireNonNull(temporalUnit, "unit");
        return temporalUnit.between(this, chronoZonedDateTimeMo797w);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: o */
    public final ChronoZonedDateTime mo752o(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        if (this.f683c.equals(zoneId)) {
            return this;
        }
        return m793I(m755f(), this.f681a.toInstant(this.f682b), zoneId);
    }

    public final String toString() {
        String str = this.f681a.toString() + this.f682b.f651c;
        ZoneOffset zoneOffset = this.f682b;
        ZoneId zoneId = this.f683c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }
}
