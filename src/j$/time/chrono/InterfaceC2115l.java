package j$.time.chrono;

import j$.time.AbstractC2130d;
import j$.time.C2196x;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2191s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.Temporal;

/* JADX INFO: renamed from: j$.time.chrono.l */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2115l extends InterfaceC2184l, InterfaceC2185m {
    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    default Object mo482d(C2196x c2196x) {
        return c2196x == AbstractC2189q.f699c ? ChronoUnit.ERAS : super.mo482d(c2196x);
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    default Temporal mo483e(Temporal temporal) {
        return temporal.mo496a(getValue(), EnumC2173a.ERA);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    default int mo484g(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p == EnumC2173a.ERA ? getValue() : super.mo484g(interfaceC2188p);
    }

    int getValue();

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    default boolean mo485i(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? interfaceC2188p == EnumC2173a.ERA : interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    default long mo486k(InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p == EnumC2173a.ERA) {
            return getValue();
        }
        if (interfaceC2188p instanceof EnumC2173a) {
            throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
        return interfaceC2188p.mo717P(this);
    }
}
