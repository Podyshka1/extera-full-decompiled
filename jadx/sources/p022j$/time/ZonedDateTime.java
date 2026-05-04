package p022j$.time;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.chrono.ChronoLocalDateTime;
import p022j$.time.chrono.ChronoZonedDateTime;
import p022j$.time.chrono.InterfaceC2120b;
import p022j$.time.chrono.InterfaceC2129k;
import p022j$.time.format.C2148a;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.time.temporal.InterfaceC2204s;
import p022j$.time.zone.C2209b;
import p022j$.time.zone.ZoneRules;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class ZonedDateTime implements InterfaceC2198m, ChronoZonedDateTime<LocalDate>, Serializable {
    private static final long serialVersionUID = -6260982410461394882L;

    /* JADX INFO: renamed from: a */
    public final LocalDateTime f664a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f665b;

    /* JADX INFO: renamed from: c */
    public final ZoneId f666c;

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: C */
    public final /* synthetic */ long mo654C() {
        return AbstractC2104a.m562y(this);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ChronoZonedDateTime<?> chronoZonedDateTime) {
        return AbstractC2104a.m544g(this, chronoZonedDateTime);
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: a */
    public final InterfaceC2129k mo657a() {
        return ((LocalDate) mo659f()).mo610a();
    }

    /* JADX INFO: renamed from: v */
    public static ZonedDateTime m652v(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localDateTime, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new ZonedDateTime(localDateTime, zoneId, (ZoneOffset) zoneId);
        }
        ZoneRules rules = zoneId.getRules();
        List listM796f = rules.m796f(localDateTime);
        if (listM796f.size() == 1) {
            zoneOffset = (ZoneOffset) listM796f.get(0);
        } else if (listM796f.size() == 0) {
            C2209b c2209bM795e = rules.m795e(localDateTime);
            localDateTime = localDateTime.m619H(Duration.ofSeconds(c2209bM795e.f875d.getTotalSeconds() - c2209bM795e.f874c.getTotalSeconds()).f633a);
            zoneOffset = c2209bM795e.f875d;
        } else if (zoneOffset == null || !listM796f.contains(zoneOffset)) {
            zoneOffset = (ZoneOffset) Objects.requireNonNull((ZoneOffset) listM796f.get(0), "offset");
        }
        return new ZonedDateTime(localDateTime, zoneId, zoneOffset);
    }

    /* JADX INFO: renamed from: n */
    public static ZonedDateTime m651n(long j, int i, ZoneId zoneId) {
        ZoneOffset offset = zoneId.getRules().getOffset(Instant.m584D(j, i));
        return new ZonedDateTime(LocalDateTime.m616F(j, i, offset), zoneId, offset);
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    public final Instant toInstant() {
        return Instant.m584D(mo654C(), mo658b().f800d);
    }

    public ZonedDateTime(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        this.f664a = localDateTime;
        this.f665b = zoneOffset;
        this.f666c = zoneId;
    }

    /* JADX INFO: renamed from: D */
    public final ZonedDateTime m655D(LocalDateTime localDateTime) {
        return m652v(localDateTime, this.f666c, this.f665b);
    }

    /* JADX INFO: renamed from: E */
    public final ZonedDateTime m656E(ZoneOffset zoneOffset) {
        return (zoneOffset.equals(this.f665b) || !this.f666c.getRules().m796f(this.f664a).contains(zoneOffset)) ? this : new ZonedDateTime(this.f664a, this.f666c, zoneOffset);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            return true;
        }
        return interfaceC2202q != null && interfaceC2202q.mo769h(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            if (interfaceC2202q == EnumC2186a.INSTANT_SECONDS || interfaceC2202q == EnumC2186a.OFFSET_SECONDS) {
                return ((EnumC2186a) interfaceC2202q).f827b;
            }
            return this.f664a.mo577j(interfaceC2202q);
        }
        return interfaceC2202q.mo770i(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final int mo576h(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            int i = AbstractC2207u.f856a[((EnumC2186a) interfaceC2202q).ordinal()];
            if (i == 1) {
                throw new C2205t("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i == 2) {
                return this.f665b.getTotalSeconds();
            }
            return this.f664a.mo576h(interfaceC2202q);
        }
        return AbstractC2104a.m550m(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return interfaceC2202q.mo772k(this);
        }
        int i = AbstractC2207u.f856a[((EnumC2186a) interfaceC2202q).ordinal()];
        return i != 1 ? i != 2 ? this.f664a.mo580w(interfaceC2202q) : this.f665b.getTotalSeconds() : AbstractC2104a.m562y(this);
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: g */
    public final ZoneOffset mo660g() {
        return this.f665b;
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: u */
    public final ZoneId mo663u() {
        return this.f666c;
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: q */
    public final ChronoZonedDateTime mo662q(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        return this.f666c.equals(zoneId) ? this : m652v(this.f664a, zoneId, this.f665b);
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: o */
    public final ChronoLocalDateTime mo661o() {
        return this.f664a;
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: f */
    public final InterfaceC2120b mo659f() {
        return this.f664a.f645a;
    }

    @Override // p022j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: b */
    public final C2173h mo658b() {
        return this.f664a.f646b;
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2198m mo590i(LocalDate localDate) {
        if (AbstractC2109c.m665b(localDate)) {
            return m655D(LocalDateTime.m615E(localDate, this.f664a.f646b));
        }
        return (ZonedDateTime) localDate.mo579n(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: c */
    public final InterfaceC2198m mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
            int i = AbstractC2207u.f856a[enumC2186a.ordinal()];
            if (i == 1) {
                return m651n(j, this.f664a.f646b.f800d, this.f666c);
            }
            if (i == 2) {
                return m656E(ZoneOffset.m647H(enumC2186a.f827b.m786a(j, enumC2186a)));
            }
            return m655D(this.f664a.mo588c(j, interfaceC2202q));
        }
        return (ZonedDateTime) interfaceC2202q.mo773n(this, j);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime mo589d(long j, InterfaceC2204s interfaceC2204s) {
        if (!(interfaceC2204s instanceof EnumC2187b)) {
            return (ZonedDateTime) interfaceC2204s.mo776h(this, j);
        }
        EnumC2187b enumC2187b = (EnumC2187b) interfaceC2204s;
        if (enumC2187b.compareTo(EnumC2187b.DAYS) >= 0 && enumC2187b != EnumC2187b.FOREVER) {
            return m655D(this.f664a.mo589d(j, interfaceC2204s));
        }
        LocalDateTime localDateTimeMo589d = this.f664a.mo589d(j, interfaceC2204s);
        ZoneOffset zoneOffset = this.f665b;
        ZoneId zoneId = this.f666c;
        Objects.requireNonNull(localDateTimeMo589d, "localDateTime");
        Objects.requireNonNull(zoneOffset, "offset");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId.getRules().m796f(localDateTimeMo589d).contains(zoneOffset)) {
            return new ZonedDateTime(localDateTimeMo589d, zoneId, zoneOffset);
        }
        localDateTimeMo589d.getClass();
        return m651n(AbstractC2104a.m561x(localDateTimeMo589d, zoneOffset), localDateTimeMo589d.f646b.f800d, zoneId);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2198m mo591r(long j, EnumC2187b enumC2187b) {
        return j == Long.MIN_VALUE ? mo589d(Long.MAX_VALUE, enumC2187b).mo589d(1L, enumC2187b) : mo589d(-j, enumC2187b);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final Object mo578k(C2148a c2148a) {
        if (c2148a == AbstractC2203r.f850f) {
            return this.f664a.f645a;
        }
        return AbstractC2104a.m559v(this, c2148a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZonedDateTime) {
            ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
            if (this.f664a.equals(zonedDateTime.f664a) && this.f665b.equals(zonedDateTime.f665b) && this.f666c.equals(zonedDateTime.f666c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f664a.hashCode() ^ this.f665b.f662b) ^ Integer.rotateLeft(this.f666c.hashCode(), 3);
    }

    public final String toString() {
        String str = this.f664a.toString() + this.f665b.f663c;
        ZoneOffset zoneOffset = this.f665b;
        ZoneId zoneId = this.f666c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }

    private Object writeReplace() {
        return new C2180o((byte) 6, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
