package j$.time.chrono;

import j$.time.C2162j;
import j$.time.C2196x;
import j$.time.Instant;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC2105b;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2191s;
import j$.time.temporal.C2192t;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public interface ChronoZonedDateTime<D extends InterfaceC2105b> extends Temporal, Comparable<ChronoZonedDateTime<?>> {
    /* JADX INFO: renamed from: E */
    ChronoZonedDateTime mo553E(ZoneId zoneId);

    /* JADX INFO: renamed from: W */
    default long m570W() {
        return ((mo561n().mo504J() * 86400) + ((long) mo560l().e0())) - ((long) mo562p().getTotalSeconds());
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    ChronoZonedDateTime mo496a(long j, InterfaceC2188p interfaceC2188p);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    ChronoZonedDateTime mo497b(long j, InterfaceC2190r interfaceC2190r);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    default ChronoZonedDateTime mo498c(long j, InterfaceC2190r interfaceC2190r) {
        return C2113j.m610t(m571f(), super.mo498c(j, interfaceC2190r));
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    default Object mo482d(C2196x c2196x) {
        return (c2196x == AbstractC2189q.f701e || c2196x == AbstractC2189q.f697a) ? getZone() : c2196x == AbstractC2189q.f700d ? mo562p() : c2196x == AbstractC2189q.f703g ? mo560l() : c2196x == AbstractC2189q.f698b ? m571f() : c2196x == AbstractC2189q.f699c ? ChronoUnit.NANOS : c2196x.m734m(this);
    }

    /* JADX INFO: renamed from: f */
    default InterfaceC2114k m571f() {
        return mo561n().mo514f();
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    default int mo484g(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return super.mo484g(interfaceC2188p);
        }
        int i = AbstractC2111h.f519a[((EnumC2173a) interfaceC2188p).ordinal()];
        if (i != 1) {
            return i != 2 ? mo564y().mo484g(interfaceC2188p) : mo562p().getTotalSeconds();
        }
        throw new C2191s("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    ZoneId getZone();

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: j */
    default ChronoZonedDateTime mo559j(InterfaceC2185m interfaceC2185m) {
        return C2113j.m610t(m571f(), interfaceC2185m.mo483e(this));
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    default long mo486k(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p.mo717P(this);
        }
        int i = AbstractC2111h.f519a[((EnumC2173a) interfaceC2188p).ordinal()];
        return i != 1 ? i != 2 ? mo564y().mo486k(interfaceC2188p) : mo562p().getTotalSeconds() : m570W();
    }

    /* JADX INFO: renamed from: l */
    default C2162j mo560l() {
        return mo564y().mo528l();
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    default C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? (interfaceC2188p == EnumC2173a.INSTANT_SECONDS || interfaceC2188p == EnumC2173a.OFFSET_SECONDS) ? ((EnumC2173a) interfaceC2188p).f681b : mo564y().mo487m(interfaceC2188p) : interfaceC2188p.mo715B(this);
    }

    /* JADX INFO: renamed from: n */
    default InterfaceC2105b mo561n() {
        return mo564y().mo529n();
    }

    /* JADX INFO: renamed from: p */
    ZoneOffset mo562p();

    /* JADX INFO: renamed from: q */
    ChronoZonedDateTime mo563q(ZoneId zoneId);

    default Instant toInstant() {
        return Instant.ofEpochSecond(m570W(), mo560l().f658d);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    default int compareTo(ChronoZonedDateTime chronoZonedDateTime) {
        int iCompare = Long.compare(m570W(), chronoZonedDateTime.m570W());
        return (iCompare == 0 && (iCompare = mo560l().f658d - chronoZonedDateTime.mo560l().f658d) == 0 && (iCompare = mo564y().compareTo(chronoZonedDateTime.mo564y())) == 0 && (iCompare = getZone().getId().compareTo(chronoZonedDateTime.getZone().getId())) == 0) ? ((AbstractC2104a) m571f()).getId().compareTo(chronoZonedDateTime.m571f().getId()) : iCompare;
    }

    /* JADX INFO: renamed from: y */
    ChronoLocalDateTime mo564y();
}
