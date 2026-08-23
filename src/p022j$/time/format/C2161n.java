package p022j$.time.format;

import p022j$.time.ZoneId;

/* JADX INFO: renamed from: j$.time.format.n */
/* JADX INFO: loaded from: classes2.dex */
public class C2161n implements InterfaceC2153f {

    /* JADX INFO: renamed from: a */
    public final C2148a f767a;

    /* JADX INFO: renamed from: b */
    public final String f768b;

    public C2161n(C2148a c2148a, String str) {
        this.f767a = c2148a;
        this.f768b = str;
    }

    @Override // p022j$.time.format.InterfaceC2153f
    /* JADX INFO: renamed from: h */
    public boolean mo719h(C2165r c2165r, StringBuilder sb) {
        ZoneId zoneId = (ZoneId) c2165r.m736b(this.f767a);
        if (zoneId == null) {
            return false;
        }
        sb.append(zoneId.getId());
        return true;
    }

    public final String toString() {
        return this.f768b;
    }
}
