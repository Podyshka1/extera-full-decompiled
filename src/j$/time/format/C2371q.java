package j$.time.format;

import j$.nio.file.C2288b;
import j$.time.C2352d;
import j$.time.chrono.InterfaceC2336k;
import j$.time.temporal.AbstractC2401i;
import j$.time.temporal.AbstractC2403k;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.EnumC2399g;
import j$.time.temporal.InterfaceC2408p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.format.q */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2371q {

    /* JADX INFO: renamed from: f */
    public static final C2352d f776f = new C2352d(3);

    /* JADX INFO: renamed from: a */
    public C2371q f777a;

    /* JADX INFO: renamed from: b */
    public final C2371q f778b;

    /* JADX INFO: renamed from: c */
    public final List f779c;

    /* JADX INFO: renamed from: d */
    public final boolean f780d;

    /* JADX INFO: renamed from: e */
    public int f781e;

    static {
        HashMap map = new HashMap();
        map.put('G', EnumC2393a.ERA);
        map.put('y', EnumC2393a.YEAR_OF_ERA);
        map.put('u', EnumC2393a.YEAR);
        EnumC2399g enumC2399g = AbstractC2401i.f839a;
        map.put('Q', enumC2399g);
        map.put('q', enumC2399g);
        EnumC2393a enumC2393a = EnumC2393a.MONTH_OF_YEAR;
        map.put('M', enumC2393a);
        map.put('L', enumC2393a);
        map.put('D', EnumC2393a.DAY_OF_YEAR);
        map.put('d', EnumC2393a.DAY_OF_MONTH);
        map.put('F', EnumC2393a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2393a enumC2393a2 = EnumC2393a.DAY_OF_WEEK;
        map.put('E', enumC2393a2);
        map.put('c', enumC2393a2);
        map.put('e', enumC2393a2);
        map.put('a', EnumC2393a.AMPM_OF_DAY);
        map.put('H', EnumC2393a.HOUR_OF_DAY);
        map.put('k', EnumC2393a.CLOCK_HOUR_OF_DAY);
        map.put('K', EnumC2393a.HOUR_OF_AMPM);
        map.put('h', EnumC2393a.CLOCK_HOUR_OF_AMPM);
        map.put('m', EnumC2393a.MINUTE_OF_HOUR);
        map.put('s', EnumC2393a.SECOND_OF_MINUTE);
        EnumC2393a enumC2393a3 = EnumC2393a.NANO_OF_SECOND;
        map.put('S', enumC2393a3);
        map.put('A', EnumC2393a.MILLI_OF_DAY);
        map.put('n', enumC2393a3);
        map.put('N', EnumC2393a.NANO_OF_DAY);
        map.put('g', AbstractC2403k.f846a);
    }

    public C2371q() {
        this.f777a = this;
        this.f779c = new ArrayList();
        this.f781e = -1;
        this.f778b = null;
        this.f780d = false;
    }

    /* JADX INFO: renamed from: a */
    public final void m835a(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        C2358d c2358d = dateTimeFormatter.f724a;
        if (c2358d.f743b) {
            c2358d = new C2358d(c2358d.f742a, false);
        }
        m836b(c2358d);
    }

    /* JADX INFO: renamed from: b */
    public final int m836b(InterfaceC2359e interfaceC2359e) {
        Objects.requireNonNull(interfaceC2359e, "pp");
        C2371q c2371q = this.f777a;
        c2371q.getClass();
        ((ArrayList) c2371q.f779c).add(interfaceC2359e);
        this.f777a.f781e = -1;
        return ((ArrayList) r1.f779c).size() - 1;
    }

    /* JADX INFO: renamed from: c */
    public final void m837c(char c2) {
        m836b(new C2357c(c2));
    }

    /* JADX INFO: renamed from: d */
    public final void m838d(String str) {
        if (str.isEmpty()) {
            return;
        }
        if (str.length() == 1) {
            m836b(new C2357c(str.charAt(0)));
        } else {
            m836b(new C2367m(str));
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m839e(EnumC2393a enumC2393a, Map map) {
        Objects.requireNonNull(enumC2393a, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        TextStyle textStyle = TextStyle.FULL;
        m836b(new C2368n(enumC2393a, textStyle, new C2355a(new C2376v(Collections.singletonMap(textStyle, linkedHashMap)))));
    }

    /* JADX INFO: renamed from: f */
    public final void m840f(C2362h c2362h) {
        C2362h c2362hMo821b;
        C2371q c2371q = this.f777a;
        int i = c2371q.f781e;
        if (i < 0) {
            c2371q.f781e = m836b(c2362h);
            return;
        }
        C2362h c2362h2 = (C2362h) ((ArrayList) c2371q.f779c).get(i);
        int i2 = c2362h.f747b;
        int i3 = c2362h.f748c;
        if (i2 == i3 && c2362h.f749d == a0.NOT_NEGATIVE) {
            c2362hMo821b = c2362h2.mo822c(i3);
            m836b(c2362h.mo821b());
            this.f777a.f781e = i;
        } else {
            c2362hMo821b = c2362h2.mo821b();
            this.f777a.f781e = m836b(c2362h);
        }
        ((ArrayList) this.f777a.f779c).set(i, c2362hMo821b);
    }

    /* JADX INFO: renamed from: g */
    public final void m841g(InterfaceC2408p interfaceC2408p, int i) {
        Objects.requireNonNull(interfaceC2408p, "field");
        if (i < 1 || i > 19) {
            C2288b.m640i("The width must be from 1 to 19 inclusive but was ", i);
        } else {
            m840f(new C2362h(interfaceC2408p, i, i, a0.NOT_NEGATIVE));
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m842h(InterfaceC2408p interfaceC2408p, int i, int i2, a0 a0Var) {
        if (i == i2 && a0Var == a0.NOT_NEGATIVE) {
            m841g(interfaceC2408p, i2);
            return;
        }
        Objects.requireNonNull(interfaceC2408p, "field");
        Objects.requireNonNull(a0Var, "signStyle");
        if (i < 1 || i > 19) {
            C2288b.m640i("The minimum width must be from 1 to 19 inclusive but was ", i);
            return;
        }
        if (i2 < 1 || i2 > 19) {
            C2288b.m640i("The maximum width must be from 1 to 19 inclusive but was ", i2);
            return;
        }
        if (i2 >= i) {
            m840f(new C2362h(interfaceC2408p, i, i2, a0Var));
            return;
        }
        throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
    }

    /* JADX INFO: renamed from: i */
    public final void m843i() {
        C2371q c2371q = this.f777a;
        if (c2371q.f778b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        int size = ((ArrayList) c2371q.f779c).size();
        C2371q c2371q2 = this.f777a;
        if (size <= 0) {
            this.f777a = c2371q2.f778b;
            return;
        }
        C2358d c2358d = new C2358d(c2371q2.f779c, c2371q2.f780d);
        this.f777a = this.f777a.f778b;
        m836b(c2358d);
    }

    /* JADX INFO: renamed from: j */
    public final void m844j() {
        C2371q c2371q = this.f777a;
        c2371q.f781e = -1;
        this.f777a = new C2371q(c2371q);
    }

    /* JADX INFO: renamed from: k */
    public final DateTimeFormatter m845k(EnumC2380z enumC2380z, InterfaceC2336k interfaceC2336k) {
        return m846l(Locale.getDefault(), enumC2380z, interfaceC2336k);
    }

    /* JADX INFO: renamed from: l */
    public final DateTimeFormatter m846l(Locale locale, EnumC2380z enumC2380z, InterfaceC2336k interfaceC2336k) {
        Objects.requireNonNull(locale, "locale");
        while (this.f777a.f778b != null) {
            m843i();
        }
        C2358d c2358d = new C2358d(this.f779c, false);
        C2378x c2378x = C2378x.f798a;
        return new DateTimeFormatter(c2358d, locale, enumC2380z, interfaceC2336k);
    }

    public C2371q(C2371q c2371q) {
        this.f777a = this;
        this.f779c = new ArrayList();
        this.f781e = -1;
        this.f778b = c2371q;
        this.f780d = true;
    }
}
