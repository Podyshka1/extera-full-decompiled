package j$.time.chrono;

import j$.time.AbstractC2324b;
import j$.time.C2352d;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2410r;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;

/* JADX INFO: renamed from: j$.time.chrono.l */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2337l extends InterfaceC2404l, InterfaceC2405m {
    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    default Object mo554d(C2352d c2352d) {
        return c2352d == AbstractC2409q.f851c ? ChronoUnit.ERAS : super.mo554d(c2352d);
    }

    @Override // j$.time.temporal.InterfaceC2405m
    /* JADX INFO: renamed from: e */
    default Temporal mo665e(Temporal temporal) {
        return temporal.mo676a(getValue(), EnumC2393a.ERA);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: g */
    default int mo666g(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p == EnumC2393a.ERA ? getValue() : super.mo666g(interfaceC2408p);
    }

    int getValue();

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    default boolean mo555i(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? interfaceC2408p == EnumC2393a.ERA : interfaceC2408p != null && interfaceC2408p.mo879s(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    default long mo556k(InterfaceC2408p interfaceC2408p) {
        if (interfaceC2408p == EnumC2393a.ERA) {
            return getValue();
        }
        if (interfaceC2408p instanceof EnumC2393a) {
            throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
        return interfaceC2408p.mo875R(this);
    }
}
