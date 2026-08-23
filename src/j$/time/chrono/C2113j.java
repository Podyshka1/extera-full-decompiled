package j$.time.chrono;

import j$.time.C2159g;
import j$.time.Duration;
import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
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

/* JADX INFO: renamed from: j$.time.chrono.j */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2113j implements ChronoZonedDateTime, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;

    /* JADX INFO: renamed from: a */
    public final transient C2109f f523a;

    /* JADX INFO: renamed from: b */
    public final transient ZoneOffset f524b;

    /* JADX INFO: renamed from: c */
    public final transient ZoneId f525c;

    public C2113j(ZoneId zoneId, ZoneOffset zoneOffset, C2109f c2109f) {
        Objects.requireNonNull(c2109f, "dateTime");
        this.f523a = c2109f;
        Objects.requireNonNull(zoneOffset, "offset");
        this.f524b = zoneOffset;
        Objects.requireNonNull(zoneId, "zone");
        this.f525c = zoneId;
    }

    /* JADX INFO: renamed from: B */
    public static C2113j m608B(ZoneId zoneId, ZoneOffset zoneOffset, C2109f c2109f) {
        Objects.requireNonNull(c2109f, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new C2113j(zoneId, (ZoneOffset) zoneId, c2109f);
        }
        ZoneRules rules = zoneId.getRules();
        LocalDateTime localDateTimeM517B = LocalDateTime.m517B(c2109f);
        List listM741f = rules.m741f(localDateTimeM517B);
        if (listM741f.size() == 1) {
            zoneOffset = (ZoneOffset) listM741f.get(0);
        } else if (listM741f.size() == 0) {
            C2199b c2199bM740e = rules.m740e(localDateTimeM517B);
            c2109f = c2109f.m590G(c2109f.f510a, 0L, 0L, Duration.ofSeconds(c2199bM740e.f734d.getTotalSeconds() - c2199bM740e.f733c.getTotalSeconds()).getSeconds(), 0L);
            zoneOffset = c2199bM740e.f734d;
        } else {
            if (zoneOffset == null || !listM741f.contains(zoneOffset)) {
                zoneOffset = (ZoneOffset) listM741f.get(0);
            }
            c2109f = c2109f;
        }
        Objects.requireNonNull(zoneOffset, "offset");
        return new C2113j(zoneId, zoneOffset, c2109f);
    }

    /* JADX INFO: renamed from: G */
    public static C2113j m609G(InterfaceC2114k interfaceC2114k, Instant instant, ZoneId zoneId) {
        ZoneOffset offset = zoneId.getRules().getOffset(instant);
        Objects.requireNonNull(offset, "offset");
        return new C2113j(zoneId, offset, (C2109f) interfaceC2114k.mo612M(LocalDateTime.m519P(instant.getEpochSecond(), instant.getNano(), offset)));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: t */
    public static C2113j m610t(InterfaceC2114k interfaceC2114k, Temporal temporal) {
        C2113j c2113j = (C2113j) temporal;
        if (interfaceC2114k.equals(c2113j.m571f())) {
            return c2113j;
        }
        C2159g.m688e("Chronology mismatch, required: ", interfaceC2114k.getId(), c2113j.m571f().getId());
        return null;
    }

    private Object writeReplace() {
        return new d0((byte) 3, this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: E */
    public final ChronoZonedDateTime mo553E(ZoneId zoneId) {
        return m608B(zoneId, this.f524b, this.f523a);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public final ChronoZonedDateTime mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return m610t(m571f(), interfaceC2188p.mo718V(this, j));
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        int i = AbstractC2112i.f521a[enumC2173a.ordinal()];
        if (i == 1) {
            return mo497b(j - m570W(), (InterfaceC2190r) ChronoUnit.SECONDS);
        }
        if (i != 2) {
            return m608B(this.f525c, this.f524b, this.f523a.mo496a(j, interfaceC2188p));
        }
        return m609G(m571f(), this.f523a.toInstant(ZoneOffset.m549Z(enumC2173a.f681b.m728a(j, enumC2173a))), this.f525c);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime, j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    public final ChronoZonedDateTime mo497b(long j, InterfaceC2190r interfaceC2190r) {
        return interfaceC2190r instanceof ChronoUnit ? mo559j(this.f523a.mo497b(j, interfaceC2190r)) : m610t(m571f(), interfaceC2190r.mo714t(this, j));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoZonedDateTime) && compareTo((ChronoZonedDateTime) obj) == 0;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneId getZone() {
        return this.f525c;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f525c.hashCode(), 3) ^ (this.f523a.hashCode() ^ this.f524b.f493b);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p instanceof EnumC2173a) {
            return true;
        }
        return interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: o */
    public final long mo500o(Temporal temporal, InterfaceC2190r interfaceC2190r) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoZonedDateTime chronoZonedDateTimeMo613w = m571f().mo613w(temporal);
        if (interfaceC2190r instanceof ChronoUnit) {
            return this.f523a.mo500o(chronoZonedDateTimeMo613w.mo563q(this.f524b).mo564y(), interfaceC2190r);
        }
        Objects.requireNonNull(interfaceC2190r, "unit");
        return interfaceC2190r.between(this, chronoZonedDateTimeMo613w);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: p */
    public final ZoneOffset mo562p() {
        return this.f524b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: q */
    public final ChronoZonedDateTime mo563q(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        if (this.f525c.equals(zoneId)) {
            return this;
        }
        return m609G(m571f(), this.f523a.toInstant(this.f524b), zoneId);
    }

    public final String toString() {
        String str = this.f523a.toString() + this.f524b.f494c;
        ZoneOffset zoneOffset = this.f524b;
        ZoneId zoneId = this.f525c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: y */
    public final ChronoLocalDateTime mo564y() {
        return this.f523a;
    }
}
