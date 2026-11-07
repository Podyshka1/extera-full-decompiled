package j$.time.chrono;

import j$.time.AbstractC2185c;
import j$.time.C2213e;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;

/* JADX INFO: renamed from: j$.time.chrono.l */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2197l extends InterfaceC2265l, InterfaceC2266m {
    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    default Object mo530d(C2213e c2213e) {
        return c2213e == AbstractC2270q.f849c ? ChronoUnit.ERAS : super.mo530d(c2213e);
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    default Temporal mo641e(Temporal temporal) {
        return temporal.mo652a(getValue(), EnumC2254a.ERA);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    default int mo642g(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p == EnumC2254a.ERA ? getValue() : super.mo642g(interfaceC2269p);
    }

    int getValue();

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    default boolean mo531i(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? interfaceC2269p == EnumC2254a.ERA : interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    default long mo532k(InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p == EnumC2254a.ERA) {
            return getValue();
        }
        if (interfaceC2269p instanceof EnumC2254a) {
            throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
        return interfaceC2269p.mo831S(this);
    }
}
