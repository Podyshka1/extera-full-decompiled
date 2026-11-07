package j$.time.chrono;

import j$.time.C2213e;
import j$.time.Instant;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC2187b;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public interface ChronoLocalDateTime<D extends InterfaceC2187b> extends Temporal, InterfaceC2266m, Comparable<ChronoLocalDateTime<?>> {
    /* JADX INFO: renamed from: H */
    ChronoZonedDateTime mo672H(ZoneId zoneId);

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: R */
    default int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        int iCompareTo = mo678m().compareTo(chronoLocalDateTime.mo678m());
        return (iCompareTo == 0 && (iCompareTo = toLocalTime().compareTo(chronoLocalDateTime.toLocalTime())) == 0) ? ((AbstractC2186a) m720f()).getId().compareTo(chronoLocalDateTime.m720f().getId()) : iCompareTo;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    ChronoLocalDateTime mo652a(long j, InterfaceC2269p interfaceC2269p);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    ChronoLocalDateTime mo653b(long j, TemporalUnit temporalUnit);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    default ChronoLocalDateTime mo654c(long j, TemporalUnit temporalUnit) {
        return C2191f.m737s(m720f(), super.mo654c(j, temporalUnit));
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    default Object mo530d(C2213e c2213e) {
        if (c2213e == AbstractC2270q.f847a || c2213e == AbstractC2270q.f851e || c2213e == AbstractC2270q.f850d) {
            return null;
        }
        return c2213e == AbstractC2270q.f853g ? toLocalTime() : c2213e == AbstractC2270q.f848b ? m720f() : c2213e == AbstractC2270q.f849c ? ChronoUnit.NANOS : c2213e.m766l(this);
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    default Temporal mo641e(Temporal temporal) {
        return temporal.mo652a(mo678m().mo660L(), EnumC2254a.EPOCH_DAY).mo652a(toLocalTime().f0(), EnumC2254a.NANO_OF_DAY);
    }

    /* JADX INFO: renamed from: f */
    default InterfaceC2196k m720f() {
        return mo678m().mo667f();
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: j */
    default ChronoLocalDateTime mo677j(InterfaceC2266m interfaceC2266m) {
        return C2191f.m737s(m720f(), interfaceC2266m.mo641e(this));
    }

    /* JADX INFO: renamed from: m */
    InterfaceC2187b mo678m();

    default long toEpochSecond(ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        return ((mo678m().mo660L() * 86400) + ((long) toLocalTime().g0())) - ((long) zoneOffset.getTotalSeconds());
    }

    default Instant toInstant(ZoneOffset zoneOffset) {
        return Instant.ofEpochSecond(toEpochSecond(zoneOffset), toLocalTime().getNano());
    }

    LocalTime toLocalTime();
}
