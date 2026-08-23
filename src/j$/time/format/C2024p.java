package j$.time.format;

import j$.time.chrono.InterfaceC1990k;
import j$.time.temporal.AbstractC2056j;
import j$.time.temporal.AbstractC2058l;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2054h;
import j$.time.temporal.InterfaceC2063q;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: renamed from: j$.time.format.p */
/* JADX INFO: loaded from: classes2.dex */
public final class C2024p {

    /* JADX INFO: renamed from: f */
    public static final C2009a f536f = new C2009a(0);

    /* JADX INFO: renamed from: a */
    public C2024p f537a;

    /* JADX INFO: renamed from: b */
    public final C2024p f538b;

    /* JADX INFO: renamed from: c */
    public final List f539c;

    /* JADX INFO: renamed from: d */
    public final boolean f540d;

    /* JADX INFO: renamed from: e */
    public int f541e;

    static {
        HashMap map = new HashMap();
        map.put('G', EnumC2047a.ERA);
        map.put('y', EnumC2047a.YEAR_OF_ERA);
        map.put('u', EnumC2047a.YEAR);
        EnumC2054h enumC2054h = AbstractC2056j.f600a;
        map.put('Q', enumC2054h);
        map.put('q', enumC2054h);
        EnumC2047a enumC2047a = EnumC2047a.MONTH_OF_YEAR;
        map.put('M', enumC2047a);
        map.put('L', enumC2047a);
        map.put('D', EnumC2047a.DAY_OF_YEAR);
        map.put('d', EnumC2047a.DAY_OF_MONTH);
        map.put('F', EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2047a enumC2047a2 = EnumC2047a.DAY_OF_WEEK;
        map.put('E', enumC2047a2);
        map.put('c', enumC2047a2);
        map.put('e', enumC2047a2);
        map.put('a', EnumC2047a.AMPM_OF_DAY);
        map.put('H', EnumC2047a.HOUR_OF_DAY);
        map.put('k', EnumC2047a.CLOCK_HOUR_OF_DAY);
        map.put('K', EnumC2047a.HOUR_OF_AMPM);
        map.put('h', EnumC2047a.CLOCK_HOUR_OF_AMPM);
        map.put('m', EnumC2047a.MINUTE_OF_HOUR);
        map.put('s', EnumC2047a.SECOND_OF_MINUTE);
        EnumC2047a enumC2047a3 = EnumC2047a.NANO_OF_SECOND;
        map.put('S', enumC2047a3);
        map.put('A', EnumC2047a.MILLI_OF_DAY);
        map.put('n', enumC2047a3);
        map.put('N', EnumC2047a.NANO_OF_DAY);
        map.put('g', AbstractC2058l.f607a);
    }

    public C2024p() {
        this.f537a = this;
        this.f539c = new ArrayList();
        this.f541e = -1;
        this.f538b = null;
        this.f540d = false;
    }

    public C2024p(C2024p c2024p) {
        this.f537a = this;
        this.f539c = new ArrayList();
        this.f541e = -1;
        this.f538b = c2024p;
        this.f540d = true;
    }

    /* JADX INFO: renamed from: g */
    public final void m606g(InterfaceC2063q interfaceC2063q, int i) {
        Objects.requireNonNull(interfaceC2063q, "field");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
        }
        m605f(new C2017i(interfaceC2063q, i, i, EnumC2032x.NOT_NEGATIVE));
    }

    /* JADX INFO: renamed from: h */
    public final void m607h(InterfaceC2063q interfaceC2063q, int i, int i2, EnumC2032x enumC2032x) {
        if (i == i2 && enumC2032x == EnumC2032x.NOT_NEGATIVE) {
            m606g(interfaceC2063q, i2);
            return;
        }
        Objects.requireNonNull(interfaceC2063q, "field");
        Objects.requireNonNull(enumC2032x, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        }
        if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
        m605f(new C2017i(interfaceC2063q, i, i2, enumC2032x));
    }

