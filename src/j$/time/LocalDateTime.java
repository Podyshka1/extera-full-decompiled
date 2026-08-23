package j$.time;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.InterfaceC1981b;
import j$.time.chrono.InterfaceC1990k;
import j$.time.format.C2009a;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2060n;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;
import j$.time.temporal.InterfaceC2065s;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public final class LocalDateTime implements InterfaceC2059m, InterfaceC2061o, ChronoLocalDateTime<LocalDate>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final LocalDateTime f411c = m494E(LocalDate.f406d, C2034h.f558e);

    /* JADX INFO: renamed from: d */
    public static final LocalDateTime f412d = m494E(LocalDate.f407e, C2034h.f559f);
    private static final long serialVersionUID = 6207766400415563566L;

    /* JADX INFO: renamed from: a */
    public final LocalDate f413a;

    /* JADX INFO: renamed from: b */
    public final C2034h f414b;

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: a */
    public final InterfaceC1990k mo503a() {
        return ((LocalDate) mo505f()).mo489a();
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: l */
    public final ChronoZonedDateTime mo506l(ZoneOffset zoneOffset) {
        return ZonedDateTime.m529v(this, zoneOffset, null);
    }

    /* JADX INFO: renamed from: E */
    public static LocalDateTime m494E(LocalDate localDate, C2034h c2034h) {
        Objects.requireNonNull(localDate, "date");
        Objects.requireNonNull(c2034h, "time");
        return new LocalDateTime(localDate, c2034h);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        return interfaceC2059m.mo468c(((LocalDate) mo505f()).mo491x(), EnumC2047a.EPOCH_DAY).mo468c(mo504b().m625M(), EnumC2047a.NANO_OF_DAY);
    }

    /* JADX INFO: renamed from: F */
    public static LocalDateTime m495F(long j, int i, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        long j2 = i;
        EnumC2047a.NANO_OF_SECOND.m649r(j2);
        long totalSeconds = j + ((long) zoneOffset.getTotalSeconds());
        long j3 = 86400;
        return new LocalDateTime(LocalDate.m474K(AbstractC1965a.m414T(totalSeconds, j3)), C2034h.m617F((((long) ((int) AbstractC1965a.m413S(totalSeconds, j3))) * 1000000000) + j2));
    }

    /* JADX INFO: renamed from: A */
    public static LocalDateTime m493A(InterfaceC2060n interfaceC2060n) {
        if (interfaceC2060n instanceof LocalDateTime) {
            return (LocalDateTime) interfaceC2060n;
        }
        if (!(interfaceC2060n instanceof ZonedDateTime)) {
            if (interfaceC2060n instanceof OffsetDateTime) {
                return ((OffsetDateTime) interfaceC2060n).toLocalDateTime();
            }
            try {
                return new LocalDateTime(LocalDate.m473D(interfaceC2060n), C2034h.m616D(interfaceC2060n));
            } catch (C1969b e) {
                throw new C1969b("Unable to obtain LocalDateTime from TemporalAccessor: " + interfaceC2060n + " of type " + interfaceC2060n.getClass().getName(), e);
            }
        }
        return ((ZonedDateTime) interfaceC2060n).f432a;
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final Instant toInstant(ZoneOffset zoneOffset) {
        return Instant.m464D(AbstractC1965a.m441x(this, zoneOffset), mo504b().f565d);
    }

    public LocalDateTime(LocalDate localDate, C2034h c2034h) {
        this.f413a = localDate;
        this.f414b = c2034h;
    }

    /* JADX INFO: renamed from: K */
    public final LocalDateTime m501K(LocalDate localDate, C2034h c2034h) {
        return (this.f413a == localDate && this.f414b == c2034h) ? this : new LocalDateTime(localDate, c2034h);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return interfaceC2063q != null && interfaceC2063q.mo644h(this);
        }
        EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
        return enumC2047a.isDateBased() || enumC2047a.m650v();
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            if (((EnumC2047a) interfaceC2063q).m650v()) {
                C2034h c2034h = this.f414b;
                c2034h.getClass();
                return AbstractC2064r.m658d(c2034h, interfaceC2063q);
            }
            return this.f413a.mo457j(interfaceC2063q);
        }
        return interfaceC2063q.mo645i(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final int mo456h(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            return ((EnumC2047a) interfaceC2063q).m650v() ? this.f414b.mo456h(interfaceC2063q) : this.f413a.mo456h(interfaceC2063q);
        }
        return AbstractC2064r.m655a(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            return ((EnumC2047a) interfaceC2063q).m650v() ? this.f414b.mo460w(interfaceC2063q) : this.f413a.mo460w(interfaceC2063q);
        }
        return interfaceC2063q.mo647k(this);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: f */
    public final InterfaceC1981b mo505f() {
        return this.f413a;
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: b */
    public final C2034h mo504b() {
        return this.f414b;
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime mo470i(InterfaceC2061o interfaceC2061o) {
        if (interfaceC2061o instanceof LocalDate) {
            return m501K((LocalDate) interfaceC2061o, this.f414b);
        }
        if (interfaceC2061o instanceof C2034h) {
            return m501K(this.f413a, (C2034h) interfaceC2061o);
        }
        if (interfaceC2061o instanceof LocalDateTime) {
            return (LocalDateTime) interfaceC2061o;
        }
        return (LocalDateTime) interfaceC2061o.mo459n(this);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            if (((EnumC2047a) interfaceC2063q).m650v()) {
                return m501K(this.f413a, this.f414b.mo468c(j, interfaceC2063q));
            }
            return m501K(this.f413a.mo468c(j, interfaceC2063q), this.f414b);
        }
        return (LocalDateTime) interfaceC2063q.mo648n(this, j);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime mo469d(long j, InterfaceC2065s interfaceC2065s) {
        if (!(interfaceC2065s instanceof EnumC2048b)) {
            return (LocalDateTime) interfaceC2065s.mo651h(this, j);
        }
        switch (AbstractC2008f.f500a[((EnumC2048b) interfaceC2065s).ordinal()]) {
            case 1:
                return m499I(this.f413a, 0L, 0L, 0L, j);
            case 2:
                LocalDateTime localDateTimeM501K = m501K(this.f413a.plusDays(j / 86400000000L), this.f414b);
                return localDateTimeM501K.m499I(localDateTimeM501K.f413a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                LocalDateTime localDateTimeM501K2 = m501K(this.f413a.plusDays(j / 86400000), this.f414b);
                return localDateTimeM501K2.m499I(localDateTimeM501K2.f413a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return m498H(j);
            case 5:
                return m499I(this.f413a, 0L, j, 0L, 0L);
            case 6:
                return m499I(this.f413a, j, 0L, 0L, 0L);
            case 7:
                LocalDateTime localDateTimeM501K3 = m501K(this.f413a.plusDays(j / 256), this.f414b);
                return localDateTimeM501K3.m499I(localDateTimeM501K3.f413a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return m501K(this.f413a.mo469d(j, interfaceC2065s), this.f414b);
        }
    }

    /* JADX INFO: renamed from: H */
    public final LocalDateTime m498H(long j) {
        return m499I(this.f413a, 0L, 0L, j, 0L);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2059m mo471r(long j, EnumC2048b enumC2048b) {
        return j == Long.MIN_VALUE ? mo469d(Long.MAX_VALUE, enumC2048b).mo469d(1L, enumC2048b) : mo469d(-j, enumC2048b);
    }

    /* JADX INFO: renamed from: I */
    public final LocalDateTime m499I(LocalDate localDate, long j, long j2, long j3, long j4) {
        if ((j | j2 | j3 | j4) == 0) {
            return m501K(localDate, this.f414b);
        }
        long j5 = 1;
        long jM625M = this.f414b.m625M();
        long j6 = ((((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L)) * j5) + jM625M;
        long jM414T = AbstractC1965a.m414T(j6, 86400000000000L) + (((j / 24) + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L)) * j5);
        long jM413S = AbstractC1965a.m413S(j6, 86400000000000L);
        return m501K(localDate.plusDays(jM414T), jM413S == jM625M ? this.f414b : C2034h.m617F(jM413S));
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final Object mo458k(C2009a c2009a) {
        if (c2009a == AbstractC2064r.f615f) {
            return this.f413a;
        }
        return AbstractC1965a.m438u(this, c2009a);
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.m592a(this);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public final int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        if (chronoLocalDateTime instanceof LocalDateTime) {
            return m507v((LocalDateTime) chronoLocalDateTime);
        }
        return AbstractC1965a.m423f(this, chronoLocalDateTime);
    }

    /* JADX INFO: renamed from: v */
    public final int m507v(LocalDateTime localDateTime) {
        int iM490v = this.f413a.m490v(localDateTime.f413a);
        return iM490v == 0 ? this.f414b.compareTo(localDateTime.f414b) : iM490v;
    }

    /* JADX INFO: renamed from: D */
    public final boolean m496D(ChronoLocalDateTime chronoLocalDateTime) {
        if (chronoLocalDateTime instanceof LocalDateTime) {
            return m507v((LocalDateTime) chronoLocalDateTime) < 0;
        }
        long jMo491x = this.f413a.mo491x();
        long jMo491x2 = chronoLocalDateTime.mo505f().mo491x();
        if (jMo491x >= jMo491x2) {
            return jMo491x == jMo491x2 && this.f414b.m625M() < chronoLocalDateTime.mo504b().m625M();
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            if (this.f413a.equals(localDateTime.f413a) && this.f414b.equals(localDateTime.f414b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f413a.hashCode() ^ this.f414b.hashCode();
    }

    public final String toString() {
        return this.f413a.toString() + "T" + this.f414b.toString();
    }

    private Object writeReplace() {
        return new C2041o((byte) 5, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
