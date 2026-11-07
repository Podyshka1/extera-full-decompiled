package j$.time;

import j$.nio.file.C2148b;
import j$.time.chrono.C2203r;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.C2272s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class OffsetDateTime implements Temporal, InterfaceC2266m, Comparable<OffsetDateTime>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f629c = 0;
    private static final long serialVersionUID = 2287754244819255394L;

    /* JADX INFO: renamed from: a */
    public final LocalDateTime f630a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f631b;

    static {
        LocalDateTime localDateTime = LocalDateTime.f614c;
        ZoneOffset zoneOffset = ZoneOffset.f648g;
        localDateTime.getClass();
        of(localDateTime, zoneOffset);
        LocalDateTime localDateTime2 = LocalDateTime.f615d;
        ZoneOffset zoneOffset2 = ZoneOffset.f647f;
        localDateTime2.getClass();
        of(localDateTime2, zoneOffset2);
    }

    public OffsetDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localDateTime, "dateTime");
        this.f630a = localDateTime;
        Objects.requireNonNull(zoneOffset, "offset");
        this.f631b = zoneOffset;
    }

    public static OffsetDateTime of(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return new OffsetDateTime(localDateTime, zoneOffset);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: s */
    public static OffsetDateTime m686s(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        ZoneOffset offset = zoneId.getRules().getOffset(instant);
        return new OffsetDateTime(LocalDateTime.m671K(instant.getEpochSecond(), instant.getNano(), offset), offset);
    }

    private Object writeReplace() {
        return new C2249o((byte) 10, this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public final OffsetDateTime mo653b(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? m688I(this.f630a.mo653b(j, temporalUnit), this.f631b) : (OffsetDateTime) temporalUnit.mo828s(this, j);
    }

    /* JADX INFO: renamed from: I */
    public final OffsetDateTime m688I(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.f630a == localDateTime && this.f631b.equals(zoneOffset)) ? this : new OffsetDateTime(localDateTime, zoneOffset);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public final Temporal mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return (OffsetDateTime) interfaceC2269p.mo832Y(this, j);
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        int i = AbstractC2247m.f813a[enumC2254a.ordinal()];
        LocalDateTime localDateTime = this.f630a;
        return i != 1 ? i != 2 ? m688I(localDateTime.mo652a(j, interfaceC2269p), this.f631b) : m688I(localDateTime, ZoneOffset.ofTotalSeconds(enumC2254a.f830b.m837a(j, enumC2254a))) : m686s(Instant.ofEpochSecond(j, localDateTime.f617b.getNano()), this.f631b);
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

    @Override // java.lang.Comparable
    public final int compareTo(OffsetDateTime offsetDateTime) {
        int iCompare;
        OffsetDateTime offsetDateTime2 = offsetDateTime;
        if (getOffset().equals(offsetDateTime2.getOffset())) {
            iCompare = toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime());
        } else {
            iCompare = Long.compare(this.f630a.toEpochSecond(this.f631b), offsetDateTime2.f630a.toEpochSecond(offsetDateTime2.f631b));
            if (iCompare == 0) {
                iCompare = this.f630a.toLocalTime().getNano() - offsetDateTime2.f630a.toLocalTime().getNano();
            }
        }
        return iCompare == 0 ? toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime()) : iCompare;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        if (c2213e == AbstractC2270q.f850d || c2213e == AbstractC2270q.f851e) {
            return getOffset();
        }
        if (c2213e == AbstractC2270q.f847a) {
            return null;
        }
        return c2213e == AbstractC2270q.f852f ? this.f630a.mo678m() : c2213e == AbstractC2270q.f853g ? this.f630a.toLocalTime() : c2213e == AbstractC2270q.f848b ? C2203r.f699c : c2213e == AbstractC2270q.f849c ? ChronoUnit.NANOS : c2213e.m766l(this);
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    public final Temporal mo641e(Temporal temporal) {
        return temporal.mo652a(this.f630a.mo678m().mo660L(), EnumC2254a.EPOCH_DAY).mo652a(this.f630a.toLocalTime().f0(), EnumC2254a.NANO_OF_DAY).mo652a(getOffset().getTotalSeconds(), EnumC2254a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            if (this.f630a.equals(offsetDateTime.f630a) && this.f631b.equals(offsetDateTime.f631b)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    public final int mo642g(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return super.mo642g(interfaceC2269p);
        }
        int i = AbstractC2247m.f813a[((EnumC2254a) interfaceC2269p).ordinal()];
        if (i != 1) {
            return i != 2 ? this.f630a.mo642g(interfaceC2269p) : getOffset().getTotalSeconds();
        }
        throw new C2271r("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    public ZoneOffset getOffset() {
        return this.f631b;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo716j(LocalDate localDate) {
        return localDate == null ? (OffsetDateTime) localDate.mo641e(this) : m688I(this.f630a.mo668j(localDate), this.f631b);
    }

    public final int hashCode() {
        return this.f631b.f649b ^ this.f630a.hashCode();
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p instanceof EnumC2254a) {
            return true;
        }
        return interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p.mo831S(this);
        }
        int i = AbstractC2247m.f813a[((EnumC2254a) interfaceC2269p).ordinal()];
        return i != 1 ? i != 2 ? this.f630a.mo532k(interfaceC2269p) : getOffset().getTotalSeconds() : this.f630a.toEpochSecond(this.f631b);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? (interfaceC2269p == EnumC2254a.INSTANT_SECONDS || interfaceC2269p == EnumC2254a.OFFSET_SECONDS) ? ((EnumC2254a) interfaceC2269p).f830b : this.f630a.mo643l(interfaceC2269p) : interfaceC2269p.mo829D(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11, types: [j$.time.OffsetDateTime] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo656n(Temporal temporal, TemporalUnit temporalUnit) {
        if (temporal instanceof OffsetDateTime) {
            temporal = (OffsetDateTime) temporal;
        } else {
            try {
                ZoneOffset zoneOffsetM707Y = ZoneOffset.m707Y(temporal);
                LocalDate localDate = (LocalDate) temporal.mo530d(AbstractC2270q.f852f);
                LocalTime localTime = (LocalTime) temporal.mo530d(AbstractC2270q.f853g);
                temporal = (localDate == null || localTime == null) ? m686s(Instant.m647D(temporal), zoneOffsetM707Y) : new OffsetDateTime(LocalDateTime.of(localDate, localTime), zoneOffsetM707Y);
            } catch (C2184b e) {
                C2148b.m614g("Unable to obtain OffsetDateTime from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, temporal);
        }
        ZoneOffset zoneOffset = this.f631b;
        boolean zEquals = zoneOffset.equals(temporal.f631b);
        OffsetDateTime offsetDateTime = temporal;
        if (!zEquals) {
            offsetDateTime = new OffsetDateTime(temporal.f630a.m676Y(zoneOffset.getTotalSeconds() - temporal.f631b.getTotalSeconds()), zoneOffset);
        }
        return this.f630a.mo656n(offsetDateTime.f630a, temporalUnit);
    }

    public LocalDateTime toLocalDateTime() {
        return this.f630a;
    }

    public final String toString() {
        return this.f630a.toString() + this.f631b.f650c;
    }
}
