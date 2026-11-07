package j$.time.format;

import j$.time.chrono.C2203r;
import j$.time.chrono.InterfaceC2196k;
import j$.time.chrono.InterfaceC2197l;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2269p;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: j$.time.format.n */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2228n implements InterfaceC2219e {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2269p f760a;

    /* JADX INFO: renamed from: b */
    public final TextStyle f761b;

    /* JADX INFO: renamed from: c */
    public final C2237w f762c;

    /* JADX INFO: renamed from: d */
    public volatile C2222h f763d;

    public C2228n(InterfaceC2269p interfaceC2269p, TextStyle textStyle, C2237w c2237w) {
        this.f760a = interfaceC2269p;
        this.f761b = textStyle;
        this.f762c = c2237w;
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: D */
    public final int mo774D(C2232r c2232r, CharSequence charSequence, int i) {
        C2237w c2237w = this.f762c;
        InterfaceC2269p interfaceC2269p = this.f760a;
        int length = charSequence.length();
        if (i < 0 || i > length) {
            throw new IndexOutOfBoundsException();
        }
        boolean z = c2232r.f780c;
        DateTimeFormatter dateTimeFormatter = c2232r.f778a;
        TextStyle textStyle = z ? this.f761b : null;
        InterfaceC2196k interfaceC2196k = c2232r.m805c().f797c;
        if (interfaceC2196k == null && (interfaceC2196k = c2232r.f778a.f724e) == null) {
            interfaceC2196k = C2203r.f699c;
        }
        InterfaceC2196k interfaceC2196k2 = interfaceC2196k;
        Iterator itMo773e = (interfaceC2196k2 == null || interfaceC2196k2 == C2203r.f699c) ? c2237w.mo773e(interfaceC2269p, textStyle, dateTimeFormatter.f721b) : c2237w.mo772d(interfaceC2196k2, interfaceC2269p, textStyle, dateTimeFormatter.f721b);
        if (itMo773e != null) {
            while (itMo773e.hasNext()) {
                Map.Entry entry = (Map.Entry) itMo773e.next();
                String str = (String) entry.getKey();
                if (c2232r.m809g(str, 0, charSequence, i, str.length())) {
                    return c2232r.m808f(this.f760a, ((Long) entry.getValue()).longValue(), i, str.length() + i);
                }
            }
            if (interfaceC2269p == EnumC2254a.ERA && !c2232r.f780c) {
                Iterator it = interfaceC2196k2.mo744C().iterator();
                while (it.hasNext()) {
                    String string = ((InterfaceC2197l) it.next()).toString();
                    if (c2232r.m809g(string, 0, charSequence, i, string.length())) {
                        return c2232r.m808f(this.f760a, r8.getValue(), i, string.length() + i);
                    }
                }
            }
            if (c2232r.f780c) {
                return ~i;
            }
        }
        if (this.f763d == null) {
            this.f763d = new C2222h(this.f760a, 1, 19, a0.NORMAL);
        }
        return this.f763d.mo774D(c2232r, charSequence, i);
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: s */
    public final boolean mo775s(C2234t c2234t, StringBuilder sb) {
        Long lM810a = c2234t.m810a(this.f760a);
        DateTimeFormatter dateTimeFormatter = c2234t.f787b;
        if (lM810a == null) {
            return false;
        }
        InterfaceC2196k interfaceC2196k = (InterfaceC2196k) c2234t.f786a.mo530d(AbstractC2270q.f848b);
        String strMo771c = (interfaceC2196k == null || interfaceC2196k == C2203r.f699c) ? this.f762c.mo771c(this.f760a, lM810a.longValue(), this.f761b, dateTimeFormatter.f721b) : this.f762c.mo770b(interfaceC2196k, this.f760a, lM810a.longValue(), this.f761b, dateTimeFormatter.f721b);
        if (strMo771c != null) {
            sb.append(strMo771c);
            return true;
        }
        if (this.f763d == null) {
            this.f763d = new C2222h(this.f760a, 1, 19, a0.NORMAL);
        }
        return this.f763d.mo775s(c2234t, sb);
    }

    public final String toString() {
        TextStyle textStyle = TextStyle.FULL;
        TextStyle textStyle2 = this.f761b;
        InterfaceC2269p interfaceC2269p = this.f760a;
        if (textStyle2 == textStyle) {
            return "Text(" + interfaceC2269p + ")";
        }
        return "Text(" + interfaceC2269p + "," + textStyle2 + ")";
    }
}
