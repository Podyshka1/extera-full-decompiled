package j$.time.chrono;

import j$.time.C2352d;
import j$.time.Instant;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC2327b;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2410r;
import j$.time.temporal.C2411s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public interface ChronoZonedDateTime<D extends InterfaceC2327b> extends Temporal, Comparable<ChronoZonedDateTime<?>> {
    /* JADX INFO: renamed from: A */
    ChronoLocalDateTime mo744A();

    /* JADX INFO: renamed from: G */
    ChronoZonedDateTime mo745G(ZoneId zoneId);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    ChronoZonedDateTime mo676a(long j, InterfaceC2408p interfaceC2408p);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    ChronoZonedDateTime mo677b(long j, TemporalUnit temporalUnit);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    default ChronoZonedDateTime mo678c(long j, TemporalUnit temporalUnit) {
        return C2335j.m794s(m755f(), super.mo678c(j, temporalUnit));
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    default Object mo554d(C2352d c2352d) {
        return (c2352d == AbstractC2409q.f853e || c2352d == AbstractC2409q.f849a) ? getZone() : c2352d == AbstractC2409q.f852d ? getOffset() : c2352d == AbstractC2409q.f855g ? toLocalTime() : c2352d == AbstractC2409q.f850b ? m755f() : c2352d == AbstractC2409q.f851c ? ChronoUnit.NANOS : c2352d.m810l(this);
    }

    /* JADX INFO: renamed from: f */
    default InterfaceC2336k m755f() {
        return mo751m().mo692f();
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: g */
    default int mo666g(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return super.mo666g(interfaceC2408p);
        }
        int i = AbstractC2333h.f677a[((EnumC2393a) interfaceC2408p).ordinal()];
        if (i != 1) {
            return i != 2 ? mo744A().mo666g(interfaceC2408p) : getOffset().getTotalSeconds();
        }
        throw new C2410r("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    ZoneOffset getOffset();

    ZoneId getZone();

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: j */
    default ChronoZonedDateTime mo750j(InterfaceC2405m interfaceC2405m) {
        return C2335j.m794s(m755f(), interfaceC2405m.mo665e(this));
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    default long mo556k(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p.mo875R(this);
        }
        int i = AbstractC2333h.f677a[((EnumC2393a) interfaceC2408p).ordinal()];
        return i != 1 ? i != 2 ? mo744A().mo556k(interfaceC2408p) : getOffset().getTotalSeconds() : toEpochSecond();
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    default C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? (interfaceC2408p == EnumC2393a.INSTANT_SECONDS || interfaceC2408p == EnumC2393a.OFFSET_SECONDS) ? ((EnumC2393a) interfaceC2408p).f832b : mo744A().mo667l(interfaceC2408p) : interfaceC2408p.mo873D(this);
    }

    /* JADX INFO: renamed from: m */
    default InterfaceC2327b mo751m() {
        return mo744A().mo705m();
    }

    /* JADX INFO: renamed from: o */
    ChronoZonedDateTime mo752o(ZoneId zoneId);

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    default int compareTo(ChronoZonedDateTime chronoZonedDateTime) {
        int iCompare = Long.compare(toEpochSecond(), chronoZonedDateTime.toEpochSecond());
        return (iCompare == 0 && (iCompare = toLocalTime().getNano() - chronoZonedDateTime.toLocalTime().getNano()) == 0 && (iCompare = mo744A().compareTo(chronoZonedDateTime.mo744A())) == 0 && (iCompare = getZone().getId().compareTo(chronoZonedDateTime.getZone().getId())) == 0) ? ((AbstractC2326a) m755f()).getId().compareTo(chronoZonedDateTime.m755f().getId()) : iCompare;
    }

    default long toEpochSecond() {
        return ((mo751m().toEpochDay() * 86400) + ((long) toLocalTime().e0())) - ((long) getOffset().getTotalSeconds());
    }

    default Instant toInstant() {
        return Instant.ofEpochSecond(toEpochSecond(), toLocalTime().getNano());
    }

    default LocalTime toLocalTime() {
        return mo744A().toLocalTime();
    }
}
