package p022j$.time;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.chrono.ChronoLocalDateTime;
import p022j$.time.chrono.ChronoZonedDateTime;
import p022j$.time.chrono.InterfaceC2120b;
import p022j$.time.chrono.InterfaceC2129k;
import p022j$.time.format.C2148a;
import p022j$.time.format.DateTimeFormatter;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.time.temporal.InterfaceC2204s;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class LocalDateTime implements InterfaceC2198m, InterfaceC2200o, ChronoLocalDateTime<LocalDate>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final LocalDateTime f643c = m615E(LocalDate.f638d, C2173h.f793e);

    /* JADX INFO: renamed from: d */
    public static final LocalDateTime f644d = m615E(LocalDate.f639e, C2173h.f794f);
    private static final long serialVersionUID = 6207766400415563566L;

    /* JADX INFO: renamed from: a */
    public final LocalDate f645a;

    /* JADX INFO: renamed from: b */
    public final C2173h f646b;

    @Override // p022j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: a */
    public final InterfaceC2129k mo624a() {
        return ((LocalDate) mo626f()).mo610a();
    }

    @Override // p022j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: l */
    public final ChronoZonedDateTime mo627l(ZoneOffset zoneOffset) {
        return ZonedDateTime.m652v(this, zoneOffset, null);
    }

    /* JADX INFO: renamed from: E */
    public static LocalDateTime m615E(LocalDate localDate, C2173h c2173h) {
        Objects.requireNonNull(localDate, "date");
        Objects.requireNonNull(c2173h, "time");
        return new LocalDateTime(localDate, c2173h);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        return interfaceC2198m.mo588c(((LocalDate) mo626f()).mo612x(), EnumC2186a.EPOCH_DAY).mo588c(mo625b().m748M(), EnumC2186a.NANO_OF_DAY);
    }

    /* JADX INFO: renamed from: F */
    public static LocalDateTime m616F(long j, int i, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        long j2 = i;
        EnumC2186a.NANO_OF_SECOND.m774r(j2);
        long totalSeconds = j + ((long) zoneOffset.getTotalSeconds());
        long j3 = 86400;
        return new LocalDateTime(LocalDate.m594K(AbstractC2104a.m534T(totalSeconds, j3)), C2173h.m740F((((long) ((int) AbstractC2104a.m533S(totalSeconds, j3))) * 1000000000) + j2));
    }

    /* JADX INFO: renamed from: A */
    public static LocalDateTime m614A(InterfaceC2199n interfaceC2199n) {
        if (interfaceC2199n instanceof LocalDateTime) {
            return (LocalDateTime) interfaceC2199n;
        }
        if (!(interfaceC2199n instanceof ZonedDateTime)) {
            if (interfaceC2199n instanceof OffsetDateTime) {
                return ((OffsetDateTime) interfaceC2199n).toLocalDateTime();
            }
            try {
                return new LocalDateTime(LocalDate.m593D(interfaceC2199n), C2173h.m739D(interfaceC2199n));
            } catch (C2108b e) {
                throw new C2108b("Unable to obtain LocalDateTime from TemporalAccessor: " + interfaceC2199n + " of type " + interfaceC2199n.getClass().getName(), e);
            }
        }
        return ((ZonedDateTime) interfaceC2199n).f664a;
    }

    @Override // p022j$.time.chrono.ChronoLocalDateTime
    public final Instant toInstant(ZoneOffset zoneOffset) {
        return Instant.m584D(AbstractC2104a.m561x(this, zoneOffset), mo625b().f800d);
    }

    public LocalDateTime(LocalDate localDate, C2173h c2173h) {
        this.f645a = localDate;
        this.f646b = c2173h;
    }

    /* JADX INFO: renamed from: K */
    public final LocalDateTime m622K(LocalDate localDate, C2173h c2173h) {
        return (this.f645a == localDate && this.f646b == c2173h) ? this : new LocalDateTime(localDate, c2173h);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return interfaceC2202q != null && interfaceC2202q.mo769h(this);
        }
        EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
        return enumC2186a.isDateBased() || enumC2186a.m775v();
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            if (((EnumC2186a) interfaceC2202q).m775v()) {
                C2173h c2173h = this.f646b;
                c2173h.getClass();
                return AbstractC2203r.m783d(c2173h, interfaceC2202q);
            }
            return this.f645a.mo577j(interfaceC2202q);
        }
        return interfaceC2202q.mo770i(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final int mo576h(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            return ((EnumC2186a) interfaceC2202q).m775v() ? this.f646b.mo576h(interfaceC2202q) : this.f645a.mo576h(interfaceC2202q);
        }
        return AbstractC2203r.m780a(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            return ((EnumC2186a) interfaceC2202q).m775v() ? this.f646b.mo580w(interfaceC2202q) : this.f645a.mo580w(interfaceC2202q);
        }
        return interfaceC2202q.mo772k(this);
    }

    @Override // p022j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: f */
    public final InterfaceC2120b mo626f() {
        return this.f645a;
    }

    @Override // p022j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: b */
    public final C2173h mo625b() {
        return this.f646b;
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime mo590i(InterfaceC2200o interfaceC2200o) {
        if (interfaceC2200o instanceof LocalDate) {
            return m622K((LocalDate) interfaceC2200o, this.f646b);
        }
        if (interfaceC2200o instanceof C2173h) {
            return m622K(this.f645a, (C2173h) interfaceC2200o);
        }
        if (interfaceC2200o instanceof LocalDateTime) {
            return (LocalDateTime) interfaceC2200o;
        }
        return (LocalDateTime) interfaceC2200o.mo579n(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            if (((EnumC2186a) interfaceC2202q).m775v()) {
                return m622K(this.f645a, this.f646b.mo588c(j, interfaceC2202q));
            }
            return m622K(this.f645a.mo588c(j, interfaceC2202q), this.f646b);
        }
        return (LocalDateTime) interfaceC2202q.mo773n(this, j);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime mo589d(long j, InterfaceC2204s interfaceC2204s) {
        if (!(interfaceC2204s instanceof EnumC2187b)) {
            return (LocalDateTime) interfaceC2204s.mo776h(this, j);
        }
        switch (AbstractC2147f.f735a[((EnumC2187b) interfaceC2204s).ordinal()]) {
            case 1:
                return m620I(this.f645a, 0L, 0L, 0L, j);
            case 2:
                LocalDateTime localDateTimeM622K = m622K(this.f645a.plusDays(j / 86400000000L), this.f646b);
                return localDateTimeM622K.m620I(localDateTimeM622K.f645a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                LocalDateTime localDateTimeM622K2 = m622K(this.f645a.plusDays(j / 86400000), this.f646b);
                return localDateTimeM622K2.m620I(localDateTimeM622K2.f645a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return m619H(j);
            case 5:
                return m620I(this.f645a, 0L, j, 0L, 0L);
            case 6:
                return m620I(this.f645a, j, 0L, 0L, 0L);
            case 7:
                LocalDateTime localDateTimeM622K3 = m622K(this.f645a.plusDays(j / 256), this.f646b);
                return localDateTimeM622K3.m620I(localDateTimeM622K3.f645a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return m622K(this.f645a.mo589d(j, interfaceC2204s), this.f646b);
        }
    }

    /* JADX INFO: renamed from: H */
    public final LocalDateTime m619H(long j) {
        return m620I(this.f645a, 0L, 0L, j, 0L);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2198m mo591r(long j, EnumC2187b enumC2187b) {
        return j == Long.MIN_VALUE ? mo589d(Long.MAX_VALUE, enumC2187b).mo589d(1L, enumC2187b) : mo589d(-j, enumC2187b);
    }

    /* JADX INFO: renamed from: I */
    public final LocalDateTime m620I(LocalDate localDate, long j, long j2, long j3, long j4) {
        if ((j | j2 | j3 | j4) == 0) {
            return m622K(localDate, this.f646b);
        }
        long j5 = 1;
        long jM748M = this.f646b.m748M();
        long j6 = ((((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L)) * j5) + jM748M;
        long jM534T = AbstractC2104a.m534T(j6, 86400000000000L) + (((j / 24) + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L)) * j5);
        long jM533S = AbstractC2104a.m533S(j6, 86400000000000L);
        return m622K(localDate.plusDays(jM534T), jM533S == jM748M ? this.f646b : C2173h.m740F(jM533S));
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final Object mo578k(C2148a c2148a) {
        if (c2148a == AbstractC2203r.f850f) {
            return this.f645a;
        }
        return AbstractC2104a.m558u(this, c2148a);
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.m715a(this);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public final int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        if (chronoLocalDateTime instanceof LocalDateTime) {
            return m628v((LocalDateTime) chronoLocalDateTime);
        }
        return AbstractC2104a.m543f(this, chronoLocalDateTime);
    }

    /* JADX INFO: renamed from: v */
    public final int m628v(LocalDateTime localDateTime) {
        int iM611v = this.f645a.m611v(localDateTime.f645a);
        return iM611v == 0 ? this.f646b.compareTo(localDateTime.f646b) : iM611v;
    }

    /* JADX INFO: renamed from: D */
    public final boolean m617D(ChronoLocalDateTime chronoLocalDateTime) {
        if (chronoLocalDateTime instanceof LocalDateTime) {
            return m628v((LocalDateTime) chronoLocalDateTime) < 0;
        }
        long jMo612x = this.f645a.mo612x();
        long jMo612x2 = chronoLocalDateTime.mo626f().mo612x();
        if (jMo612x >= jMo612x2) {
            return jMo612x == jMo612x2 && this.f646b.m748M() < chronoLocalDateTime.mo625b().m748M();
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            if (this.f645a.equals(localDateTime.f645a) && this.f646b.equals(localDateTime.f646b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f645a.hashCode() ^ this.f646b.hashCode();
    }

    public final String toString() {
        return this.f645a.toString() + "T" + this.f646b.toString();
    }

    private Object writeReplace() {
        return new C2180o((byte) 5, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
