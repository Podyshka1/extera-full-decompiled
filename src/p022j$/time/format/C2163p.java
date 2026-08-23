package p022j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import p022j$.time.chrono.InterfaceC2129k;
import p022j$.time.temporal.AbstractC2195j;
import p022j$.time.temporal.AbstractC2197l;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2193h;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.time.format.p */
/* JADX INFO: loaded from: classes2.dex */
public final class C2163p {

    /* JADX INFO: renamed from: f */
    public static final C2148a f771f = new C2148a(0);

    /* JADX INFO: renamed from: a */
    public C2163p f772a;

    /* JADX INFO: renamed from: b */
    public final C2163p f773b;

    /* JADX INFO: renamed from: c */
    public final List f774c;

    /* JADX INFO: renamed from: d */
    public final boolean f775d;

    /* JADX INFO: renamed from: e */
    public int f776e;

    static {
        HashMap map = new HashMap();
        map.put('G', EnumC2186a.ERA);
        map.put('y', EnumC2186a.YEAR_OF_ERA);
        map.put('u', EnumC2186a.YEAR);
        EnumC2193h enumC2193h = AbstractC2195j.f835a;
        map.put('Q', enumC2193h);
        map.put('q', enumC2193h);
        EnumC2186a enumC2186a = EnumC2186a.MONTH_OF_YEAR;
        map.put('M', enumC2186a);
        map.put('L', enumC2186a);
        map.put('D', EnumC2186a.DAY_OF_YEAR);
        map.put('d', EnumC2186a.DAY_OF_MONTH);
        map.put('F', EnumC2186a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2186a enumC2186a2 = EnumC2186a.DAY_OF_WEEK;
        map.put('E', enumC2186a2);
        map.put('c', enumC2186a2);
        map.put('e', enumC2186a2);
        map.put('a', EnumC2186a.AMPM_OF_DAY);
        map.put('H', EnumC2186a.HOUR_OF_DAY);
        map.put('k', EnumC2186a.CLOCK_HOUR_OF_DAY);
        map.put('K', EnumC2186a.HOUR_OF_AMPM);
        map.put('h', EnumC2186a.CLOCK_HOUR_OF_AMPM);
        map.put('m', EnumC2186a.MINUTE_OF_HOUR);
        map.put('s', EnumC2186a.SECOND_OF_MINUTE);
        EnumC2186a enumC2186a3 = EnumC2186a.NANO_OF_SECOND;
        map.put('S', enumC2186a3);
        map.put('A', EnumC2186a.MILLI_OF_DAY);
        map.put('n', enumC2186a3);
        map.put('N', EnumC2186a.NANO_OF_DAY);
        map.put('g', AbstractC2197l.f842a);
    }

    public C2163p() {
        this.f772a = this;
        this.f774c = new ArrayList();
        this.f776e = -1;
        this.f773b = null;
        this.f775d = false;
    }

    public C2163p(C2163p c2163p) {
        this.f772a = this;
        this.f774c = new ArrayList();
        this.f776e = -1;
        this.f773b = c2163p;
        this.f775d = true;
    }

    /* JADX INFO: renamed from: g */
    public final void m729g(InterfaceC2202q interfaceC2202q, int i) {
        Objects.requireNonNull(interfaceC2202q, "field");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
        }
        m728f(new C2156i(interfaceC2202q, i, i, EnumC2171x.NOT_NEGATIVE));
    }

    /* JADX INFO: renamed from: h */
    public final void m730h(InterfaceC2202q interfaceC2202q, int i, int i2, EnumC2171x enumC2171x) {
        if (i == i2 && enumC2171x == EnumC2171x.NOT_NEGATIVE) {
            m729g(interfaceC2202q, i2);
            return;
        }
        Objects.requireNonNull(interfaceC2202q, "field");
        Objects.requireNonNull(enumC2171x, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        }
        if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
        m728f(new C2156i(interfaceC2202q, i, i2, enumC2171x));
    }

