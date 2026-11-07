package j$.time.format;

import j$.time.C2213e;
import j$.time.ZoneId;
import j$.time.chrono.InterfaceC2187b;
import j$.time.chrono.InterfaceC2196k;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2272s;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2269p;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.time.format.s */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2233s implements InterfaceC2265l {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2187b f782a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ InterfaceC2265l f783b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC2196k f784c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ ZoneId f785d;

    public C2233s(InterfaceC2187b interfaceC2187b, InterfaceC2265l interfaceC2265l, InterfaceC2196k interfaceC2196k, ZoneId zoneId) {
        this.f782a = interfaceC2187b;
        this.f783b = interfaceC2265l;
        this.f784c = interfaceC2196k;
        this.f785d = zoneId;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        return c2213e == AbstractC2270q.f848b ? this.f784c : c2213e == AbstractC2270q.f847a ? this.f785d : c2213e == AbstractC2270q.f849c ? this.f783b.mo530d(c2213e) : c2213e.m766l(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        InterfaceC2187b interfaceC2187b = this.f782a;
        return (interfaceC2187b == null || !interfaceC2269p.isDateBased()) ? this.f783b.mo531i(interfaceC2269p) : interfaceC2187b.mo531i(interfaceC2269p);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        InterfaceC2187b interfaceC2187b = this.f782a;
        return (interfaceC2187b == null || !interfaceC2269p.isDateBased()) ? this.f783b.mo532k(interfaceC2269p) : interfaceC2187b.mo532k(interfaceC2269p);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        InterfaceC2187b interfaceC2187b = this.f782a;
        return (interfaceC2187b == null || !interfaceC2269p.isDateBased()) ? this.f783b.mo643l(interfaceC2269p) : interfaceC2187b.mo643l(interfaceC2269p);
    }

    public final String toString() {
        String str;
        String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        InterfaceC2196k interfaceC2196k = this.f784c;
        if (interfaceC2196k != null) {
            str = " with chronology " + interfaceC2196k;
        } else {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        ZoneId zoneId = this.f785d;
        if (zoneId != null) {
            str2 = " with zone " + zoneId;
        }
        return this.f783b + str + str2;
    }
}
