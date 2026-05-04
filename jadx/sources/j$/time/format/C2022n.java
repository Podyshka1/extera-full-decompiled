package j$.time.format;

import j$.time.ZoneId;

/* JADX INFO: renamed from: j$.time.format.n */
/* JADX INFO: loaded from: classes2.dex */
public class C2022n implements InterfaceC2014f {

    /* JADX INFO: renamed from: a */
    public final C2009a f532a;

    /* JADX INFO: renamed from: b */
    public final String f533b;

    public C2022n(C2009a c2009a, String str) {
        this.f532a = c2009a;
        this.f533b = str;
    }

    @Override // j$.time.format.InterfaceC2014f
    /* JADX INFO: renamed from: h */
    public boolean mo596h(C2026r c2026r, StringBuilder sb) {
        ZoneId zoneId = (ZoneId) c2026r.m613b(this.f532a);
        if (zoneId == null) {
            return false;
        }
        sb.append(zoneId.getId());
        return true;
    }

    public final String toString() {
        return this.f533b;
    }
}
