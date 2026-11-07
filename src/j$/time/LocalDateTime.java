package j$.time;

import j$.nio.file.C2148b;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2272s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class LocalDateTime implements Temporal, InterfaceC2266m, ChronoLocalDateTime<LocalDate>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final LocalDateTime f614c = of(LocalDate.f609d, LocalTime.f618e);

    /* JADX INFO: renamed from: d */
    public static final LocalDateTime f615d = of(LocalDate.f610e, LocalTime.f619f);
    private static final long serialVersionUID = 6207766400415563566L;

    /* JADX INFO: renamed from: a */
    public final LocalDate f616a;

    /* JADX INFO: renamed from: b */
    public final LocalTime f617b;

    public LocalDateTime(LocalDate localDate, LocalTime localTime) {
        this.f616a = localDate;
        this.f617b = localTime;
    }

    /* JADX INFO: renamed from: D */
    public static LocalDateTime m670D(InterfaceC2265l interfaceC2265l) {
        if (interfaceC2265l instanceof LocalDateTime) {
            return (LocalDateTime) interfaceC2265l;
        }
        if (interfaceC2265l instanceof ZonedDateTime) {
            return ((ZonedDateTime) interfaceC2265l).mo711A();
        }
        if (interfaceC2265l instanceof OffsetDateTime) {
            return ((OffsetDateTime) interfaceC2265l).toLocalDateTime();
        }
        try {
            return new LocalDateTime(LocalDate.m658I(interfaceC2265l), LocalTime.m681I(interfaceC2265l));
        } catch (C2184b e) {
            C2148b.m614g("Unable to obtain LocalDateTime from TemporalAccessor: ", interfaceC2265l, interfaceC2265l.getClass().getName(), e);
            return null;
        }
    }

    /* JADX INFO: renamed from: K */
    public static LocalDateTime m671K(long j, int i, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        long j2 = i;
        EnumC2254a.NANO_OF_SECOND.a0(j2);
        long totalSeconds = j + ((long) zoneOffset.getTotalSeconds());
        return new LocalDateTime(LocalDate.g0(Math.floorDiv(totalSeconds, 86400L)), LocalTime.m682S((((long) ((int) Math.floorMod(totalSeconds, 86400L))) * 1000000000) + j2));
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
        return new C2249o((byte) 5, this);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: H */
    public final ChronoZonedDateTime mo672H(ZoneId zoneId) {
        return ZonedDateTime.m709I(this, null, zoneId);
    }

    /* JADX INFO: renamed from: I */
    public final boolean m673I(ChronoLocalDateTime chronoLocalDateTime) {
        if (chronoLocalDateTime instanceof LocalDateTime) {
            return m679s((LocalDateTime) chronoLocalDateTime) < 0;
        }
        long jMo660L = ((LocalDate) mo678m()).mo660L();
        long jMo660L2 = chronoLocalDateTime.mo678m().mo660L();
        return jMo660L < jMo660L2 || (jMo660L == jMo660L2 && toLocalTime().f0() < chronoLocalDateTime.toLocalTime().f0());
    }

    @Override // j$.time.chrono.ChronoLocalDateTime, java.lang.Comparable
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public final int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        return chronoLocalDateTime instanceof LocalDateTime ? m679s((LocalDateTime) chronoLocalDateTime) : super.compareTo(chronoLocalDateTime);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime mo653b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalDateTime) temporalUnit.mo828s(this, j);
        }
        switch (AbstractC2242h.f806a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return a0(this.f616a, 0L, 0L, 0L, j);
            case 2:
                LocalDateTime localDateTimeC0 = c0(this.f616a.plusDays(j / 86400000000L), this.f617b);
                return localDateTimeC0.a0(localDateTimeC0.f616a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                LocalDateTime localDateTimeC02 = c0(this.f616a.plusDays(j / DurationKt.MILLIS_IN_DAY), this.f617b);
                return localDateTimeC02.a0(localDateTimeC02.f616a, 0L, 0L, 0L, (j % DurationKt.MILLIS_IN_DAY) * 1000000);
            case 4:
                return m676Y(j);
            case 5:
                return a0(this.f616a, 0L, j, 0L, 0L);
            case 6:
                return a0(this.f616a, j, 0L, 0L, 0L);
            case 7:
                LocalDateTime localDateTimeC03 = c0(this.f616a.plusDays(j / 256), this.f617b);
                return localDateTimeC03.a0(localDateTimeC03.f616a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return c0(this.f616a.mo653b(j, temporalUnit), this.f617b);
        }
    }

    /* JADX INFO: renamed from: Y */
    public final LocalDateTime m676Y(long j) {
        return a0(this.f616a, 0L, 0L, j, 0L);
    }

    public final LocalDateTime a0(LocalDate localDate, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        LocalTime localTime = this.f617b;
        if (j5 == 0) {
            return c0(localDate, localTime);
        }
        long j6 = j / 24;
        long jF0 = localTime.f0();
        long j7 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L) + jF0;
        long jFloorDiv = Math.floorDiv(j7, 86400000000000L) + j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long jFloorMod = Math.floorMod(j7, 86400000000000L);
        return c0(localDate.plusDays(jFloorDiv), jFloorMod == jF0 ? this.f617b : LocalTime.m682S(jFloorMod));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return (LocalDateTime) interfaceC2269p.mo832Y(this, j);
        }
        boolean zB0 = ((EnumC2254a) interfaceC2269p).b0();
        LocalDate localDate = this.f616a;
        return zB0 ? c0(localDate, this.f617b.mo652a(j, interfaceC2269p)) : c0(localDate.mo652a(j, interfaceC2269p), this.f617b);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final ChronoLocalDateTime mo654c(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo653b(LongCompanionObject.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo653b(j2, temporalUnit);
    }

    public final LocalDateTime c0(LocalDate localDate, LocalTime localTime) {
        return (this.f616a == localDate && this.f617b == localTime) ? this : new LocalDateTime(localDate, localTime);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        return c2213e == AbstractC2270q.f852f ? this.f616a : super.mo530d(c2213e);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final LocalDateTime mo677j(InterfaceC2266m interfaceC2266m) {
        return interfaceC2266m instanceof LocalDate ? c0((LocalDate) interfaceC2266m, this.f617b) : interfaceC2266m instanceof LocalTime ? c0(this.f616a, (LocalTime) interfaceC2266m) : interfaceC2266m instanceof LocalDateTime ? (LocalDateTime) interfaceC2266m : (LocalDateTime) interfaceC2266m.mo641e(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            if (this.f616a.equals(localDateTime.f616a) && this.f617b.equals(localDateTime.f617b)) {
                return true;
            }
        }
        return false;
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.m767a(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    public final int mo642g(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? ((EnumC2254a) interfaceC2269p).b0() ? this.f617b.mo642g(interfaceC2269p) : this.f616a.mo642g(interfaceC2269p) : super.mo642g(interfaceC2269p);
    }

    public final int hashCode() {
        return this.f617b.hashCode() ^ this.f616a.hashCode();
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p != null && interfaceC2269p.mo833s(this);
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        return enumC2254a.isDateBased() || enumC2254a.b0();
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? ((EnumC2254a) interfaceC2269p).b0() ? this.f617b.mo532k(interfaceC2269p) : this.f616a.mo532k(interfaceC2269p) : interfaceC2269p.mo831S(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? ((EnumC2254a) interfaceC2269p).b0() ? this.f617b.mo643l(interfaceC2269p) : this.f616a.mo643l(interfaceC2269p) : interfaceC2269p.mo829D(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00bf  */
    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long mo656n(Temporal temporal, TemporalUnit temporalUnit) {
        long jMultiplyExact;
        long j;
        LocalDateTime localDateTimeM670D = m670D(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, localDateTimeM670D);
        }
        ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
        if (chronoUnit.compareTo(ChronoUnit.DAYS) >= 0) {
            LocalDate localDatePlusDays = localDateTimeM670D.f616a;
            LocalDate localDate = this.f616a;
            boolean z = false;
            if (localDate != null) {
                localDatePlusDays.getClass();
                if (localDatePlusDays.m669s(localDate) > 0) {
                    z = true;
                }
            } else if (localDatePlusDays.mo660L() > localDate.mo660L()) {
            }
            if (z && localDateTimeM670D.f617b.compareTo(this.f617b) < 0) {
                localDatePlusDays = localDatePlusDays.plusDays(-1L);
            } else if (localDatePlusDays.b0(this.f616a) && localDateTimeM670D.f617b.compareTo(this.f617b) > 0) {
                localDatePlusDays = localDatePlusDays.plusDays(1L);
            }
            return this.f616a.mo656n(localDatePlusDays, temporalUnit);
        }
        LocalDate localDate2 = this.f616a;
        LocalDate localDate3 = localDateTimeM670D.f616a;
        localDate2.getClass();
        long jMo660L = localDate3.mo660L() - localDate2.mo660L();
        if (jMo660L == 0) {
            return this.f617b.mo656n(localDateTimeM670D.f617b, temporalUnit);
        }
        long jF0 = localDateTimeM670D.f617b.f0() - this.f617b.f0();
        if (jMo660L > 0) {
            jMultiplyExact = jMo660L - 1;
            j = jF0 + 86400000000000L;
        } else {
            jMultiplyExact = jMo660L + 1;
            j = jF0 - 86400000000000L;
        }
        switch (AbstractC2242h.f806a[chronoUnit.ordinal()]) {
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
    public final int m679s(LocalDateTime localDateTime) {
        int iM669s = this.f616a.m669s(localDateTime.mo678m());
        return iM669s == 0 ? this.f617b.compareTo(localDateTime.toLocalTime()) : iM669s;
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* JADX INFO: renamed from: toLocalDate, reason: merged with bridge method [inline-methods] */
    public LocalDate mo678m() {
        return this.f616a;
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public LocalTime toLocalTime() {
        return this.f617b;
    }

    public final String toString() {
        return this.f616a.toString() + "T" + this.f617b.toString();
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo654c(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo653b(LongCompanionObject.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo653b(j2, temporalUnit);
    }
}
