package j$.time.chrono;

import j$.nio.file.C2148b;
import j$.time.Duration;
import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
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

/* JADX INFO: renamed from: j$.time.chrono.j */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2195j implements ChronoZonedDateTime, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;

    /* JADX INFO: renamed from: a */
    public final transient C2191f f679a;

    /* JADX INFO: renamed from: b */
    public final transient ZoneOffset f680b;

    /* JADX INFO: renamed from: c */
    public final transient ZoneId f681c;

    public C2195j(ZoneId zoneId, ZoneOffset zoneOffset, C2191f c2191f) {
        Objects.requireNonNull(c2191f, "dateTime");
        this.f679a = c2191f;
        Objects.requireNonNull(zoneOffset, "offset");
        this.f680b = zoneOffset;
        Objects.requireNonNull(zoneId, "zone");
        this.f681c = zoneId;
    }

    /* JADX INFO: renamed from: D */
    public static C2195j m755D(ZoneId zoneId, ZoneOffset zoneOffset, C2191f c2191f) {
        Objects.requireNonNull(c2191f, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new C2195j(zoneId, (ZoneOffset) zoneId, c2191f);
        }
        ZoneRules rules = zoneId.getRules();
        LocalDateTime localDateTimeM670D = LocalDateTime.m670D(c2191f);
        List listM848f = rules.m848f(localDateTimeM670D);
        if (listM848f.size() == 1) {
            zoneOffset = (ZoneOffset) listM848f.get(0);
        } else if (listM848f.size() == 0) {
            C2274b c2274bM847e = rules.m847e(localDateTimeM670D);
            c2191f = c2191f.m739I(c2191f.f666a, 0L, 0L, Duration.ofSeconds(c2274bM847e.f876d.getTotalSeconds() - c2274bM847e.f875c.getTotalSeconds()).getSeconds(), 0L);
            zoneOffset = c2274bM847e.f876d;
        } else {
            if (zoneOffset == null || !listM848f.contains(zoneOffset)) {
                zoneOffset = (ZoneOffset) listM848f.get(0);
            }
            c2191f = c2191f;
        }
        Objects.requireNonNull(zoneOffset, "offset");
        return new C2195j(zoneId, zoneOffset, c2191f);
    }

    /* JADX INFO: renamed from: I */
    public static C2195j m756I(InterfaceC2196k interfaceC2196k, Instant instant, ZoneId zoneId) {
        ZoneOffset offset = zoneId.getRules().getOffset(instant);
        Objects.requireNonNull(offset, "offset");
        return new C2195j(zoneId, offset, (C2191f) interfaceC2196k.mo759O(LocalDateTime.m671K(instant.getEpochSecond(), instant.getNano(), offset)));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: s */
    public static C2195j m757s(InterfaceC2196k interfaceC2196k, Temporal temporal) {
        C2195j c2195j = (C2195j) temporal;
        if (interfaceC2196k.equals(c2195j.m722f())) {
            return c2195j;
        }
        C2148b.m618k("Chronology mismatch, required: ", interfaceC2196k.getId(), c2195j.m722f().getId());
        return null;
    }

    private Object writeReplace() {
        return new d0((byte) 3, this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: A */
    public final ChronoLocalDateTime mo711A() {
        return this.f679a;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: G */
    public final ChronoZonedDateTime mo712G(ZoneId zoneId) {
        return m755D(zoneId, this.f680b, this.f679a);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public final ChronoZonedDateTime mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return m757s(m722f(), interfaceC2269p.mo832Y(this, j));
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        int i = AbstractC2194i.f677a[enumC2254a.ordinal()];
        if (i == 1) {
            return mo653b(j - m721Z(), (TemporalUnit) ChronoUnit.SECONDS);
        }
        if (i != 2) {
            return m755D(this.f681c, this.f680b, this.f679a.mo652a(j, interfaceC2269p));
        }
        return m756I(m722f(), this.f679a.toInstant(ZoneOffset.ofTotalSeconds(enumC2254a.f830b.m837a(j, enumC2254a))), this.f681c);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final ChronoZonedDateTime mo653b(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? mo716j(this.f679a.mo653b(j, temporalUnit)) : m757s(m722f(), temporalUnit.mo828s(this, j));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoZonedDateTime) && compareTo((ChronoZonedDateTime) obj) == 0;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneOffset getOffset() {
        return this.f680b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneId getZone() {
        return this.f681c;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f681c.hashCode(), 3) ^ (this.f679a.hashCode() ^ this.f680b.f649b);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p instanceof EnumC2254a) {
            return true;
        }
        return interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo656n(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoZonedDateTime chronoZonedDateTimeMo760w = m722f().mo760w(temporal);
        if (temporalUnit instanceof ChronoUnit) {
            return this.f679a.mo656n(chronoZonedDateTimeMo760w.mo718o(this.f680b).mo711A(), temporalUnit);
        }
        Objects.requireNonNull(temporalUnit, "unit");
        return temporalUnit.between(this, chronoZonedDateTimeMo760w);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: o */
    public final ChronoZonedDateTime mo718o(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        if (this.f681c.equals(zoneId)) {
            return this;
        }
        return m756I(m722f(), this.f679a.toInstant(this.f680b), zoneId);
    }

    public final String toString() {
        String str = this.f679a.toString() + this.f680b.f650c;
        ZoneOffset zoneOffset = this.f680b;
        ZoneId zoneId = this.f681c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }
}