    /* JADX INFO: renamed from: f */
    public final void m605f(C2017i c2017i) {
        C2017i c2017iMo597a;
        C2024p c2024p = this.f537a;
        int i = c2024p.f541e;
        if (i < 0) {
            c2024p.f541e = m601b(c2017i);
            return;
        }
        C2017i c2017i2 = (C2017i) ((ArrayList) c2024p.f539c).get(i);
        int i2 = c2017i.f517b;
        int i3 = c2017i.f518c;
        if (i2 == i3 && c2017i.f519d == EnumC2032x.NOT_NEGATIVE) {
            c2017iMo597a = c2017i2.mo598b(i3);
            m601b(c2017i.mo597a());
            this.f537a.f541e = i;
        } else {
            c2017iMo597a = c2017i2.mo597a();
            this.f537a.f541e = m601b(c2017i);
        }
        ((ArrayList) this.f537a.f539c).set(i, c2017iMo597a);
    }

    /* JADX INFO: renamed from: e */
    public final void m604e(EnumC2047a enumC2047a, Map map) {
        Objects.requireNonNull(enumC2047a, "field");
        Objects.requireNonNull(map, "textLookup");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        TextStyle textStyle = TextStyle.FULL;
        m601b(new C2021m(enumC2047a, textStyle, new C2010b(new C2028t(Collections.singletonMap(textStyle, linkedHashMap)))));
    }

    /* JADX INFO: renamed from: c */
    public final void m602c(char c) {
        m601b(new C2012d(c));
    }

    /* JADX INFO: renamed from: d */
    public final void m603d(String str) {
        Objects.requireNonNull(str, "literal");
        if (str.isEmpty()) {
            return;
        }
        if (str.length() == 1) {
            m601b(new C2012d(str.charAt(0)));
        } else {
            m601b(new C2020l(str));
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m600a(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        C2013e c2013e = dateTimeFormatter.f502a;
        if (c2013e.f513b) {
            c2013e = new C2013e(c2013e.f512a, false);
        }
        m601b(c2013e);
    }

    /* JADX INFO: renamed from: j */
    public final void m609j() {
        C2024p c2024p = this.f537a;
        c2024p.f541e = -1;
        this.f537a = new C2024p(c2024p);
    }

    /* JADX INFO: renamed from: i */
    public final void m608i() {
        C2024p c2024p = this.f537a;
        if (c2024p.f538b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        if (((ArrayList) c2024p.f539c).size() > 0) {
            C2024p c2024p2 = this.f537a;
            C2013e c2013e = new C2013e(c2024p2.f539c, c2024p2.f540d);
            this.f537a = this.f537a.f538b;
            m601b(c2013e);
            return;
        }
        this.f537a = this.f537a.f538b;
    }

    /* JADX INFO: renamed from: b */
    public final int m601b(InterfaceC2014f interfaceC2014f) {
        Objects.requireNonNull(interfaceC2014f, "pp");
        C2024p c2024p = this.f537a;
        c2024p.getClass();
        ((ArrayList) c2024p.f539c).add(interfaceC2014f);
        this.f537a.f541e = -1;
        return ((ArrayList) r2.f539c).size() - 1;
    }

    /* JADX INFO: renamed from: k */
    public final DateTimeFormatter m610k(EnumC2031w enumC2031w, InterfaceC1990k interfaceC1990k) {
        return m611l(Locale.getDefault(), enumC2031w, interfaceC1990k);
    }

    /* JADX INFO: renamed from: l */
    public final DateTimeFormatter m611l(Locale locale, EnumC2031w enumC2031w, InterfaceC1990k interfaceC1990k) {
        Objects.requireNonNull(locale, "locale");
        while (this.f537a.f538b != null) {
            m608i();
        }
        C2013e c2013e = new C2013e(this.f539c, false);
        C2030v c2030v = C2030v.f553a;
        return new DateTimeFormatter(c2013e, locale, enumC2031w, interfaceC1990k);
    }
}
