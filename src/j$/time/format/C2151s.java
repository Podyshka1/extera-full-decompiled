package j$.time.format;

import j$.time.C2196x;
import j$.time.ZoneId;
import j$.time.chrono.InterfaceC2105b;
import j$.time.chrono.InterfaceC2114k;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2192t;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2188p;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.time.format.s */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2151s implements InterfaceC2184l {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2105b f626a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ InterfaceC2184l f627b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC2114k f628c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ ZoneId f629d;

    public C2151s(InterfaceC2105b interfaceC2105b, InterfaceC2184l interfaceC2184l, InterfaceC2114k interfaceC2114k, ZoneId zoneId) {
        this.f626a = interfaceC2105b;
        this.f627b = interfaceC2184l;
        this.f628c = interfaceC2114k;
        this.f629d = zoneId;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        return c2196x == AbstractC2189q.f698b ? this.f628c : c2196x == AbstractC2189q.f697a ? this.f629d : c2196x == AbstractC2189q.f699c ? this.f627b.mo482d(c2196x) : c2196x.m734m(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        InterfaceC2105b interfaceC2105b = this.f626a;
        return (interfaceC2105b == null || !interfaceC2188p.isDateBased()) ? this.f627b.mo485i(interfaceC2188p) : interfaceC2105b.mo485i(interfaceC2188p);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        InterfaceC2105b interfaceC2105b = this.f626a;
        return (interfaceC2105b == null || !interfaceC2188p.isDateBased()) ? this.f627b.mo486k(interfaceC2188p) : interfaceC2105b.mo486k(interfaceC2188p);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        InterfaceC2105b interfaceC2105b = this.f626a;
        return (interfaceC2105b == null || !interfaceC2188p.isDateBased()) ? this.f627b.mo487m(interfaceC2188p) : interfaceC2105b.mo487m(interfaceC2188p);
    }

    public final String toString() {
        String str;
        String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        InterfaceC2114k interfaceC2114k = this.f628c;
        if (interfaceC2114k != null) {
            str = " with chronology " + interfaceC2114k;
        } else {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        ZoneId zoneId = this.f629d;
        if (zoneId != null) {
            str2 = " with zone " + zoneId;
        }
        return this.f627b + str + str2;
    }
}
