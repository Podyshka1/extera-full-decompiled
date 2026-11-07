package j$.time.chrono;

import j$.time.C2352d;
import j$.time.LocalTime;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2407o;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;

/* JADX INFO: renamed from: j$.time.chrono.b */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2327b extends Temporal, InterfaceC2405m, Comparable {
    /* JADX INFO: renamed from: L */
    default ChronoLocalDateTime mo684L(LocalTime localTime) {
        return new C2331f(this, localTime);
    }

    /* JADX INFO: renamed from: O */
    default InterfaceC2337l mo685O() {
        return mo692f().mo780E(mo666g(EnumC2393a.ERA));
    }

    /* JADX INFO: renamed from: T */
    InterfaceC2327b mo687T(InterfaceC2407o interfaceC2407o);

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: W */
    default int compareTo(InterfaceC2327b interfaceC2327b) {
        int iCompare = Long.compare(toEpochDay(), interfaceC2327b.toEpochDay());
        if (iCompare != 0) {
            return iCompare;
        }
        return ((AbstractC2326a) mo692f()).getId().compareTo(interfaceC2327b.mo692f().getId());
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    InterfaceC2327b mo676a(long j, InterfaceC2408p interfaceC2408p);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    InterfaceC2327b mo677b(long j, TemporalUnit temporalUnit);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    default InterfaceC2327b mo678c(long j, TemporalUnit temporalUnit) {
        return AbstractC2329d.m770s(mo692f(), super.mo678c(j, temporalUnit));
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    default Object mo554d(C2352d c2352d) {
        if (c2352d == AbstractC2409q.f849a || c2352d == AbstractC2409q.f853e || c2352d == AbstractC2409q.f852d || c2352d == AbstractC2409q.f855g) {
            return null;
        }
        return c2352d == AbstractC2409q.f850b ? mo692f() : c2352d == AbstractC2409q.f851c ? ChronoUnit.DAYS : c2352d.m810l(this);
    }

    @Override // j$.time.temporal.InterfaceC2405m
    /* JADX INFO: renamed from: e */
    default Temporal mo665e(Temporal temporal) {
        return temporal.mo676a(toEpochDay(), EnumC2393a.EPOCH_DAY);
    }

    boolean equals(Object obj);

    /* JADX INFO: renamed from: f */
    InterfaceC2336k mo692f();

    int hashCode();

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    default boolean mo555i(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? ((EnumC2393a) interfaceC2408p).isDateBased() : interfaceC2408p != null && interfaceC2408p.mo879s(this);
    }

    /* JADX INFO: renamed from: j */
    InterfaceC2327b mo750j(InterfaceC2405m interfaceC2405m);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    long mo680n(Temporal temporal, TemporalUnit temporalUnit);

    default long toEpochDay() {
        return mo556k(EnumC2393a.EPOCH_DAY);
    }

    String toString();
}
