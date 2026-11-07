package j$.time;

import j$.nio.file.C2288b;
import j$.time.chrono.C2343r;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2410r;
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

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class OffsetDateTime implements Temporal, InterfaceC2405m, Comparable<OffsetDateTime>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f630c = 0;
    private static final long serialVersionUID = 2287754244819255394L;

    /* JADX INFO: renamed from: a */
    public final LocalDateTime f631a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f632b;

    static {
        LocalDateTime localDateTime = LocalDateTime.f615c;
        ZoneOffset zoneOffset = ZoneOffset.f649g;
        localDateTime.getClass();
        of(localDateTime, zoneOffset);
        LocalDateTime localDateTime2 = LocalDateTime.f616d;
        ZoneOffset zoneOffset2 = ZoneOffset.f648f;
        localDateTime2.getClass();
        of(localDateTime2, zoneOffset2);
    }

    public OffsetDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localDateTime, "dateTime");
        this.f631a = localDateTime;
        Objects.requireNonNull(zoneOffset, "offset");
        this.f632b = zoneOffset;
    }

    /* JADX INFO: renamed from: D */
    public static OffsetDateTime m715D(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        ZoneOffset offset = zoneId.getRules().getOffset(instant);
        return new OffsetDateTime(LocalDateTime.m696K(instant.getEpochSecond(), instant.getNano(), offset), offset);
    }

    public static OffsetDateTime of(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return new OffsetDateTime(localDateTime, zoneOffset);
    }

    public static OffsetDateTime parse(CharSequence charSequence) {
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.f722f;
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (OffsetDateTime) dateTimeFormatter.m812b(charSequence, new C2352d(1));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: s */
    public static OffsetDateTime m716s(InterfaceC2404l interfaceC2404l) {
        if (interfaceC2404l instanceof OffsetDateTime) {
            return (OffsetDateTime) interfaceC2404l;
        }
        try {
            ZoneOffset zoneOffsetM737X = ZoneOffset.m737X(interfaceC2404l);
            LocalDate localDate = (LocalDate) interfaceC2404l.mo554d(AbstractC2409q.f854f);
            LocalTime localTime = (LocalTime) interfaceC2404l.mo554d(AbstractC2409q.f855g);
            return (localDate == null || localTime == null) ? m715D(Instant.m671D(interfaceC2404l), zoneOffsetM737X) : new OffsetDateTime(LocalDateTime.of(localDate, localTime), zoneOffsetM737X);
        } catch (DateTimeException e) {
            C2288b.m638g("Unable to obtain OffsetDateTime from TemporalAccessor: ", interfaceC2404l, interfaceC2404l.getClass().getName(), e);
            return null;
        }
    }

    private Object writeReplace() {
        return new C2388n((byte) 10, this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public final OffsetDateTime mo677b(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? m718K(this.f631a.mo677b(j, temporalUnit), this.f632b) : (OffsetDateTime) temporalUnit.mo872s(this, j);
    }

    /* JADX INFO: renamed from: K */
    public final OffsetDateTime m718K(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.f631a == localDateTime && this.f632b.equals(zoneOffset)) ? this : new OffsetDateTime(localDateTime, zoneOffset);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public final Temporal mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return (OffsetDateTime) interfaceC2408p.mo876X(this, j);
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        int i = AbstractC2386l.f815a[enumC2393a.ordinal()];
        LocalDateTime localDateTime = this.f631a;
        return i != 1 ? i != 2 ? m718K(localDateTime.mo676a(j, interfaceC2408p), this.f632b) : m718K(localDateTime, ZoneOffset.ofTotalSeconds(enumC2393a.f832b.m885a(j, enumC2393a))) : m715D(Instant.ofEpochSecond(j, localDateTime.f618b.getNano()), this.f632b);
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

    @Override // java.lang.Comparable
    public final int compareTo(OffsetDateTime offsetDateTime) {
        int iCompare;
        OffsetDateTime offsetDateTime2 = offsetDateTime;
        if (getOffset().equals(offsetDateTime2.getOffset())) {
            iCompare = toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime());
        } else {
            iCompare = Long.compare(toEpochSecond(), offsetDateTime2.toEpochSecond());
            if (iCompare == 0) {
                iCompare = this.f631a.toLocalTime().getNano() - offsetDateTime2.f631a.toLocalTime().getNano();
            }
        }
        return iCompare == 0 ? toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime()) : iCompare;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    public final Object mo554d(C2352d c2352d) {
        if (c2352d == AbstractC2409q.f852d || c2352d == AbstractC2409q.f853e) {
            return getOffset();
        }
        if (c2352d == AbstractC2409q.f849a) {
            return null;
        }
        return c2352d == AbstractC2409q.f854f ? this.f631a.mo705m() : c2352d == AbstractC2409q.f855g ? this.f631a.toLocalTime() : c2352d == AbstractC2409q.f850b ? C2343r.f701c : c2352d == AbstractC2409q.f851c ? ChronoUnit.NANOS : c2352d.m810l(this);
    }

    @Override // j$.time.temporal.InterfaceC2405m
    /* JADX INFO: renamed from: e */
    public final Temporal mo665e(Temporal temporal) {
        return temporal.mo676a(this.f631a.mo705m().toEpochDay(), EnumC2393a.EPOCH_DAY).mo676a(this.f631a.toLocalTime().d0(), EnumC2393a.NANO_OF_DAY).mo676a(getOffset().getTotalSeconds(), EnumC2393a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            if (this.f631a.equals(offsetDateTime.f631a) && this.f632b.equals(offsetDateTime.f632b)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: g */
    public final int mo666g(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return super.mo666g(interfaceC2408p);
        }
        int i = AbstractC2386l.f815a[((EnumC2393a) interfaceC2408p).ordinal()];
        if (i != 1) {
            return i != 2 ? this.f631a.mo666g(interfaceC2408p) : getOffset().getTotalSeconds();
        }
        throw new C2410r("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    public ZoneOffset getOffset() {
        return this.f632b;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo750j(LocalDate localDate) {
        return localDate == null ? (OffsetDateTime) localDate.mo665e(this) : m718K(this.f631a.mo693j(localDate), this.f632b);
    }

    public final int hashCode() {
        return this.f632b.f650b ^ this.f631a.hashCode();
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        if (interfaceC2408p instanceof EnumC2393a) {
            return true;
        }
        return interfaceC2408p != null && interfaceC2408p.mo879s(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p.mo875R(this);
        }
        int i = AbstractC2386l.f815a[((EnumC2393a) interfaceC2408p).ordinal()];
        return i != 1 ? i != 2 ? this.f631a.mo556k(interfaceC2408p) : getOffset().getTotalSeconds() : toEpochSecond();
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? (interfaceC2408p == EnumC2393a.INSTANT_SECONDS || interfaceC2408p == EnumC2393a.OFFSET_SECONDS) ? ((EnumC2393a) interfaceC2408p).f832b : this.f631a.mo667l(interfaceC2408p) : interfaceC2408p.mo873D(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo680n(Temporal temporal, TemporalUnit temporalUnit) {
        OffsetDateTime offsetDateTimeM716s = m716s(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, offsetDateTimeM716s);
        }
        ZoneOffset zoneOffset = this.f632b;
        if (!zoneOffset.equals(offsetDateTimeM716s.f632b)) {
            offsetDateTimeM716s = new OffsetDateTime(offsetDateTimeM716s.f631a.m701X(zoneOffset.getTotalSeconds() - offsetDateTimeM716s.f632b.getTotalSeconds()), zoneOffset);
        }
        return this.f631a.mo680n(offsetDateTimeM716s.f631a, temporalUnit);
    }

    public long toEpochSecond() {
        return this.f631a.toEpochSecond(this.f632b);
    }

    public LocalDateTime toLocalDateTime() {
        return this.f631a;
    }

    public final String toString() {
        return this.f631a.toString() + this.f632b.f651c;
    }
}
