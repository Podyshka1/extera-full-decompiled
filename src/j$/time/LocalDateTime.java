package j$.time;

import j$.nio.file.C2288b;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2411s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class LocalDateTime implements Temporal, InterfaceC2405m, ChronoLocalDateTime<LocalDate>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final LocalDateTime f615c = of(LocalDate.f610d, LocalTime.f619e);

    /* JADX INFO: renamed from: d */
    public static final LocalDateTime f616d = of(LocalDate.f611e, LocalTime.f620f);
    private static final long serialVersionUID = 6207766400415563566L;

    /* JADX INFO: renamed from: a */
    public final LocalDate f617a;

    /* JADX INFO: renamed from: b */
    public final LocalTime f618b;

    public LocalDateTime(LocalDate localDate, LocalTime localTime) {
        this.f617a = localDate;
        this.f618b = localTime;
    }

    /* JADX INFO: renamed from: D */
    public static LocalDateTime m695D(InterfaceC2404l interfaceC2404l) {
        if (interfaceC2404l instanceof LocalDateTime) {
            return (LocalDateTime) interfaceC2404l;
        }
        if (interfaceC2404l instanceof ZonedDateTime) {
            return ((ZonedDateTime) interfaceC2404l).mo744A();
        }
        if (interfaceC2404l instanceof OffsetDateTime) {
            return ((OffsetDateTime) interfaceC2404l).toLocalDateTime();
        }
        try {
            return new LocalDateTime(LocalDate.m682I(interfaceC2404l), LocalTime.m708I(interfaceC2404l));
        } catch (DateTimeException e) {
            C2288b.m638g("Unable to obtain LocalDateTime from TemporalAccessor: ", interfaceC2404l, interfaceC2404l.getClass().getName(), e);
            return null;
        }
    }

    /* JADX INFO: renamed from: K */
    public static LocalDateTime m696K(long j, int i, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        long j2 = i;
        EnumC2393a.NANO_OF_SECOND.m877Y(j2);
        long totalSeconds = j + ((long) zoneOffset.getTotalSeconds());
        return new LocalDateTime(LocalDate.e0(Math.floorDiv(totalSeconds, 86400L)), LocalTime.m709R((((long) ((int) Math.floorMod(totalSeconds, 86400L))) * 1000000000) + j2));
    }

    public static LocalDateTime of(LocalDate localDate, LocalTime localTime) {
        Objects.requireNonNull(localDate, "date");
        Objects.requireNonNull(localTime, "time");
        return new LocalDateTime(localDate, localTime);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2388n((byte) 5, this);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: H */
    public final ChronoZonedDateTime mo697H(ZoneId zoneId) {
        return ZonedDateTime.m742K(this, null, zoneId);
    }

    /* JADX INFO: renamed from: I */
    public final boolean m698I(ChronoLocalDateTime chronoLocalDateTime) {
        if (chronoLocalDateTime instanceof LocalDateTime) {
            return m706s((LocalDateTime) chronoLocalDateTime) < 0;
        }
        long epochDay = mo705m().toEpochDay();
        long epochDay2 = chronoLocalDateTime.mo705m().toEpochDay();
        return epochDay < epochDay2 || (epochDay == epochDay2 && toLocalTime().d0() < chronoLocalDateTime.toLocalTime().d0());
    }

    @Override // j$.time.chrono.ChronoLocalDateTime, java.lang.Comparable
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public final int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        return chronoLocalDateTime instanceof LocalDateTime ? m706s((LocalDateTime) chronoLocalDateTime) : super.compareTo(chronoLocalDateTime);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime mo677b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalDateTime) temporalUnit.mo872s(this, j);
        }
        switch (AbstractC2381g.f808a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return m702Y(this.f617a, 0L, 0L, 0L, j);
            case 2:
                LocalDateTime localDateTimeA0 = a0(this.f617a.plusDays(j / 86400000000L), this.f618b);
                return localDateTimeA0.m702Y(localDateTimeA0.f617a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                LocalDateTime localDateTimeA02 = a0(this.f617a.plusDays(j / DurationKt.MILLIS_IN_DAY), this.f618b);
                return localDateTimeA02.m702Y(localDateTimeA02.f617a, 0L, 0L, 0L, (j % DurationKt.MILLIS_IN_DAY) * 1000000);
            case 4:
                return m701X(j);
            case 5:
                return m702Y(this.f617a, 0L, j, 0L, 0L);
            case 6:
                return m702Y(this.f617a, j, 0L, 0L, 0L);
            case 7:
                LocalDateTime localDateTimeA03 = a0(this.f617a.plusDays(j / 256), this.f618b);
                return localDateTimeA03.m702Y(localDateTimeA03.f617a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return a0(this.f617a.mo677b(j, temporalUnit), this.f618b);
        }
    }

    /* JADX INFO: renamed from: X */
    public final LocalDateTime m701X(long j) {
        return m702Y(this.f617a, 0L, 0L, j, 0L);
    }

    /* JADX INFO: renamed from: Y */
    public final LocalDateTime m702Y(LocalDate localDate, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        LocalTime localTime = this.f618b;
        if (j5 == 0) {
            return a0(localDate, localTime);
        }
        long j6 = j / 24;
        long jD0 = localTime.d0();
        long j7 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L) + jD0;
        long jFloorDiv = Math.floorDiv(j7, 86400000000000L) + j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long jFloorMod = Math.floorMod(j7, 86400000000000L);
        return a0(localDate.plusDays(jFloorDiv), jFloorMod == jD0 ? this.f618b : LocalTime.m709R(jFloorMod));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return (LocalDateTime) interfaceC2408p.mo876X(this, j);
        }
        boolean zM878Z = ((EnumC2393a) interfaceC2408p).m878Z();
        LocalDate localDate = this.f617a;
        return zM878Z ? a0(localDate, this.f618b.mo676a(j, interfaceC2408p)) : a0(localDate.mo676a(j, interfaceC2408p), this.f618b);
    }

    public final LocalDateTime a0(LocalDate localDate, LocalTime localTime) {
        return (this.f617a == localDate && this.f618b == localTime) ? this : new LocalDateTime(localDate, localTime);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final LocalDateTime mo750j(InterfaceC2405m interfaceC2405m) {
        return interfaceC2405m instanceof LocalDate ? a0((LocalDate) interfaceC2405m, this.f618b) : interfaceC2405m instanceof LocalTime ? a0(this.f617a, (LocalTime) interfaceC2405m) : interfaceC2405m instanceof LocalDateTime ? (LocalDateTime) interfaceC2405m : (LocalDateTime) interfaceC2405m.mo665e(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final ChronoLocalDateTime mo678c(long j, TemporalUnit temporalUnit) {
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
        return c2352d == AbstractC2409q.f854f ? this.f617a : super.mo554d(c2352d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            if (this.f617a.equals(localDateTime.f617a) && this.f618b.equals(localDateTime.f618b)) {
                return true;
            }
        }
        return false;
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.m811a(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: g */
    public final int mo666g(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? ((EnumC2393a) interfaceC2408p).m878Z() ? this.f618b.mo666g(interfaceC2408p) : this.f617a.mo666g(interfaceC2408p) : super.mo666g(interfaceC2408p);
    }

    public final int hashCode() {
        return this.f618b.hashCode() ^ this.f617a.hashCode();
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p != null && interfaceC2408p.mo879s(this);
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        return enumC2393a.isDateBased() || enumC2393a.m878Z();
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? ((EnumC2393a) interfaceC2408p).m878Z() ? this.f618b.mo556k(interfaceC2408p) : this.f617a.mo556k(interfaceC2408p) : interfaceC2408p.mo875R(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? ((EnumC2393a) interfaceC2408p).m878Z() ? this.f618b.mo667l(interfaceC2408p) : this.f617a.mo667l(interfaceC2408p) : interfaceC2408p.mo873D(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00bf  */
    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long mo680n(Temporal temporal, TemporalUnit temporalUnit) {
        long jMultiplyExact;
        long j;
        LocalDateTime localDateTimeM695D = m695D(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, localDateTimeM695D);
        }
        ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
        if (chronoUnit.compareTo(ChronoUnit.DAYS) >= 0) {
            LocalDate localDatePlusDays = localDateTimeM695D.f617a;
            LocalDate localDate = this.f617a;
            boolean z = false;
            if (localDate != null) {
                localDatePlusDays.getClass();
                if (localDatePlusDays.m694s(localDate) > 0) {
                    z = true;
                }
            } else if (localDatePlusDays.toEpochDay() > localDate.toEpochDay()) {
            }
            if (z && localDateTimeM695D.f618b.compareTo(this.f618b) < 0) {
                localDatePlusDays = localDatePlusDays.plusDays(-1L);
            } else if (localDatePlusDays.m691Z(this.f617a) && localDateTimeM695D.f618b.compareTo(this.f618b) > 0) {
                localDatePlusDays = localDatePlusDays.plusDays(1L);
            }
            return this.f617a.mo680n(localDatePlusDays, temporalUnit);
        }
        LocalDate localDate2 = this.f617a;
        LocalDate localDate3 = localDateTimeM695D.f617a;
        localDate2.getClass();
        long epochDay = localDate3.toEpochDay() - localDate2.toEpochDay();
        if (epochDay == 0) {
            return this.f618b.mo680n(localDateTimeM695D.f618b, temporalUnit);
        }
        long jD0 = localDateTimeM695D.f618b.d0() - this.f618b.d0();
        if (epochDay > 0) {
            jMultiplyExact = epochDay - 1;
            j = jD0 + 86400000000000L;
        } else {
            jMultiplyExact = epochDay + 1;
            j = jD0 - 86400000000000L;
        }
        switch (AbstractC2381g.f808a[chronoUnit.ordinal()]) {
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

    /* JADX INFO: renamed from: s */
    public final int m706s(LocalDateTime localDateTime) {
        int iM694s = this.f617a.m694s(localDateTime.mo705m());
        return iM694s == 0 ? this.f618b.compareTo(localDateTime.toLocalTime()) : iM694s;
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: toLocalDate, reason: merged with bridge method [inline-methods] */
    public LocalDate mo705m() {
        return this.f617a;
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public LocalTime toLocalTime() {
        return this.f618b;
    }

    public final String toString() {
        return this.f617a.toString() + "T" + this.f618b.toString();
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
