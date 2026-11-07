package j$.time.format;

import j$.time.chrono.C2343r;
import j$.time.chrono.InterfaceC2336k;
import j$.time.chrono.InterfaceC2337l;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2408p;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: j$.time.format.n */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2368n implements InterfaceC2359e {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2408p f764a;

    /* JADX INFO: renamed from: b */
    public final TextStyle f765b;

    /* JADX INFO: renamed from: c */
    public final C2377w f766c;

    /* JADX INFO: renamed from: d */
    public volatile C2362h f767d;

    public C2368n(InterfaceC2408p interfaceC2408p, TextStyle textStyle, C2377w c2377w) {
        this.f764a = interfaceC2408p;
        this.f765b = textStyle;
        this.f766c = c2377w;
    }

    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: D */
    public final int mo818D(C2372r c2372r, CharSequence charSequence, int i) {
        C2377w c2377w = this.f766c;
        InterfaceC2408p interfaceC2408p = this.f764a;
        int length = charSequence.length();
        if (i < 0 || i > length) {
            throw new IndexOutOfBoundsException();
        }
        boolean z = c2372r.f784c;
        DateTimeFormatter dateTimeFormatter = c2372r.f782a;
        TextStyle textStyle = z ? this.f765b : null;
        InterfaceC2336k interfaceC2336k = c2372r.m849c().f801c;
        if (interfaceC2336k == null && (interfaceC2336k = c2372r.f782a.f728e) == null) {
            interfaceC2336k = C2343r.f701c;
        }
        InterfaceC2336k interfaceC2336k2 = interfaceC2336k;
        Iterator itMo817e = (interfaceC2336k2 == null || interfaceC2336k2 == C2343r.f701c) ? c2377w.mo817e(interfaceC2408p, textStyle, dateTimeFormatter.f725b) : c2377w.mo816d(interfaceC2336k2, interfaceC2408p, textStyle, dateTimeFormatter.f725b);
        if (itMo817e != null) {
            while (itMo817e.hasNext()) {
                Map.Entry entry = (Map.Entry) itMo817e.next();
                String str = (String) entry.getKey();
                if (c2372r.m853g(str, 0, charSequence, i, str.length())) {
                    return c2372r.m852f(this.f764a, ((Long) entry.getValue()).longValue(), i, str.length() + i);
                }
            }
            if (interfaceC2408p == EnumC2393a.ERA && !c2372r.f784c) {
                Iterator it = interfaceC2336k2.mo779C().iterator();
                while (it.hasNext()) {
                    String string = ((InterfaceC2337l) it.next()).toString();
                    if (c2372r.m853g(string, 0, charSequence, i, string.length())) {
                        return c2372r.m852f(this.f764a, r8.getValue(), i, string.length() + i);
                    }
                }
            }
            if (c2372r.f784c) {
                return ~i;
            }
        }
        if (this.f767d == null) {
            this.f767d = new C2362h(this.f764a, 1, 19, a0.NORMAL);
        }
        return this.f767d.mo818D(c2372r, charSequence, i);
    }

    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: s */
    public final boolean mo819s(C2374t c2374t, StringBuilder sb) {
        Long lM854a = c2374t.m854a(this.f764a);
        DateTimeFormatter dateTimeFormatter = c2374t.f791b;
        if (lM854a == null) {
            return false;
        }
        InterfaceC2336k interfaceC2336k = (InterfaceC2336k) c2374t.f790a.mo554d(AbstractC2409q.f850b);
        String strMo815c = (interfaceC2336k == null || interfaceC2336k == C2343r.f701c) ? this.f766c.mo815c(this.f764a, lM854a.longValue(), this.f765b, dateTimeFormatter.f725b) : this.f766c.mo814b(interfaceC2336k, this.f764a, lM854a.longValue(), this.f765b, dateTimeFormatter.f725b);
        if (strMo815c != null) {
            sb.append(strMo815c);
            return true;
        }
        if (this.f767d == null) {
            this.f767d = new C2362h(this.f764a, 1, 19, a0.NORMAL);
        }
        return this.f767d.mo819s(c2374t, sb);
    }

    public final String toString() {
        TextStyle textStyle = TextStyle.FULL;
        TextStyle textStyle2 = this.f765b;
        InterfaceC2408p interfaceC2408p = this.f764a;
        if (textStyle2 == textStyle) {
            return "Text(" + interfaceC2408p + ")";
        }
        return "Text(" + interfaceC2408p + "," + textStyle2 + ")";
    }
}
