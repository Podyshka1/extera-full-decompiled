package j$.time.format;

import j$.time.C2159g;
import j$.time.C2196x;
import j$.time.chrono.InterfaceC2114k;
import j$.time.temporal.AbstractC2181i;
import j$.time.temporal.AbstractC2183k;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.EnumC2179g;
import j$.time.temporal.InterfaceC2188p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.format.q */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2149q {

    /* JADX INFO: renamed from: f */
    public static final C2196x f616f = new C2196x(1);

    /* JADX INFO: renamed from: a */
    public C2149q f617a;

    /* JADX INFO: renamed from: b */
    public final C2149q f618b;

    /* JADX INFO: renamed from: c */
    public final List f619c;

    /* JADX INFO: renamed from: d */
    public final boolean f620d;

    /* JADX INFO: renamed from: e */
    public int f621e;

    static {
        HashMap map = new HashMap();
        map.put('G', EnumC2173a.ERA);
        map.put('y', EnumC2173a.YEAR_OF_ERA);
        map.put('u', EnumC2173a.YEAR);
        EnumC2179g enumC2179g = AbstractC2181i.f687a;
        map.put('Q', enumC2179g);
        map.put('q', enumC2179g);
        EnumC2173a enumC2173a = EnumC2173a.MONTH_OF_YEAR;
        map.put('M', enumC2173a);
        map.put('L', enumC2173a);
        map.put('D', EnumC2173a.DAY_OF_YEAR);
        map.put('d', EnumC2173a.DAY_OF_MONTH);
        map.put('F', EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2173a enumC2173a2 = EnumC2173a.DAY_OF_WEEK;
        map.put('E', enumC2173a2);
        map.put('c', enumC2173a2);
        map.put('e', enumC2173a2);
        map.put('a', EnumC2173a.AMPM_OF_DAY);
        map.put('H', EnumC2173a.HOUR_OF_DAY);
        map.put('k', EnumC2173a.CLOCK_HOUR_OF_DAY);
        map.put('K', EnumC2173a.HOUR_OF_AMPM);
        map.put('h', EnumC2173a.CLOCK_HOUR_OF_AMPM);
        map.put('m', EnumC2173a.MINUTE_OF_HOUR);
        map.put('s', EnumC2173a.SECOND_OF_MINUTE);
        EnumC2173a enumC2173a3 = EnumC2173a.NANO_OF_SECOND;
        map.put('S', enumC2173a3);
        map.put('A', EnumC2173a.MILLI_OF_DAY);
        map.put('n', enumC2173a3);
        map.put('N', EnumC2173a.NANO_OF_DAY);
        map.put('g', AbstractC2183k.f694a);
    }

    public C2149q() {
        this.f617a = this;
        this.f619c = new ArrayList();
        this.f621e = -1;
        this.f618b = null;
        this.f620d = false;
    }

    /* JADX INFO: renamed from: a */
    public final void m653a(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        C2136d c2136d = dateTimeFormatter.f564a;
        if (c2136d.f583b) {
            c2136d = new C2136d(c2136d.f582a, false);
        }
        m654b(c2136d);
    }

    /* JADX INFO: renamed from: b */
    public final int m654b(InterfaceC2137e interfaceC2137e) {
        Objects.requireNonNull(interfaceC2137e, "pp");
        C2149q c2149q = this.f617a;
        c2149q.getClass();
        ((ArrayList) c2149q.f619c).add(interfaceC2137e);
        this.f617a.f621e = -1;
        return ((ArrayList) r1.f619c).size() - 1;
    }

    /* JADX INFO: renamed from: c */
    public final void m655c(char c2) {
        m654b(new C2135c(c2));
    }

    /* JADX INFO: renamed from: d */
    public final void m656d(String str) {
        if (str.isEmpty()) {
            return;
        }
        if (str.length() == 1) {
            m654b(new C2135c(str.charAt(0)));
        } else {
            m654b(new C2145m(str));
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m657e(EnumC2173a enumC2173a, Map map) {
        Objects.requireNonNull(enumC2173a, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        TextStyle textStyle = TextStyle.FULL;
        m654b(new C2146n(enumC2173a, textStyle, new C2133a(new C2154v(Collections.singletonMap(textStyle, linkedHashMap)))));
    }

    /* JADX INFO: renamed from: f */
    public final void m658f(C2140h c2140h) {
        C2140h c2140hMo639b;
        C2149q c2149q = this.f617a;
        int i = c2149q.f621e;
        if (i < 0) {
            c2149q.f621e = m654b(c2140h);
            return;
        }
        C2140h c2140h2 = (C2140h) ((ArrayList) c2149q.f619c).get(i);
        int i2 = c2140h.f587b;
        int i3 = c2140h.f588c;
        if (i2 == i3 && c2140h.f589d == a0.NOT_NEGATIVE) {
            c2140hMo639b = c2140h2.mo640c(i3);
            m654b(c2140h.mo639b());
            this.f617a.f621e = i;
        } else {
            c2140hMo639b = c2140h2.mo639b();
            this.f617a.f621e = m654b(c2140h);
        }
        ((ArrayList) this.f617a.f619c).set(i, c2140hMo639b);
    }

    /* JADX INFO: renamed from: g */
    public final void m659g(InterfaceC2188p interfaceC2188p, int i) {
        Objects.requireNonNull(interfaceC2188p, "field");
        if (i < 1 || i > 19) {
            C2159g.m691h("The width must be from 1 to 19 inclusive but was ", i);
        } else {
            m658f(new C2140h(interfaceC2188p, i, i, a0.NOT_NEGATIVE));
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m660h(InterfaceC2188p interfaceC2188p, int i, int i2, a0 a0Var) {
        if (i == i2 && a0Var == a0.NOT_NEGATIVE) {
            m659g(interfaceC2188p, i2);
            return;
        }
        Objects.requireNonNull(interfaceC2188p, "field");
        Objects.requireNonNull(a0Var, "signStyle");
        if (i < 1 || i > 19) {
            C2159g.m691h("The minimum width must be from 1 to 19 inclusive but was ", i);
            return;
        }
        if (i2 < 1 || i2 > 19) {
            C2159g.m691h("The maximum width must be from 1 to 19 inclusive but was ", i2);
            return;
        }
        if (i2 >= i) {
            m658f(new C2140h(interfaceC2188p, i, i2, a0Var));
            return;
        }
        throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
    }

    /* JADX INFO: renamed from: i */
    public final void m661i() {
        C2149q c2149q = this.f617a;
        if (c2149q.f618b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        int size = ((ArrayList) c2149q.f619c).size();
        C2149q c2149q2 = this.f617a;
        if (size <= 0) {
            this.f617a = c2149q2.f618b;
            return;
        }
        C2136d c2136d = new C2136d(c2149q2.f619c, c2149q2.f620d);
        this.f617a = this.f617a.f618b;
        m654b(c2136d);
    }

    /* JADX INFO: renamed from: j */
    public final void m662j() {
        C2149q c2149q = this.f617a;
        c2149q.f621e = -1;
        this.f617a = new C2149q(c2149q);
    }

    /* JADX INFO: renamed from: k */
    public final DateTimeFormatter m663k(EnumC2158z enumC2158z, InterfaceC2114k interfaceC2114k) {
        return m664l(Locale.getDefault(), enumC2158z, interfaceC2114k);
    }

    /* JADX INFO: renamed from: l */
    public final DateTimeFormatter m664l(Locale locale, EnumC2158z enumC2158z, InterfaceC2114k interfaceC2114k) {
        Objects.requireNonNull(locale, "locale");
        while (this.f617a.f618b != null) {
            m661i();
        }
        C2136d c2136d = new C2136d(this.f619c, false);
        C2156x c2156x = C2156x.f638a;
        return new DateTimeFormatter(c2136d, locale, enumC2158z, interfaceC2114k);
    }

    public C2149q(C2149q c2149q) {
        this.f617a = this;
        this.f619c = new ArrayList();
        this.f621e = -1;
        this.f618b = c2149q;
        this.f620d = true;
    }
}
