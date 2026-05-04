package p022j$.time.format;

import okhttp3.internal.url._UrlKt;
import p022j$.time.ZoneId;
import p022j$.time.chrono.InterfaceC2120b;
import p022j$.time.chrono.InterfaceC2129k;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.time.temporal.InterfaceC2202q;

/* JADX INFO: renamed from: j$.time.format.q */
/* JADX INFO: loaded from: classes2.dex */
public final class C2164q implements InterfaceC2199n {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2120b f777a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ InterfaceC2199n f778b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC2129k f779c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ ZoneId f780d;

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo576h(InterfaceC2202q interfaceC2202q) {
        return AbstractC2203r.m780a(this, interfaceC2202q);
    }

    public C2164q(InterfaceC2120b interfaceC2120b, InterfaceC2199n interfaceC2199n, InterfaceC2129k interfaceC2129k, ZoneId zoneId) {
        this.f777a = interfaceC2120b;
        this.f778b = interfaceC2199n;
        this.f779c = interfaceC2129k;
        this.f780d = zoneId;
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        InterfaceC2120b interfaceC2120b = this.f777a;
        if (interfaceC2120b != null && interfaceC2202q.isDateBased()) {
            return interfaceC2120b.mo575e(interfaceC2202q);
        }
        return this.f778b.mo575e(interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        InterfaceC2120b interfaceC2120b = this.f777a;
        if (interfaceC2120b != null && interfaceC2202q.isDateBased()) {
            return interfaceC2120b.mo577j(interfaceC2202q);
        }
        return this.f778b.mo577j(interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        InterfaceC2120b interfaceC2120b = this.f777a;
        if (interfaceC2120b != null && interfaceC2202q.isDateBased()) {
            return interfaceC2120b.mo580w(interfaceC2202q);
        }
        return this.f778b.mo580w(interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final Object mo578k(C2148a c2148a) {
        if (c2148a == AbstractC2203r.f846b) {
            return this.f779c;
        }
        if (c2148a == AbstractC2203r.f845a) {
            return this.f780d;
        }
        if (c2148a == AbstractC2203r.f847c) {
            return this.f778b.mo578k(c2148a);
        }
        return c2148a.m716a(this);
    }

    public final String toString() {
        String str;
        String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        InterfaceC2129k interfaceC2129k = this.f779c;
        if (interfaceC2129k != null) {
            str = " with chronology " + interfaceC2129k;
        } else {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        ZoneId zoneId = this.f780d;
        if (zoneId != null) {
            str2 = " with zone " + zoneId;
        }
        return this.f778b + str + str2;
    }
}
