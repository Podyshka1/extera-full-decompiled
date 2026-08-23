package j$.time;

import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.InterfaceC2105b;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2192t;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class LocalDateTime implements Temporal, InterfaceC2185m, ChronoLocalDateTime<LocalDate>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final LocalDateTime f474c = m518I(LocalDate.f469d, C2162j.f651e);

    /* JADX INFO: renamed from: d */
    public static final LocalDateTime f475d = m518I(LocalDate.f470e, C2162j.f652f);
    private static final long serialVersionUID = 6207766400415563566L;

    /* JADX INFO: renamed from: a */
    public final LocalDate f476a;

    /* JADX INFO: renamed from: b */
    public final C2162j f477b;

    public LocalDateTime(LocalDate localDate, C2162j c2162j) {
        this.f476a = localDate;
        this.f477b = c2162j;
    }

    /* JADX INFO: renamed from: B */
    public static LocalDateTime m517B(InterfaceC2184l interfaceC2184l) {
        if (interfaceC2184l instanceof LocalDateTime) {
            return (LocalDateTime) interfaceC2184l;
        }
        if (interfaceC2184l instanceof ZonedDateTime) {
            return ((ZonedDateTime) interfaceC2184l).mo564y();
        }
        if (interfaceC2184l instanceof OffsetDateTime) {
            return ((OffsetDateTime) interfaceC2184l).toLocalDateTime();
        }
        try {
            return new LocalDateTime(LocalDate.m502G(interfaceC2184l), C2162j.m694G(interfaceC2184l));
        } catch (C2103c e) {
            C2159g.m690g("Unable to obtain LocalDateTime from TemporalAccessor: ", interfaceC2184l, interfaceC2184l.getClass().getName(), e);
            return null;
        }
    }

    /* JADX INFO: renamed from: I */
    public static LocalDateTime m518I(LocalDate localDate, C2162j c2162j) {
        Objects.requireNonNull(localDate, "date");
        Objects.requireNonNull(c2162j, "time");
        return new LocalDateTime(localDate, c2162j);
    }

    /* JADX INFO: renamed from: P */
    public static LocalDateTime m519P(long j, int i, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        long j2 = i;
        EnumC2173a.NANO_OF_SECOND.m719X(j2);
        long totalSeconds = j + ((long) zoneOffset.getTotalSeconds());
        return new LocalDateTime(LocalDate.d0(Math.floorDiv(totalSeconds, 86400L)), C2162j.m696V((((long) ((int) Math.floorMod(totalSeconds, 86400L))) * 1000000000) + j2));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2170r((byte) 5, this);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: F */
    public final ChronoZonedDateTime mo520F(ZoneId zoneId) {
        return ZonedDateTime.m551G(this, zoneId, null);
    }

    /* JADX INFO: renamed from: G */
    public final boolean m521G(ChronoLocalDateTime chronoLocalDateTime) {
        if (chronoLocalDateTime instanceof LocalDateTime) {
            return m530t((LocalDateTime) chronoLocalDateTime) < 0;
        }
        long jMo504J = this.f476a.mo504J();
        long jMo504J2 = chronoLocalDateTime.mo529n().mo504J();
        if (jMo504J >= jMo504J2) {
            return jMo504J == jMo504J2 && this.f477b.d0() < chronoLocalDateTime.mo528l().d0();
        }
        return true;
    }

    @Override // j$.time.chrono.ChronoLocalDateTime, java.lang.Comparable
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        return chronoLocalDateTime instanceof LocalDateTime ? m530t((LocalDateTime) chronoLocalDateTime) : super.compareTo(chronoLocalDateTime);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime mo497b(long j, InterfaceC2190r interfaceC2190r) {
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return (LocalDateTime) interfaceC2190r.mo714t(this, j);
        }
        switch (AbstractC2160h.f648a[((ChronoUnit) interfaceC2190r).ordinal()]) {
            case 1:
                return m525Y(this.f476a, 0L, 0L, 0L, j);
            case 2:
                LocalDateTime localDateTimeA0 = a0(this.f476a.plusDays(j / 86400000000L), this.f477b);
                return localDateTimeA0.m525Y(localDateTimeA0.f476a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                LocalDateTime localDateTimeA02 = a0(this.f476a.plusDays(j / DurationKt.MILLIS_IN_DAY), this.f477b);
                return localDateTimeA02.m525Y(localDateTimeA02.f476a, 0L, 0L, 0L, (j % DurationKt.MILLIS_IN_DAY) * 1000000);
            case 4:
                return m524X(j);
            case 5:
                return m525Y(this.f476a, 0L, j, 0L, 0L);
            case 6:
                return m525Y(this.f476a, j, 0L, 0L, 0L);
            case 7:
                LocalDateTime localDateTimeA03 = a0(this.f476a.plusDays(j / 256), this.f477b);
                return localDateTimeA03.m525Y(localDateTimeA03.f476a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return a0(this.f476a.mo497b(j, interfaceC2190r), this.f477b);
        }
    }

    /* JADX INFO: renamed from: X */
    public final LocalDateTime m524X(long j) {
        return m525Y(this.f476a, 0L, 0L, j, 0L);
    }

    /* JADX INFO: renamed from: Y */
    public final LocalDateTime m525Y(LocalDate localDate, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        C2162j c2162j = this.f477b;
        if (j5 == 0) {
            return a0(localDate, c2162j);
        }
        long j6 = j / 24;
        long jD0 = c2162j.d0();
        long j7 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L) + jD0;
        long jFloorDiv = Math.floorDiv(j7, 86400000000000L) + j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long jFloorMod = Math.floorMod(j7, 86400000000000L);
        return a0(localDate.plusDays(jFloorDiv), jFloorMod == jD0 ? this.f477b : C2162j.m696V(jFloorMod));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return (LocalDateTime) interfaceC2188p.mo718V(this, j);
        }
        boolean zM720Y = ((EnumC2173a) interfaceC2188p).m720Y();
        LocalDate localDate = this.f476a;
        return zM720Y ? a0(localDate, this.f477b.mo496a(j, interfaceC2188p)) : a0(localDate.mo496a(j, interfaceC2188p), this.f477b);
    }

    public final LocalDateTime a0(LocalDate localDate, C2162j c2162j) {
        return (this.f476a == localDate && this.f477b == c2162j) ? this : new LocalDateTime(localDate, c2162j);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final LocalDateTime mo559j(InterfaceC2185m interfaceC2185m) {
        return interfaceC2185m instanceof LocalDate ? a0((LocalDate) interfaceC2185m, this.f477b) : interfaceC2185m instanceof C2162j ? a0(this.f476a, (C2162j) interfaceC2185m) : interfaceC2185m instanceof LocalDateTime ? (LocalDateTime) interfaceC2185m : (LocalDateTime) interfaceC2185m.mo483e(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final ChronoLocalDateTime mo498c(long j, InterfaceC2190r interfaceC2190r) {
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
        return c2196x == AbstractC2189q.f702f ? this.f476a : super.mo482d(c2196x);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            if (this.f476a.equals(localDateTime.f476a) && this.f477b.equals(localDateTime.f477b)) {
                return true;
            }
        }
        return false;
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.m630a(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    public final int mo484g(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? ((EnumC2173a) interfaceC2188p).m720Y() ? this.f477b.mo484g(interfaceC2188p) : this.f476a.mo484g(interfaceC2188p) : super.mo484g(interfaceC2188p);
    }

    public final int hashCode() {
        return this.f477b.hashCode() ^ this.f476a.hashCode();
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p != null && interfaceC2188p.mo721t(this);
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        return enumC2173a.isDateBased() || enumC2173a.m720Y();
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? ((EnumC2173a) interfaceC2188p).m720Y() ? this.f477b.mo486k(interfaceC2188p) : this.f476a.mo486k(interfaceC2188p) : interfaceC2188p.mo717P(this);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: l */
    public final C2162j mo528l() {
        return this.f477b;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? ((EnumC2173a) interfaceC2188p).m720Y() ? this.f477b.mo487m(interfaceC2188p) : this.f476a.mo487m(interfaceC2188p) : interfaceC2188p.mo715B(this);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: n */
    public final InterfaceC2105b mo529n() {
        return this.f476a;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00bf  */
    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long mo500o(Temporal temporal, InterfaceC2190r interfaceC2190r) {
        long jMultiplyExact;
        long j;
        LocalDateTime localDateTimeM517B = m517B(temporal);
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return interfaceC2190r.between(this, localDateTimeM517B);
        }
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2190r;
        if (chronoUnit.compareTo(ChronoUnit.DAYS) >= 0) {
            LocalDate localDatePlusDays = localDateTimeM517B.f476a;
            LocalDate localDate = this.f476a;
            boolean z = false;
            if (localDate != null) {
                localDatePlusDays.getClass();
                if (localDatePlusDays.m516t(localDate) > 0) {
                    z = true;
                }
            } else if (localDatePlusDays.mo504J() > localDate.mo504J()) {
            }
            if (z && localDateTimeM517B.f477b.compareTo(this.f477b) < 0) {
                localDatePlusDays = localDatePlusDays.plusDays(-1L);
            } else if (localDatePlusDays.m512Y(this.f476a) && localDateTimeM517B.f477b.compareTo(this.f477b) > 0) {
                localDatePlusDays = localDatePlusDays.plusDays(1L);
            }
            return this.f476a.mo500o(localDatePlusDays, interfaceC2190r);
        }
        LocalDate localDate2 = this.f476a;
        LocalDate localDate3 = localDateTimeM517B.f476a;
        localDate2.getClass();
        long jMo504J = localDate3.mo504J() - localDate2.mo504J();
        if (jMo504J == 0) {
            return this.f477b.mo500o(localDateTimeM517B.f477b, interfaceC2190r);
        }
        long jD0 = localDateTimeM517B.f477b.d0() - this.f477b.d0();
        if (jMo504J > 0) {
            jMultiplyExact = jMo504J - 1;
            j = jD0 + 86400000000000L;
        } else {
            jMultiplyExact = jMo504J + 1;
            j = jD0 - 86400000000000L;
        }
        switch (AbstractC2160h.f648a[chronoUnit.ordinal()]) {
            case 1:
                jMultiplyExact = Math.multiplyExact(jMultiplyExact, 86400000000000L);
                break;
            case 2:
                jMultiplyExact = Math.multiplyExact(jMultiplyExact, 86400000000L);
                j /= 1000;
                break;
            case 3:
                jMultiplyExact = Math.multiplyExact(jMultiplyExact, DurationKt.MILLIS_IN_DAY);
                j /= 1000000;
                break;
            case 4:
                jMultiplyExact = Math.multiplyExact(jMultiplyExact, 86400L);
                j /= 1000000000;
                break;
            case 5:
                jMultiplyExact = Math.multiplyExact(jMultiplyExact, 1440L);
                j /= 60000000000L;
                break;
            case 6:
                jMultiplyExact = Math.multiplyExact(jMultiplyExact, 24L);
                j /= 3600000000000L;
                break;
            case 7:
                jMultiplyExact = Math.multiplyExact(jMultiplyExact, 2L);
                j /= 43200000000000L;
                break;
        }
        return Math.addExact(jMultiplyExact, j);
    }

    /* JADX INFO: renamed from: t */
    public final int m530t(LocalDateTime localDateTime) {
        int iM516t = this.f476a.m516t(localDateTime.f476a);
        return iM516t == 0 ? this.f477b.compareTo(localDateTime.f477b) : iM516t;
    }

    public final String toString() {
        return this.f476a.toString() + "T" + this.f477b.toString();
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
