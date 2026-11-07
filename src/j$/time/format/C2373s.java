package j$.time.format;

import j$.time.C2352d;
import j$.time.ZoneId;
import j$.time.chrono.InterfaceC2327b;
import j$.time.chrono.InterfaceC2336k;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2411s;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2408p;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.time.format.s */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2373s implements InterfaceC2404l {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2327b f786a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ InterfaceC2404l f787b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC2336k f788c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ ZoneId f789d;

    public C2373s(InterfaceC2327b interfaceC2327b, InterfaceC2404l interfaceC2404l, InterfaceC2336k interfaceC2336k, ZoneId zoneId) {
        this.f786a = interfaceC2327b;
        this.f787b = interfaceC2404l;
        this.f788c = interfaceC2336k;
        this.f789d = zoneId;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    public final Object mo554d(C2352d c2352d) {
        return c2352d == AbstractC2409q.f850b ? this.f788c : c2352d == AbstractC2409q.f849a ? this.f789d : c2352d == AbstractC2409q.f851c ? this.f787b.mo554d(c2352d) : c2352d.m810l(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        InterfaceC2327b interfaceC2327b = this.f786a;
        return (interfaceC2327b == null || !interfaceC2408p.isDateBased()) ? this.f787b.mo555i(interfaceC2408p) : interfaceC2327b.mo555i(interfaceC2408p);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        InterfaceC2327b interfaceC2327b = this.f786a;
        return (interfaceC2327b == null || !interfaceC2408p.isDateBased()) ? this.f787b.mo556k(interfaceC2408p) : interfaceC2327b.mo556k(interfaceC2408p);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        InterfaceC2327b interfaceC2327b = this.f786a;
        return (interfaceC2327b == null || !interfaceC2408p.isDateBased()) ? this.f787b.mo667l(interfaceC2408p) : interfaceC2327b.mo667l(interfaceC2408p);
    }

    public final String toString() {
        String str;
        String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        InterfaceC2336k interfaceC2336k = this.f788c;
        if (interfaceC2336k != null) {
            str = " with chronology " + interfaceC2336k;
        } else {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        ZoneId zoneId = this.f789d;
        if (zoneId != null) {
            str2 = " with zone " + zoneId;
        }
        return this.f787b + str + str2;
    }
}
