package j$.time.format;

import j$.time.chrono.C2121r;
import j$.time.chrono.InterfaceC2114k;
import j$.time.chrono.InterfaceC2115l;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2188p;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: j$.time.format.n */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2146n implements InterfaceC2137e {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2188p f604a;

    /* JADX INFO: renamed from: b */
    public final TextStyle f605b;

    /* JADX INFO: renamed from: c */
    public final C2155w f606c;

    /* JADX INFO: renamed from: d */
    public volatile C2140h f607d;

    public C2146n(InterfaceC2188p interfaceC2188p, TextStyle textStyle, C2155w c2155w) {
        this.f604a = interfaceC2188p;
        this.f605b = textStyle;
        this.f606c = c2155w;
    }

    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: B */
    public final int mo636B(C2150r c2150r, CharSequence charSequence, int i) {
        C2155w c2155w = this.f606c;
        InterfaceC2188p interfaceC2188p = this.f604a;
        int length = charSequence.length();
        if (i < 0 || i > length) {
            throw new IndexOutOfBoundsException();
        }
        boolean z = c2150r.f624c;
        DateTimeFormatter dateTimeFormatter = c2150r.f622a;
        TextStyle textStyle = z ? this.f605b : null;
        InterfaceC2114k interfaceC2114k = c2150r.m667c().f641c;
        if (interfaceC2114k == null && (interfaceC2114k = c2150r.f622a.f568e) == null) {
            interfaceC2114k = C2121r.f543c;
        }
        InterfaceC2114k interfaceC2114k2 = interfaceC2114k;
        Iterator itMo635e = (interfaceC2114k2 == null || interfaceC2114k2 == C2121r.f543c) ? c2155w.mo635e(interfaceC2188p, textStyle, dateTimeFormatter.f565b) : c2155w.mo634d(interfaceC2114k2, interfaceC2188p, textStyle, dateTimeFormatter.f565b);
        if (itMo635e != null) {
            while (itMo635e.hasNext()) {
                Map.Entry entry = (Map.Entry) itMo635e.next();
                String str = (String) entry.getKey();
                if (c2150r.m671g(str, 0, charSequence, i, str.length())) {
                    return c2150r.m670f(this.f604a, ((Long) entry.getValue()).longValue(), i, str.length() + i);
                }
            }
            if (interfaceC2188p == EnumC2173a.ERA && !c2150r.f624c) {
                Iterator it = interfaceC2114k2.mo594A().iterator();
                while (it.hasNext()) {
                    String string = ((InterfaceC2115l) it.next()).toString();
                    if (c2150r.m671g(string, 0, charSequence, i, string.length())) {
                        return c2150r.m670f(this.f604a, r8.getValue(), i, string.length() + i);
                    }
                }
            }
            if (c2150r.f624c) {
                return ~i;
            }
        }
        if (this.f607d == null) {
            this.f607d = new C2140h(this.f604a, 1, 19, a0.NORMAL);
        }
        return this.f607d.mo636B(c2150r, charSequence, i);
    }

    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: t */
    public final boolean mo637t(C2152t c2152t, StringBuilder sb) {
        Long lM672a = c2152t.m672a(this.f604a);
        DateTimeFormatter dateTimeFormatter = c2152t.f631b;
        if (lM672a == null) {
            return false;
        }
        InterfaceC2114k interfaceC2114k = (InterfaceC2114k) c2152t.f630a.mo482d(AbstractC2189q.f698b);
        String strMo633c = (interfaceC2114k == null || interfaceC2114k == C2121r.f543c) ? this.f606c.mo633c(this.f604a, lM672a.longValue(), this.f605b, dateTimeFormatter.f565b) : this.f606c.mo632b(interfaceC2114k, this.f604a, lM672a.longValue(), this.f605b, dateTimeFormatter.f565b);
        if (strMo633c != null) {
            sb.append(strMo633c);
            return true;
        }
        if (this.f607d == null) {
            this.f607d = new C2140h(this.f604a, 1, 19, a0.NORMAL);
        }
        return this.f607d.mo637t(c2152t, sb);
    }

    public final String toString() {
        TextStyle textStyle = TextStyle.FULL;
        TextStyle textStyle2 = this.f605b;
        InterfaceC2188p interfaceC2188p = this.f604a;
        if (textStyle2 == textStyle) {
            return "Text(" + interfaceC2188p + ")";
        }
        return "Text(" + interfaceC2188p + "," + textStyle2 + ")";
    }
}
