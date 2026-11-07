package j$.time.format;

import j$.nio.file.C2148b;
import j$.time.C2213e;
import j$.time.chrono.InterfaceC2196k;
import j$.time.temporal.AbstractC2262i;
import j$.time.temporal.AbstractC2264k;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.EnumC2260g;
import j$.time.temporal.InterfaceC2269p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.format.q */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2231q {

    /* JADX INFO: renamed from: f */
    public static final C2213e f772f = new C2213e(2);

    /* JADX INFO: renamed from: a */
    public C2231q f773a;

    /* JADX INFO: renamed from: b */
    public final C2231q f774b;

    /* JADX INFO: renamed from: c */
    public final List f775c;

    /* JADX INFO: renamed from: d */
    public final boolean f776d;

    /* JADX INFO: renamed from: e */
    public int f777e;

    static {
        HashMap map = new HashMap();
        map.put('G', EnumC2254a.ERA);
        map.put('y', EnumC2254a.YEAR_OF_ERA);
        map.put('u', EnumC2254a.YEAR);
        EnumC2260g enumC2260g = AbstractC2262i.f837a;
        map.put('Q', enumC2260g);
        map.put('q', enumC2260g);
        EnumC2254a enumC2254a = EnumC2254a.MONTH_OF_YEAR;
        map.put('M', enumC2254a);
        map.put('L', enumC2254a);
        map.put('D', EnumC2254a.DAY_OF_YEAR);
        map.put('d', EnumC2254a.DAY_OF_MONTH);
        map.put('F', EnumC2254a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2254a enumC2254a2 = EnumC2254a.DAY_OF_WEEK;
        map.put('E', enumC2254a2);
        map.put('c', enumC2254a2);
        map.put('e', enumC2254a2);
        map.put('a', EnumC2254a.AMPM_OF_DAY);
        map.put('H', EnumC2254a.HOUR_OF_DAY);
        map.put('k', EnumC2254a.CLOCK_HOUR_OF_DAY);
        map.put('K', EnumC2254a.HOUR_OF_AMPM);
        map.put('h', EnumC2254a.CLOCK_HOUR_OF_AMPM);
        map.put('m', EnumC2254a.MINUTE_OF_HOUR);
        map.put('s', EnumC2254a.SECOND_OF_MINUTE);
        EnumC2254a enumC2254a3 = EnumC2254a.NANO_OF_SECOND;
        map.put('S', enumC2254a3);
        map.put('A', EnumC2254a.MILLI_OF_DAY);
        map.put('n', enumC2254a3);
        map.put('N', EnumC2254a.NANO_OF_DAY);
        map.put('g', AbstractC2264k.f844a);
    }

    public C2231q() {
        this.f773a = this;
        this.f775c = new ArrayList();
        this.f777e = -1;
        this.f774b = null;
        this.f776d = false;
    }

    /* JADX INFO: renamed from: a */
    public final void m791a(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        C2218d c2218d = dateTimeFormatter.f720a;
        if (c2218d.f739b) {
            c2218d = new C2218d(c2218d.f738a, false);
        }
        m792b(c2218d);
    }

    /* JADX INFO: renamed from: b */
    public final int m792b(InterfaceC2219e interfaceC2219e) {
        Objects.requireNonNull(interfaceC2219e, "pp");
        C2231q c2231q = this.f773a;
        c2231q.getClass();
        ((ArrayList) c2231q.f775c).add(interfaceC2219e);
        this.f773a.f777e = -1;
        return ((ArrayList) r1.f775c).size() - 1;
    }

    /* JADX INFO: renamed from: c */
    public final void m793c(char c2) {
        m792b(new C2217c(c2));
    }

    /* JADX INFO: renamed from: d */
    public final void m794d(String str) {
        if (str.isEmpty()) {
            return;
        }
        if (str.length() == 1) {
            m792b(new C2217c(str.charAt(0)));
        } else {
            m792b(new C2227m(str));
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m795e(EnumC2254a enumC2254a, Map map) {
        Objects.requireNonNull(enumC2254a, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        TextStyle textStyle = TextStyle.FULL;
        m792b(new C2228n(enumC2254a, textStyle, new C2215a(new C2236v(Collections.singletonMap(textStyle, linkedHashMap)))));
    }

    /* JADX INFO: renamed from: f */
    public final void m796f(C2222h c2222h) {
        C2222h c2222hMo777b;
        C2231q c2231q = this.f773a;
        int i = c2231q.f777e;
        if (i < 0) {
            c2231q.f777e = m792b(c2222h);
            return;
        }
        C2222h c2222h2 = (C2222h) ((ArrayList) c2231q.f775c).get(i);
        int i2 = c2222h.f743b;
        int i3 = c2222h.f744c;
        if (i2 == i3 && c2222h.f745d == a0.NOT_NEGATIVE) {
            c2222hMo777b = c2222h2.mo778c(i3);
            m792b(c2222h.mo777b());
            this.f773a.f777e = i;
        } else {
            c2222hMo777b = c2222h2.mo777b();
            this.f773a.f777e = m792b(c2222h);
        }
        ((ArrayList) this.f773a.f775c).set(i, c2222hMo777b);
    }

    /* JADX INFO: renamed from: g */
    public final void m797g(InterfaceC2269p interfaceC2269p, int i) {
        Objects.requireNonNull(interfaceC2269p, "field");
        if (i < 1 || i > 19) {
            C2148b.m616i("The width must be from 1 to 19 inclusive but was ", i);
        } else {
            m796f(new C2222h(interfaceC2269p, i, i, a0.NOT_NEGATIVE));
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m798h(InterfaceC2269p interfaceC2269p, int i, int i2, a0 a0Var) {
        if (i == i2 && a0Var == a0.NOT_NEGATIVE) {
            m797g(interfaceC2269p, i2);
            return;
        }
        Objects.requireNonNull(interfaceC2269p, "field");
        Objects.requireNonNull(a0Var, "signStyle");
        if (i < 1 || i > 19) {
            C2148b.m616i("The minimum width must be from 1 to 19 inclusive but was ", i);
            return;
        }
        if (i2 < 1 || i2 > 19) {
            C2148b.m616i("The maximum width must be from 1 to 19 inclusive but was ", i2);
            return;
        }
        if (i2 >= i) {
            m796f(new C2222h(interfaceC2269p, i, i2, a0Var));
            return;
        }
        throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
    }

    /* JADX INFO: renamed from: i */
    public final void m799i() {
        C2231q c2231q = this.f773a;
        if (c2231q.f774b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        int size = ((ArrayList) c2231q.f775c).size();
        C2231q c2231q2 = this.f773a;
        if (size <= 0) {
            this.f773a = c2231q2.f774b;
            return;
        }
        C2218d c2218d = new C2218d(c2231q2.f775c, c2231q2.f776d);
        this.f773a = this.f773a.f774b;
        m792b(c2218d);
    }

    /* JADX INFO: renamed from: j */
    public final void m800j() {
        C2231q c2231q = this.f773a;
        c2231q.f777e = -1;
        this.f773a = new C2231q(c2231q);
    }

    /* JADX INFO: renamed from: k */
    public final DateTimeFormatter m801k(EnumC2240z enumC2240z, InterfaceC2196k interfaceC2196k) {
        return m802l(Locale.getDefault(), enumC2240z, interfaceC2196k);
    }

    /* JADX INFO: renamed from: l */
    public final DateTimeFormatter m802l(Locale locale, EnumC2240z enumC2240z, InterfaceC2196k interfaceC2196k) {
        Objects.requireNonNull(locale, "locale");
        while (this.f773a.f774b != null) {
            m799i();
        }
        C2218d c2218d = new C2218d(this.f775c, false);
        C2238x c2238x = C2238x.f794a;
        return new DateTimeFormatter(c2218d, locale, enumC2240z, interfaceC2196k);
    }

    public C2231q(C2231q c2231q) {
        this.f773a = this;
        this.f775c = new ArrayList();
        this.f777e = -1;
        this.f774b = c2231q;
        this.f776d = true;
    }
}
