package j$.time.chrono;

import j$.time.C2213e;
import j$.time.LocalTime;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2268o;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;

/* JADX INFO: renamed from: j$.time.chrono.b */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2187b extends Temporal, InterfaceC2266m, Comparable {
    /* JADX INFO: renamed from: L */
    default long mo660L() {
        return mo532k(EnumC2254a.EPOCH_DAY);
    }

    /* JADX INFO: renamed from: M */
    default ChronoLocalDateTime mo661M(LocalTime localTime) {
        return new C2191f(this, localTime);
    }

    /* JADX INFO: renamed from: P */
    default InterfaceC2197l mo662P() {
        return mo667f().mo745E(mo642g(EnumC2254a.ERA));
    }

    /* JADX INFO: renamed from: U */
    InterfaceC2187b mo664U(InterfaceC2268o interfaceC2268o);

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: X */
    default int compareTo(InterfaceC2187b interfaceC2187b) {
        int iCompare = Long.compare(mo660L(), interfaceC2187b.mo660L());
        if (iCompare != 0) {
            return iCompare;
        }
        return ((AbstractC2186a) mo667f()).getId().compareTo(interfaceC2187b.mo667f().getId());
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    InterfaceC2187b mo652a(long j, InterfaceC2269p interfaceC2269p);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: b */
    InterfaceC2187b mo653b(long j, TemporalUnit temporalUnit);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    default InterfaceC2187b mo654c(long j, TemporalUnit temporalUnit) {
        return AbstractC2189d.m735s(mo667f(), super.mo654c(j, temporalUnit));
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    default Object mo530d(C2213e c2213e) {
        if (c2213e == AbstractC2270q.f847a || c2213e == AbstractC2270q.f851e || c2213e == AbstractC2270q.f850d || c2213e == AbstractC2270q.f853g) {
            return null;
        }
        return c2213e == AbstractC2270q.f848b ? mo667f() : c2213e == AbstractC2270q.f849c ? ChronoUnit.DAYS : c2213e.m766l(this);
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    default Temporal mo641e(Temporal temporal) {
        return temporal.mo652a(mo660L(), EnumC2254a.EPOCH_DAY);
    }

    boolean equals(Object obj);

    /* JADX INFO: renamed from: f */
    InterfaceC2196k mo667f();

    int hashCode();

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    default boolean mo531i(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? ((EnumC2254a) interfaceC2269p).isDateBased() : interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    /* JADX INFO: renamed from: j */
    InterfaceC2187b mo677j(InterfaceC2266m interfaceC2266m);

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    long mo656n(Temporal temporal, TemporalUnit temporalUnit);

    String toString();
}
