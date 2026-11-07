package j$.time.chrono;

import j$.time.C2213e;
import j$.time.Instant;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC2187b;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.C2272s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public interface ChronoZonedDateTime<D extends InterfaceC2187b> extends Temporal, Comparable<ChronoZonedDateTime<?>> {
    /* JADX INFO: renamed from: A */
    ChronoLocalDateTime mo711A();

    /* JADX INFO: renamed from: G */
    ChronoZonedDateTime mo712G(ZoneId zoneId);

    /* JADX INFO: renamed from: Z */
    default long m721Z() {
        return ((mo717m().mo660L() * 86400) + ((long) toLocalTime().g0())) - ((long) getOffset().getTotalSeconds());
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    ChronoZonedDateTime mo652a(long j, InterfaceC2269p interfaceC2269p);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    ChronoZonedDateTime mo653b(long j, TemporalUnit temporalUnit);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    default ChronoZonedDateTime mo654c(long j, TemporalUnit temporalUnit) {
        return C2195j.m757s(m722f(), super.mo654c(j, temporalUnit));
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    default Object mo530d(C2213e c2213e) {
        return (c2213e == AbstractC2270q.f851e || c2213e == AbstractC2270q.f847a) ? getZone() : c2213e == AbstractC2270q.f850d ? getOffset() : c2213e == AbstractC2270q.f853g ? toLocalTime() : c2213e == AbstractC2270q.f848b ? m722f() : c2213e == AbstractC2270q.f849c ? ChronoUnit.NANOS : c2213e.m766l(this);
    }

    /* JADX INFO: renamed from: f */
    default InterfaceC2196k m722f() {
        return mo717m().mo667f();
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    default int mo642g(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return super.mo642g(interfaceC2269p);
        }
        int i = AbstractC2193h.f675a[((EnumC2254a) interfaceC2269p).ordinal()];
        if (i != 1) {
            return i != 2 ? mo711A().mo642g(interfaceC2269p) : getOffset().getTotalSeconds();
        }
        throw new C2271r("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    ZoneOffset getOffset();

    ZoneId getZone();

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: j */
    default ChronoZonedDateTime mo677j(InterfaceC2266m interfaceC2266m) {
        return C2195j.m757s(m722f(), interfaceC2266m.mo641e(this));
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    default long mo532k(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p.mo831S(this);
        }
        int i = AbstractC2193h.f675a[((EnumC2254a) interfaceC2269p).ordinal()];
        return i != 1 ? i != 2 ? mo711A().mo532k(interfaceC2269p) : getOffset().getTotalSeconds() : m721Z();
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    default C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? (interfaceC2269p == EnumC2254a.INSTANT_SECONDS || interfaceC2269p == EnumC2254a.OFFSET_SECONDS) ? ((EnumC2254a) interfaceC2269p).f830b : mo711A().mo643l(interfaceC2269p) : interfaceC2269p.mo829D(this);
    }

    /* JADX INFO: renamed from: m */
    default InterfaceC2187b mo717m() {
        return mo711A().mo678m();
    }

    /* JADX INFO: renamed from: o */
    ChronoZonedDateTime mo718o(ZoneId zoneId);

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    default int compareTo(ChronoZonedDateTime chronoZonedDateTime) {
        int iCompare = Long.compare(m721Z(), chronoZonedDateTime.m721Z());
        return (iCompare == 0 && (iCompare = toLocalTime().getNano() - chronoZonedDateTime.toLocalTime().getNano()) == 0 && (iCompare = mo711A().compareTo(chronoZonedDateTime.mo711A())) == 0 && (iCompare = getZone().getId().compareTo(chronoZonedDateTime.getZone().getId())) == 0) ? ((AbstractC2186a) m722f()).getId().compareTo(chronoZonedDateTime.m722f().getId()) : iCompare;
    }

    default Instant toInstant() {
        return Instant.ofEpochSecond(m721Z(), toLocalTime().getNano());
    }

    default LocalTime toLocalTime() {
        return mo711A().toLocalTime();
    }
}
