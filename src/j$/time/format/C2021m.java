package j$.time.format;

import j$.time.chrono.C1997r;
import j$.time.chrono.InterfaceC1990k;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.InterfaceC2063q;

/* JADX INFO: renamed from: j$.time.format.m */
/* JADX INFO: loaded from: classes2.dex */
public final class C2021m implements InterfaceC2014f {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2063q f528a;

    /* JADX INFO: renamed from: b */
    public final TextStyle f529b;

    /* JADX INFO: renamed from: c */
    public final C2029u f530c;

    /* JADX INFO: renamed from: d */
    public volatile C2017i f531d;

    public C2021m(InterfaceC2063q interfaceC2063q, TextStyle textStyle, C2029u c2029u) {
        this.f528a = interfaceC2063q;
        this.f529b = textStyle;
        this.f530c = c2029u;
    }

    @Override // j$.time.format.InterfaceC2014f
    /* JADX INFO: renamed from: h */
    public final boolean mo596h(C2026r c2026r, StringBuilder sb) {
        String strMo595b;
        Long lM612a = c2026r.m612a(this.f528a);
        if (lM612a == null) {
            return false;
        }
        InterfaceC1990k interfaceC1990k = (InterfaceC1990k) c2026r.f546a.mo458k(AbstractC2064r.f611b);
        if (interfaceC1990k == null || interfaceC1990k == C1997r.f480c) {
            strMo595b = this.f530c.mo595b(this.f528a, lM612a.longValue(), this.f529b, c2026r.f547b.f503b);
        } else {
            strMo595b = this.f530c.mo594a(interfaceC1990k, this.f528a, lM612a.longValue(), this.f529b, c2026r.f547b.f503b);
        }
        if (strMo595b != null) {
            sb.append(strMo595b);
            return true;
        }
        if (this.f531d == null) {
            this.f531d = new C2017i(this.f528a, 1, 19, EnumC2032x.NORMAL);
        }
        return this.f531d.mo596h(c2026r, sb);
    }

    public final String toString() {
        TextStyle textStyle = TextStyle.FULL;
        InterfaceC2063q interfaceC2063q = this.f528a;
        TextStyle textStyle2 = this.f529b;
        if (textStyle2 == textStyle) {
            return "Text(" + interfaceC2063q + ")";
        }
        return "Text(" + interfaceC2063q + "," + textStyle2 + ")";
    }
}
