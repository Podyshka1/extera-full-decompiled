package j$.time;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.InterfaceC1981b;
import j$.time.chrono.InterfaceC1990k;
import j$.time.format.C2009a;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2063q;
import j$.time.temporal.InterfaceC2065s;
import j$.time.zone.C2070b;
import j$.time.zone.ZoneRules;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ZonedDateTime implements InterfaceC2059m, ChronoZonedDateTime<LocalDate>, Serializable {
    private static final long serialVersionUID = -6260982410461394882L;

    /* JADX INFO: renamed from: a */
    public final LocalDateTime f432a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f433b;

    /* JADX INFO: renamed from: c */
    public final ZoneId f434c;

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: C */
    public final /* synthetic */ long mo531C() {
        return AbstractC1965a.m442y(this);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ChronoZonedDateTime<?> chronoZonedDateTime) {
        return AbstractC1965a.m424g(this, chronoZonedDateTime);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: a */
    public final InterfaceC1990k mo534a() {
        return ((LocalDate) mo536f()).mo489a();
    }

    /* JADX INFO: renamed from: v */
    public static ZonedDateTime m529v(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localDateTime, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new ZonedDateTime(localDateTime, zoneId, (ZoneOffset) zoneId);
        }
        ZoneRules rules = zoneId.getRules();
        List listM671f = rules.m671f(localDateTime);
        if (listM671f.size() == 1) {
            zoneOffset = (ZoneOffset) listM671f.get(0);
        } else if (listM671f.size() == 0) {
            C2070b c2070bM670e = rules.m670e(localDateTime);
            localDateTime = localDateTime.m498H(Duration.ofSeconds(c2070bM670e.f640d.getTotalSeconds() - c2070bM670e.f639c.getTotalSeconds()).f401a);
            zoneOffset = c2070bM670e.f640d;
        } else if (zoneOffset == null || !listM671f.contains(zoneOffset)) {
            zoneOffset = (ZoneOffset) Objects.requireNonNull((ZoneOffset) listM671f.get(0), "offset");
        }
        return new ZonedDateTime(localDateTime, zoneId, zoneOffset);
    }

    /* JADX INFO: renamed from: n */
    public static ZonedDateTime m528n(long j, int i, ZoneId zoneId) {
        ZoneOffset offset = zoneId.getRules().getOffset(Instant.m464D(j, i));
        return new ZonedDateTime(LocalDateTime.m495F(j, i, offset), zoneId, offset);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final Instant toInstant() {
        return Instant.m464D(mo531C(), mo535b().f565d);
    }

    public ZonedDateTime(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        this.f432a = localDateTime;
        this.f433b = zoneOffset;
        this.f434c = zoneId;
    }

    /* JADX INFO: renamed from: D */
    public final ZonedDateTime m532D(LocalDateTime localDateTime) {
        return m529v(localDateTime, this.f434c, this.f433b);
    }

    /* JADX INFO: renamed from: E */
    public final ZonedDateTime m533E(ZoneOffset zoneOffset) {
        return (zoneOffset.equals(this.f433b) || !this.f434c.getRules().m671f(this.f432a).contains(zoneOffset)) ? this : new ZonedDateTime(this.f432a, this.f434c, zoneOffset);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            return true;
        }
        return interfaceC2063q != null && interfaceC2063q.mo644h(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            if (interfaceC2063q == EnumC2047a.INSTANT_SECONDS || interfaceC2063q == EnumC2047a.OFFSET_SECONDS) {
                return ((EnumC2047a) interfaceC2063q).f592b;
            }
            return this.f432a.mo457j(interfaceC2063q);
        }
        return interfaceC2063q.mo645i(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final int mo456h(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            int i = AbstractC2068u.f621a[((EnumC2047a) interfaceC2063q).ordinal()];
            if (i == 1) {
                throw new C2066t("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i == 2) {
                return this.f433b.getTotalSeconds();
            }
            return this.f432a.mo456h(interfaceC2063q);
        }
        return AbstractC1965a.m430m(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return interfaceC2063q.mo647k(this);
        }
        int i = AbstractC2068u.f621a[((EnumC2047a) interfaceC2063q).ordinal()];
        return i != 1 ? i != 2 ? this.f432a.mo460w(interfaceC2063q) : this.f433b.getTotalSeconds() : AbstractC1965a.m442y(this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: g */
    public final ZoneOffset mo537g() {
        return this.f433b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: u */
    public final ZoneId mo540u() {
        return this.f434c;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: q */
    public final ChronoZonedDateTime mo539q(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        return this.f434c.equals(zoneId) ? this : m529v(this.f432a, zoneId, this.f433b);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: o */
    public final ChronoLocalDateTime mo538o() {
        return this.f432a;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: f */
    public final InterfaceC1981b mo536f() {
        return this.f432a.f413a;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: b */
    public final C2034h mo535b() {
        return this.f432a.f414b;
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2059m mo470i(LocalDate localDate) {
        if (AbstractC1970c.m542b(localDate)) {
            return m532D(LocalDateTime.m494E(localDate, this.f432a.f414b));
        }
        return (ZonedDateTime) localDate.mo459n(this);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: c */
    public final InterfaceC2059m mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
            int i = AbstractC2068u.f621a[enumC2047a.ordinal()];
            if (i == 1) {
                return m528n(j, this.f432a.f414b.f565d, this.f434c);
            }
            if (i == 2) {
                return m533E(ZoneOffset.m524H(enumC2047a.f592b.m661a(j, enumC2047a)));
            }
            return m532D(this.f432a.mo468c(j, interfaceC2063q));
        }
        return (ZonedDateTime) interfaceC2063q.mo648n(this, j);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime mo469d(long j, InterfaceC2065s interfaceC2065s) {
        if (!(interfaceC2065s instanceof EnumC2048b)) {
            return (ZonedDateTime) interfaceC2065s.mo651h(this, j);
        }
        EnumC2048b enumC2048b = (EnumC2048b) interfaceC2065s;
        if (enumC2048b.compareTo(EnumC2048b.DAYS) >= 0 && enumC2048b != EnumC2048b.FOREVER) {
            return m532D(this.f432a.mo469d(j, interfaceC2065s));
        }
        LocalDateTime localDateTimeMo469d = this.f432a.mo469d(j, interfaceC2065s);
        ZoneOffset zoneOffset = this.f433b;
        ZoneId zoneId = this.f434c;
        Objects.requireNonNull(localDateTimeMo469d, "localDateTime");
        Objects.requireNonNull(zoneOffset, "offset");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId.getRules().m671f(localDateTimeMo469d).contains(zoneOffset)) {
            return new ZonedDateTime(localDateTimeMo469d, zoneId, zoneOffset);
        }
        localDateTimeMo469d.getClass();
        return m528n(AbstractC1965a.m441x(localDateTimeMo469d, zoneOffset), localDateTimeMo469d.f414b.f565d, zoneId);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2059m mo471r(long j, EnumC2048b enumC2048b) {
        return j == Long.MIN_VALUE ? mo469d(Long.MAX_VALUE, enumC2048b).mo469d(1L, enumC2048b) : mo469d(-j, enumC2048b);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final Object mo458k(C2009a c2009a) {
        if (c2009a == AbstractC2064r.f615f) {
            return this.f432a.f413a;
        }
        return AbstractC1965a.m439v(this, c2009a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZonedDateTime) {
            ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
            if (this.f432a.equals(zonedDateTime.f432a) && this.f433b.equals(zonedDateTime.f433b) && this.f434c.equals(zonedDateTime.f434c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f432a.hashCode() ^ this.f433b.f430b) ^ Integer.rotateLeft(this.f434c.hashCode(), 3);
    }

    public final String toString() {
        String str = this.f432a.toString() + this.f433b.f431c;
        ZoneOffset zoneOffset = this.f433b;
        ZoneId zoneId = this.f434c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }

    private Object writeReplace() {
        return new C2041o((byte) 6, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
