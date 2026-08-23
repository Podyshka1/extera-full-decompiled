package p022j$.time.format;

import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import org.mvel2.asm.signature.SignatureVisitor;
import p022j$.time.C2108b;
import p022j$.time.chrono.C2136r;
import p022j$.time.chrono.InterfaceC2129k;
import p022j$.time.temporal.AbstractC2195j;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class DateTimeFormatter {
    public static final DateTimeFormatter ISO_LOCAL_DATE;

    /* JADX INFO: renamed from: e */
    public static final DateTimeFormatter f736e;

    /* JADX INFO: renamed from: a */
    public final C2152e f737a;

    /* JADX INFO: renamed from: b */
    public final Locale f738b;

    /* JADX INFO: renamed from: c */
    public final C2169v f739c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC2129k f740d;

    static {
        C2163p c2163p = new C2163p();
        EnumC2186a enumC2186a = EnumC2186a.YEAR;
        EnumC2171x enumC2171x = EnumC2171x.EXCEEDS_PAD;
        c2163p.m730h(enumC2186a, 4, 10, enumC2171x);
        c2163p.m725c(SignatureVisitor.SUPER);
        EnumC2186a enumC2186a2 = EnumC2186a.MONTH_OF_YEAR;
        c2163p.m729g(enumC2186a2, 2);
        c2163p.m725c(SignatureVisitor.SUPER);
        EnumC2186a enumC2186a3 = EnumC2186a.DAY_OF_MONTH;
        c2163p.m729g(enumC2186a3, 2);
        EnumC2170w enumC2170w = EnumC2170w.STRICT;
        C2136r c2136r = C2136r.f714c;
        DateTimeFormatter dateTimeFormatterM733k = c2163p.m733k(enumC2170w, c2136r);
        ISO_LOCAL_DATE = dateTimeFormatterM733k;
        C2163p c2163p2 = new C2163p();
        EnumC2158k enumC2158k = EnumC2158k.INSENSITIVE;
        c2163p2.m724b(enumC2158k);
        c2163p2.m723a(dateTimeFormatterM733k);
        C2157j c2157j = C2157j.f757e;
        c2163p2.m724b(c2157j);
        c2163p2.m733k(enumC2170w, c2136r);
        C2163p c2163p3 = new C2163p();
        c2163p3.m724b(enumC2158k);
        c2163p3.m723a(dateTimeFormatterM733k);
        c2163p3.m732j();
        c2163p3.m724b(c2157j);
        c2163p3.m733k(enumC2170w, c2136r);
        C2163p c2163p4 = new C2163p();
        EnumC2186a enumC2186a4 = EnumC2186a.HOUR_OF_DAY;
        c2163p4.m729g(enumC2186a4, 2);
        c2163p4.m725c(':');
        EnumC2186a enumC2186a5 = EnumC2186a.MINUTE_OF_HOUR;
        c2163p4.m729g(enumC2186a5, 2);
        c2163p4.m732j();
        c2163p4.m725c(':');
        EnumC2186a enumC2186a6 = EnumC2186a.SECOND_OF_MINUTE;
        c2163p4.m729g(enumC2186a6, 2);
        c2163p4.m732j();
        EnumC2186a enumC2186a7 = EnumC2186a.NANO_OF_SECOND;
        C2154g c2154g = new C2154g(enumC2186a7, 0, 9, true, 0);
        Objects.requireNonNull(enumC2186a7, "field");
        C2206u c2206u = enumC2186a7.f827b;
        if (c2206u.f852a != c2206u.f853b || c2206u.f854c != c2206u.f855d) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + enumC2186a7);
        }
        c2163p4.m724b(c2154g);
        DateTimeFormatter dateTimeFormatterM733k2 = c2163p4.m733k(enumC2170w, null);
        C2163p c2163p5 = new C2163p();
        c2163p5.m724b(enumC2158k);
        c2163p5.m723a(dateTimeFormatterM733k2);
        c2163p5.m724b(c2157j);
        c2163p5.m733k(enumC2170w, null);
        C2163p c2163p6 = new C2163p();
        c2163p6.m724b(enumC2158k);
        c2163p6.m723a(dateTimeFormatterM733k2);
        c2163p6.m732j();
        c2163p6.m724b(c2157j);
        c2163p6.m733k(enumC2170w, null);
        C2163p c2163p7 = new C2163p();
        c2163p7.m724b(enumC2158k);
        c2163p7.m723a(dateTimeFormatterM733k);
        c2163p7.m725c('T');
        c2163p7.m723a(dateTimeFormatterM733k2);
        DateTimeFormatter dateTimeFormatterM733k3 = c2163p7.m733k(enumC2170w, c2136r);
        C2163p c2163p8 = new C2163p();
        c2163p8.m724b(enumC2158k);
        c2163p8.m723a(dateTimeFormatterM733k3);
        EnumC2158k enumC2158k2 = EnumC2158k.LENIENT;
        c2163p8.m724b(enumC2158k2);
        c2163p8.m724b(c2157j);
        EnumC2158k enumC2158k3 = EnumC2158k.STRICT;
        c2163p8.m724b(enumC2158k3);
        DateTimeFormatter dateTimeFormatterM733k4 = c2163p8.m733k(enumC2170w, c2136r);
        C2163p c2163p9 = new C2163p();
        c2163p9.m723a(dateTimeFormatterM733k4);
        c2163p9.m732j();
        c2163p9.m725c('[');
        EnumC2158k enumC2158k4 = EnumC2158k.SENSITIVE;
        c2163p9.m724b(enumC2158k4);
        C2148a c2148a = C2163p.f771f;
        c2163p9.m724b(new C2161n(c2148a, "ZoneRegionId()"));
        c2163p9.m725c(']');
        c2163p9.m733k(enumC2170w, c2136r);
        C2163p c2163p10 = new C2163p();
        c2163p10.m723a(dateTimeFormatterM733k3);
        c2163p10.m732j();
        c2163p10.m724b(c2157j);
        c2163p10.m732j();
        c2163p10.m725c('[');
        c2163p10.m724b(enumC2158k4);
        c2163p10.m724b(new C2161n(c2148a, "ZoneRegionId()"));
        c2163p10.m725c(']');
        c2163p10.m733k(enumC2170w, c2136r);
        C2163p c2163p11 = new C2163p();
        c2163p11.m724b(enumC2158k);
        c2163p11.m730h(enumC2186a, 4, 10, enumC2171x);
        c2163p11.m725c(SignatureVisitor.SUPER);
        c2163p11.m729g(EnumC2186a.DAY_OF_YEAR, 3);
        c2163p11.m732j();
        c2163p11.m724b(c2157j);
        c2163p11.m733k(enumC2170w, c2136r);
        C2163p c2163p12 = new C2163p();
        c2163p12.m724b(enumC2158k);
        c2163p12.m730h(AbstractC2195j.f837c, 4, 10, enumC2171x);
        c2163p12.m726d("-W");
        c2163p12.m729g(AbstractC2195j.f836b, 2);
        c2163p12.m725c(SignatureVisitor.SUPER);
        EnumC2186a enumC2186a8 = EnumC2186a.DAY_OF_WEEK;
        c2163p12.m729g(enumC2186a8, 1);
        c2163p12.m732j();
        c2163p12.m724b(c2157j);
        c2163p12.m733k(enumC2170w, c2136r);
        C2163p c2163p13 = new C2163p();
        c2163p13.m724b(enumC2158k);
        c2163p13.m724b(new C2155h());
        f736e = c2163p13.m733k(enumC2170w, null);
        C2163p c2163p14 = new C2163p();
        c2163p14.m724b(enumC2158k);
        c2163p14.m729g(enumC2186a, 4);
        c2163p14.m729g(enumC2186a2, 2);
        c2163p14.m729g(enumC2186a3, 2);
        c2163p14.m732j();
        c2163p14.m724b(enumC2158k2);
        c2163p14.m724b(new C2157j("+HHMMss", "Z"));
        c2163p14.m724b(enumC2158k3);
        c2163p14.m733k(enumC2170w, c2136r);
        HashMap map = new HashMap();
        map.put(1L, "Mon");
        map.put(2L, "Tue");
        map.put(3L, "Wed");
        map.put(4L, "Thu");
        map.put(5L, "Fri");
        map.put(6L, "Sat");
        map.put(7L, "Sun");
        HashMap map2 = new HashMap();
        map2.put(1L, "Jan");
        map2.put(2L, "Feb");
        map2.put(3L, "Mar");
        map2.put(4L, "Apr");
        map2.put(5L, "May");
        map2.put(6L, "Jun");
        map2.put(7L, "Jul");
        map2.put(8L, "Aug");
        map2.put(9L, "Sep");
        map2.put(10L, "Oct");
        map2.put(11L, "Nov");
        map2.put(12L, "Dec");
        C2163p c2163p15 = new C2163p();
        c2163p15.m724b(enumC2158k);
        c2163p15.m724b(enumC2158k2);
        c2163p15.m732j();
        c2163p15.m727e(enumC2186a8, map);
        c2163p15.m726d(", ");
        c2163p15.m731i();
        c2163p15.m730h(enumC2186a3, 1, 2, EnumC2171x.NOT_NEGATIVE);
        c2163p15.m725c(' ');
        c2163p15.m727e(enumC2186a2, map2);
        c2163p15.m725c(' ');
        c2163p15.m729g(enumC2186a, 4);
        c2163p15.m725c(' ');
        c2163p15.m729g(enumC2186a4, 2);
        c2163p15.m725c(':');
        c2163p15.m729g(enumC2186a5, 2);
        c2163p15.m732j();
        c2163p15.m725c(':');
        c2163p15.m729g(enumC2186a6, 2);
        c2163p15.m731i();
        c2163p15.m725c(' ');
        c2163p15.m724b(new C2157j("+HHMM", "GMT"));
        c2163p15.m733k(EnumC2170w.SMART, c2136r);
    }

    public DateTimeFormatter(C2152e c2152e, Locale locale, EnumC2170w enumC2170w, InterfaceC2129k interfaceC2129k) {
        C2169v c2169v = C2169v.f788a;
        this.f737a = (C2152e) Objects.requireNonNull(c2152e, "printerParser");
        this.f738b = (Locale) Objects.requireNonNull(locale, "locale");
        this.f739c = (C2169v) Objects.requireNonNull(c2169v, "decimalStyle");
        this.f740d = interfaceC2129k;
    }

    /* JADX INFO: renamed from: a */
    public final String m715a(InterfaceC2199n interfaceC2199n) {
        StringBuilder sb = new StringBuilder(32);
        C2152e c2152e = this.f737a;
        Objects.requireNonNull(interfaceC2199n, "temporal");
        Objects.requireNonNull(sb, "appendable");
        try {
            c2152e.mo719h(new C2165r(interfaceC2199n, this), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new C2108b(e.getMessage(), e);
        }
    }

    public final String toString() {
        String string = this.f737a.toString();
        return string.startsWith("[") ? string : string.substring(1, string.length() - 1);
    }
}
