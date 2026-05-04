package j$.time.format;

import j$.time.ZoneId;
import j$.time.chrono.InterfaceC1981b;
import j$.time.chrono.InterfaceC1990k;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2067u;
import j$.time.temporal.InterfaceC2060n;
import j$.time.temporal.InterfaceC2063q;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.time.format.q */
/* JADX INFO: loaded from: classes2.dex */
public final class C2025q implements InterfaceC2060n {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC1981b f542a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ InterfaceC2060n f543b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC1990k f544c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ ZoneId f545d;

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo456h(InterfaceC2063q interfaceC2063q) {
        return AbstractC2064r.m655a(this, interfaceC2063q);
    }

    public C2025q(InterfaceC1981b interfaceC1981b, InterfaceC2060n interfaceC2060n, InterfaceC1990k interfaceC1990k, ZoneId zoneId) {
        this.f542a = interfaceC1981b;
        this.f543b = interfaceC2060n;
        this.f544c = interfaceC1990k;
        this.f545d = zoneId;
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        InterfaceC1981b interfaceC1981b = this.f542a;
        if (interfaceC1981b != null && interfaceC2063q.isDateBased()) {
            return interfaceC1981b.mo455e(interfaceC2063q);
        }
        return this.f543b.mo455e(interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        InterfaceC1981b interfaceC1981b = this.f542a;
        if (interfaceC1981b != null && interfaceC2063q.isDateBased()) {
            return interfaceC1981b.mo457j(interfaceC2063q);
        }
        return this.f543b.mo457j(interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        InterfaceC1981b interfaceC1981b = this.f542a;
        if (interfaceC1981b != null && interfaceC2063q.isDateBased()) {
            return interfaceC1981b.mo460w(interfaceC2063q);
        }
        return this.f543b.mo460w(interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final Object mo458k(C2009a c2009a) {
        if (c2009a == AbstractC2064r.f611b) {
            return this.f544c;
        }
        if (c2009a == AbstractC2064r.f610a) {
            return this.f545d;
        }
        if (c2009a == AbstractC2064r.f612c) {
            return this.f543b.mo458k(c2009a);
        }
        return c2009a.m593a(this);
    }

    public final String toString() {
        String str;
        String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        InterfaceC1990k interfaceC1990k = this.f544c;
        if (interfaceC1990k != null) {
            str = " with chronology " + interfaceC1990k;
        } else {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        ZoneId zoneId = this.f545d;
        if (zoneId != null) {
            str2 = " with zone " + zoneId;
        }
        return this.f543b + str + str2;
    }
}
