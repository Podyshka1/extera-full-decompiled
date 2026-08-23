package p022j$.time.format;

import p022j$.time.chrono.C2136r;
import p022j$.time.chrono.InterfaceC2129k;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.InterfaceC2202q;

/* JADX INFO: renamed from: j$.time.format.m */
/* JADX INFO: loaded from: classes2.dex */
public final class C2160m implements InterfaceC2153f {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2202q f763a;

    /* JADX INFO: renamed from: b */
    public final TextStyle f764b;

    /* JADX INFO: renamed from: c */
    public final C2168u f765c;

    /* JADX INFO: renamed from: d */
    public volatile C2156i f766d;

    public C2160m(InterfaceC2202q interfaceC2202q, TextStyle textStyle, C2168u c2168u) {
        this.f763a = interfaceC2202q;
        this.f764b = textStyle;
        this.f765c = c2168u;
    }

    @Override // p022j$.time.format.InterfaceC2153f
    /* JADX INFO: renamed from: h */
    public final boolean mo719h(C2165r c2165r, StringBuilder sb) {
        String strMo718b;
        Long lM735a = c2165r.m735a(this.f763a);
        if (lM735a == null) {
            return false;
        }
        InterfaceC2129k interfaceC2129k = (InterfaceC2129k) c2165r.f781a.mo578k(AbstractC2203r.f846b);
        if (interfaceC2129k == null || interfaceC2129k == C2136r.f714c) {
            strMo718b = this.f765c.mo718b(this.f763a, lM735a.longValue(), this.f764b, c2165r.f782b.f738b);
        } else {
            strMo718b = this.f765c.mo717a(interfaceC2129k, this.f763a, lM735a.longValue(), this.f764b, c2165r.f782b.f738b);
        }
        if (strMo718b != null) {
            sb.append(strMo718b);
            return true;
        }
        if (this.f766d == null) {
            this.f766d = new C2156i(this.f763a, 1, 19, EnumC2171x.NORMAL);
        }
        return this.f766d.mo719h(c2165r, sb);
    }

    public final String toString() {
        TextStyle textStyle = TextStyle.FULL;
        InterfaceC2202q interfaceC2202q = this.f763a;
        TextStyle textStyle2 = this.f764b;
        if (textStyle2 == textStyle) {
            return "Text(" + interfaceC2202q + ")";
        }
        return "Text(" + interfaceC2202q + "," + textStyle2 + ")";
    }
}
