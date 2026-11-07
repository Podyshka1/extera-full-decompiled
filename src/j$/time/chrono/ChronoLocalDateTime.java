package j$.time.chrono;

import j$.time.C2352d;
import j$.time.Instant;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC2327b;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public interface ChronoLocalDateTime<D extends InterfaceC2327b> extends Temporal, InterfaceC2405m, Comparable<ChronoLocalDateTime<?>> {
    /* JADX INFO: renamed from: H */
    ChronoZonedDateTime mo697H(ZoneId zoneId);

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: Q */
    default int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        int iCompareTo = mo705m().compareTo(chronoLocalDateTime.mo705m());
        return (iCompareTo == 0 && (iCompareTo = toLocalTime().compareTo(chronoLocalDateTime.toLocalTime())) == 0) ? ((AbstractC2326a) m754f()).getId().compareTo(chronoLocalDateTime.m754f().getId()) : iCompareTo;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    ChronoLocalDateTime mo676a(long j, InterfaceC2408p interfaceC2408p);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    ChronoLocalDateTime mo677b(long j, TemporalUnit temporalUnit);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    default ChronoLocalDateTime mo678c(long j, TemporalUnit temporalUnit) {
        return C2331f.m772s(m754f(), super.mo678c(j, temporalUnit));
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    default Object mo554d(C2352d c2352d) {
        if (c2352d == AbstractC2409q.f849a || c2352d == AbstractC2409q.f853e || c2352d == AbstractC2409q.f852d) {
            return null;
        }
        return c2352d == AbstractC2409q.f855g ? toLocalTime() : c2352d == AbstractC2409q.f850b ? m754f() : c2352d == AbstractC2409q.f851c ? ChronoUnit.NANOS : c2352d.m810l(this);
    }

    @Override // j$.time.temporal.InterfaceC2405m
    /* JADX INFO: renamed from: e */
    default Temporal mo665e(Temporal temporal) {
        return temporal.mo676a(mo705m().toEpochDay(), EnumC2393a.EPOCH_DAY).mo676a(toLocalTime().d0(), EnumC2393a.NANO_OF_DAY);
    }

    /* JADX INFO: renamed from: f */
    default InterfaceC2336k m754f() {
        return mo705m().mo692f();
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    default ChronoLocalDateTime mo750j(InterfaceC2405m interfaceC2405m) {
        return C2331f.m772s(m754f(), interfaceC2405m.mo665e(this));
    }

    /* JADX INFO: renamed from: m */
    InterfaceC2327b mo705m();

    default long toEpochSecond(ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        return ((mo705m().toEpochDay() * 86400) + ((long) toLocalTime().e0())) - ((long) zoneOffset.getTotalSeconds());
    }

    default Instant toInstant(ZoneOffset zoneOffset) {
        return Instant.ofEpochSecond(toEpochSecond(zoneOffset), toLocalTime().getNano());
    }

    LocalTime toLocalTime();
}
