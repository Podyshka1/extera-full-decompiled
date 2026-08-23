package j$.time.chrono;

import j$.time.C2162j;
import j$.time.C2196x;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2187o;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;

/* JADX INFO: renamed from: j$.time.chrono.b */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2105b extends Temporal, InterfaceC2185m, Comparable {
    /* JADX INFO: renamed from: J */
    default long mo504J() {
        return mo486k(EnumC2173a.EPOCH_DAY);
    }

    /* JADX INFO: renamed from: K */
    default ChronoLocalDateTime mo505K(C2162j c2162j) {
        return new C2109f(this, c2162j);
    }

    /* JADX INFO: renamed from: N */
    default InterfaceC2115l mo506N() {
        return mo514f().mo595C(mo484g(EnumC2173a.ERA));
    }

    /* JADX INFO: renamed from: R */
    InterfaceC2105b mo508R(InterfaceC2187o interfaceC2187o);

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: U */
    default int compareTo(InterfaceC2105b interfaceC2105b) {
        int iCompare = Long.compare(mo504J(), interfaceC2105b.mo504J());
        if (iCompare != 0) {
            return iCompare;
        }
        return ((AbstractC2104a) mo514f()).getId().compareTo(interfaceC2105b.mo514f().getId());
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    InterfaceC2105b mo496a(long j, InterfaceC2188p interfaceC2188p);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    InterfaceC2105b mo497b(long j, InterfaceC2190r interfaceC2190r);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    default InterfaceC2105b mo498c(long j, InterfaceC2190r interfaceC2190r) {
        return AbstractC2107d.m586t(mo514f(), super.mo498c(j, interfaceC2190r));
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    default Object mo482d(C2196x c2196x) {
        if (c2196x == AbstractC2189q.f697a || c2196x == AbstractC2189q.f701e || c2196x == AbstractC2189q.f700d || c2196x == AbstractC2189q.f703g) {
            return null;
        }
        return c2196x == AbstractC2189q.f698b ? mo514f() : c2196x == AbstractC2189q.f699c ? ChronoUnit.DAYS : c2196x.m734m(this);
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    default Temporal mo483e(Temporal temporal) {
        return temporal.mo496a(mo504J(), EnumC2173a.EPOCH_DAY);
    }

    boolean equals(Object obj);

    /* JADX INFO: renamed from: f */
    InterfaceC2114k mo514f();

    int hashCode();

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    default boolean mo485i(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? ((EnumC2173a) interfaceC2188p).isDateBased() : interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    /* JADX INFO: renamed from: j */
    InterfaceC2105b mo559j(InterfaceC2185m interfaceC2185m);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: o */
    long mo500o(Temporal temporal, InterfaceC2190r interfaceC2190r);

    String toString();
}
