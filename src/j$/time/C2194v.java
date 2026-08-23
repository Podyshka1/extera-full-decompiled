package j$.time;

import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2191s;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2188p;

/* JADX INFO: renamed from: j$.time.v */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2194v implements InterfaceC2184l {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZoneId f710a;

    public C2194v(ZoneId zoneId) {
        this.f710a = zoneId;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        return c2196x == AbstractC2189q.f697a ? this.f710a : super.mo482d(c2196x);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
    }
}