    /* JADX INFO: renamed from: f */
    public final void m728f(C2156i c2156i) {
        C2156i c2156iMo720a;
        C2163p c2163p = this.f772a;
        int i = c2163p.f776e;
        if (i < 0) {
            c2163p.f776e = m724b(c2156i);
            return;
        }
        C2156i c2156i2 = (C2156i) ((ArrayList) c2163p.f774c).get(i);
        int i2 = c2156i.f752b;
        int i3 = c2156i.f753c;
        if (i2 == i3 && c2156i.f754d == EnumC2171x.NOT_NEGATIVE) {
            c2156iMo720a = c2156i2.mo721b(i3);
            m724b(c2156i.mo720a());
            this.f772a.f776e = i;
        } else {
            c2156iMo720a = c2156i2.mo720a();
            this.f772a.f776e = m724b(c2156i);
        }
        ((ArrayList) this.f772a.f774c).set(i, c2156iMo720a);
    }

    /* JADX INFO: renamed from: e */
    public final void m727e(EnumC2186a enumC2186a, Map map) {
        Objects.requireNonNull(enumC2186a, "field");
        Objects.requireNonNull(map, "textLookup");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        TextStyle textStyle = TextStyle.FULL;
        m724b(new C2160m(enumC2186a, textStyle, new C2149b(new C2167t(Collections.singletonMap(textStyle, linkedHashMap)))));
    }

    /* JADX INFO: renamed from: c */
    public final void m725c(char c) {
        m724b(new C2151d(c));
    }

    /* JADX INFO: renamed from: d */
    public final void m726d(String str) {
        Objects.requireNonNull(str, "literal");
        if (str.isEmpty()) {
            return;
        }
        if (str.length() == 1) {
            m724b(new C2151d(str.charAt(0)));
        } else {
            m724b(new C2159l(str));
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m723a(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        C2152e c2152e = dateTimeFormatter.f737a;
        if (c2152e.f748b) {
            c2152e = new C2152e(c2152e.f747a, false);
        }
        m724b(c2152e);
    }

    /* JADX INFO: renamed from: j */
    public final void m732j() {
        C2163p c2163p = this.f772a;
        c2163p.f776e = -1;
        this.f772a = new C2163p(c2163p);
    }

    /* JADX INFO: renamed from: i */
    public final void m731i() {
        C2163p c2163p = this.f772a;
        if (c2163p.f773b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        if (((ArrayList) c2163p.f774c).size() > 0) {
            C2163p c2163p2 = this.f772a;
            C2152e c2152e = new C2152e(c2163p2.f774c, c2163p2.f775d);
            this.f772a = this.f772a.f773b;
            m724b(c2152e);
            return;
        }
        this.f772a = this.f772a.f773b;
    }

    /* JADX INFO: renamed from: b */
    public final int m724b(InterfaceC2153f interfaceC2153f) {
        Objects.requireNonNull(interfaceC2153f, "pp");
        C2163p c2163p = this.f772a;
        c2163p.getClass();
        ((ArrayList) c2163p.f774c).add(interfaceC2153f);
        this.f772a.f776e = -1;
        return ((ArrayList) r2.f774c).size() - 1;
    }

    /* JADX INFO: renamed from: k */
    public final DateTimeFormatter m733k(EnumC2170w enumC2170w, InterfaceC2129k interfaceC2129k) {
        return m734l(Locale.getDefault(), enumC2170w, interfaceC2129k);
    }

    /* JADX INFO: renamed from: l */
    public final DateTimeFormatter m734l(Locale locale, EnumC2170w enumC2170w, InterfaceC2129k interfaceC2129k) {
        Objects.requireNonNull(locale, "locale");
        while (this.f772a.f773b != null) {
            m731i();
        }
        C2152e c2152e = new C2152e(this.f774c, false);
        C2169v c2169v = C2169v.f788a;
        return new DateTimeFormatter(c2152e, locale, enumC2170w, interfaceC2129k);
    }
}
