package j$.time.chrono;

import j$.time.C2162j;
import j$.time.C2196x;
import j$.time.Instant;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC2105b;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public interface ChronoLocalDateTime<D extends InterfaceC2105b> extends Temporal, InterfaceC2185m, Comparable<ChronoLocalDateTime<?>> {
    /* JADX INFO: renamed from: F */
    ChronoZonedDateTime mo520F(ZoneId zoneId);

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: O */
    default int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        int iCompareTo = mo529n().compareTo(chronoLocalDateTime.mo529n());
        return (iCompareTo == 0 && (iCompareTo = mo528l().compareTo(chronoLocalDateTime.mo528l())) == 0) ? ((AbstractC2104a) m569f()).getId().compareTo(chronoLocalDateTime.m569f().getId()) : iCompareTo;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    ChronoLocalDateTime mo496a(long j, InterfaceC2188p interfaceC2188p);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    ChronoLocalDateTime mo497b(long j, InterfaceC2190r interfaceC2190r);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    default ChronoLocalDateTime mo498c(long j, InterfaceC2190r interfaceC2190r) {
        return C2109f.m588t(m569f(), super.mo498c(j, interfaceC2190r));
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    default Object mo482d(C2196x c2196x) {
        if (c2196x == AbstractC2189q.f697a || c2196x == AbstractC2189q.f701e || c2196x == AbstractC2189q.f700d) {
            return null;
        }
        return c2196x == AbstractC2189q.f703g ? mo528l() : c2196x == AbstractC2189q.f698b ? m569f() : c2196x == AbstractC2189q.f699c ? ChronoUnit.NANOS : c2196x.m734m(this);
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    default Temporal mo483e(Temporal temporal) {
        return temporal.mo496a(mo529n().mo504J(), EnumC2173a.EPOCH_DAY).mo496a(mo528l().d0(), EnumC2173a.NANO_OF_DAY);
    }

    /* JADX INFO: renamed from: f */
    default InterfaceC2114k m569f() {
        return mo529n().mo514f();
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    default ChronoLocalDateTime mo559j(InterfaceC2185m interfaceC2185m) {
        return C2109f.m588t(m569f(), interfaceC2185m.mo483e(this));
    }

    /* JADX INFO: renamed from: l */
    C2162j mo528l();

    /* JADX INFO: renamed from: n */
    InterfaceC2105b mo529n();

    default long toEpochSecond(ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        return ((mo529n().mo504J() * 86400) + ((long) mo528l().e0())) - ((long) zoneOffset.getTotalSeconds());
    }

    default Instant toInstant(ZoneOffset zoneOffset) {
        return Instant.ofEpochSecond(toEpochSecond(zoneOffset), mo528l().f658d);
    }
}
