package j$.time.format;

import j$.time.C1969b;
import j$.time.chrono.C1997r;
import j$.time.chrono.InterfaceC1990k;
import j$.time.temporal.AbstractC2056j;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2060n;
import j$.util.Objects;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes2.dex */
public final class DateTimeFormatter {
    public static final DateTimeFormatter ISO_LOCAL_DATE;

    /* JADX INFO: renamed from: e */
    public static final DateTimeFormatter f501e;

    /* JADX INFO: renamed from: a */
    public final C2013e f502a;

    /* JADX INFO: renamed from: b */
    public final Locale f503b;

    /* JADX INFO: renamed from: c */
    public final C2030v f504c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC1990k f505d;

    static {
        C2024p c2024p = new C2024p();
        EnumC2047a enumC2047a = EnumC2047a.YEAR;
        EnumC2032x enumC2032x = EnumC2032x.EXCEEDS_PAD;
        c2024p.m607h(enumC2047a, 4, 10, enumC2032x);
        c2024p.m602c(SignatureVisitor.SUPER);
        EnumC2047a enumC2047a2 = EnumC2047a.MONTH_OF_YEAR;
        c2024p.m606g(enumC2047a2, 2);
        c2024p.m602c(SignatureVisitor.SUPER);
        EnumC2047a enumC2047a3 = EnumC2047a.DAY_OF_MONTH;
        c2024p.m606g(enumC2047a3, 2);
        EnumC2031w enumC2031w = EnumC2031w.STRICT;
        C1997r c1997r = C1997r.f480c;
        DateTimeFormatter dateTimeFormatterM610k = c2024p.m610k(enumC2031w, c1997r);
        ISO_LOCAL_DATE = dateTimeFormatterM610k;
        C2024p c2024p2 = new C2024p();
        EnumC2019k enumC2019k = EnumC2019k.INSENSITIVE;
        c2024p2.m601b(enumC2019k);
        c2024p2.m600a(dateTimeFormatterM610k);
        C2018j c2018j = C2018j.f522e;
        c2024p2.m601b(c2018j);
        c2024p2.m610k(enumC2031w, c1997r);
        C2024p c2024p3 = new C2024p();
        c2024p3.m601b(enumC2019k);
        c2024p3.m600a(dateTimeFormatterM610k);
        c2024p3.m609j();
        c2024p3.m601b(c2018j);
        c2024p3.m610k(enumC2031w, c1997r);
        C2024p c2024p4 = new C2024p();
        EnumC2047a enumC2047a4 = EnumC2047a.HOUR_OF_DAY;
        c2024p4.m606g(enumC2047a4, 2);
        c2024p4.m602c(':');
        EnumC2047a enumC2047a5 = EnumC2047a.MINUTE_OF_HOUR;
        c2024p4.m606g(enumC2047a5, 2);
        c2024p4.m609j();
        c2024p4.m602c(':');
        EnumC2047a enumC2047a6 = EnumC2047a.SECOND_OF_MINUTE;
        c2024p4.m606g(enumC2047a6, 2);
        c2024p4.m609j();
        EnumC2047a enumC2047a7 = EnumC2047a.NANO_OF_SECOND;
        C2015g c2015g = new C2015g(enumC2047a7, 0, 9, true, 0);
        Objects.requireNonNull(enumC2047a7, "field");
        C2067u c2067u = enumC2047a7.f592b;
        if (c2067u.f617a != c2067u.f618b || c2067u.f619c != c2067u.f620d) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + enumC2047a7);
        }
        c2024p4.m601b(c2015g);
        DateTimeFormatter dateTimeFormatterM610k2 = c2024p4.m610k(enumC2031w, null);
        C2024p c2024p5 = new C2024p();
        c2024p5.m601b(enumC2019k);
        c2024p5.m600a(dateTimeFormatterM610k2);
        c2024p5.m601b(c2018j);
        c2024p5.m610k(enumC2031w, null);
        C2024p c2024p6 = new C2024p();
        c2024p6.m601b(enumC2019k);
        c2024p6.m600a(dateTimeFormatterM610k2);
        c2024p6.m609j();
        c2024p6.m601b(c2018j);
        c2024p6.m610k(enumC2031w, null);
        C2024p c2024p7 = new C2024p();
        c2024p7.m601b(enumC2019k);
        c2024p7.m600a(dateTimeFormatterM610k);
        c2024p7.m602c('T');
        c2024p7.m600a(dateTimeFormatterM610k2);
        DateTimeFormatter dateTimeFormatterM610k3 = c2024p7.m610k(enumC2031w, c1997r);
        C2024p c2024p8 = new C2024p();
        c2024p8.m601b(enumC2019k);
        c2024p8.m600a(dateTimeFormatterM610k3);
        EnumC2019k enumC2019k2 = EnumC2019k.LENIENT;
        c2024p8.m601b(enumC2019k2);
        c2024p8.m601b(c2018j);
        EnumC2019k enumC2019k3 = EnumC2019k.STRICT;
        c2024p8.m601b(enumC2019k3);
        DateTimeFormatter dateTimeFormatterM610k4 = c2024p8.m610k(enumC2031w, c1997r);
        C2024p c2024p9 = new C2024p();
        c2024p9.m600a(dateTimeFormatterM610k4);
        c2024p9.m609j();
        c2024p9.m602c('[');
        EnumC2019k enumC2019k4 = EnumC2019k.SENSITIVE;
        c2024p9.m601b(enumC2019k4);
        C2009a c2009a = C2024p.f536f;
        c2024p9.m601b(new C2022n(c2009a, "ZoneRegionId()"));
        c2024p9.m602c(']');
        c2024p9.m610k(enumC2031w, c1997r);
        C2024p c2024p10 = new C2024p();
        c2024p10.m600a(dateTimeFormatterM610k3);
        c2024p10.m609j();
        c2024p10.m601b(c2018j);
        c2024p10.m609j();
        c2024p10.m602c('[');
        c2024p10.m601b(enumC2019k4);
        c2024p10.m601b(new C2022n(c2009a, "ZoneRegionId()"));
        c2024p10.m602c(']');
        c2024p10.m610k(enumC2031w, c1997r);
        C2024p c2024p11 = new C2024p();
        c2024p11.m601b(enumC2019k);
        c2024p11.m607h(enumC2047a, 4, 10, enumC2032x);
        c2024p11.m602c(SignatureVisitor.SUPER);
        c2024p11.m606g(EnumC2047a.DAY_OF_YEAR, 3);
        c2024p11.m609j();
        c2024p11.m601b(c2018j);
        c2024p11.m610k(enumC2031w, c1997r);
        C2024p c2024p12 = new C2024p();
        c2024p12.m601b(enumC2019k);
        c2024p12.m607h(AbstractC2056j.f602c, 4, 10, enumC2032x);
        c2024p12.m603d("-W");
        c2024p12.m606g(AbstractC2056j.f601b, 2);
        c2024p12.m602c(SignatureVisitor.SUPER);
        EnumC2047a enumC2047a8 = EnumC2047a.DAY_OF_WEEK;
        c2024p12.m606g(enumC2047a8, 1);
        c2024p12.m609j();
        c2024p12.m601b(c2018j);
        c2024p12.m610k(enumC2031w, c1997r);
        C2024p c2024p13 = new C2024p();
        c2024p13.m601b(enumC2019k);
        c2024p13.m601b(new C2016h());
        f501e = c2024p13.m610k(enumC2031w, null);
        C2024p c2024p14 = new C2024p();
        c2024p14.m601b(enumC2019k);
        c2024p14.m606g(enumC2047a, 4);
        c2024p14.m606g(enumC2047a2, 2);
        c2024p14.m606g(enumC2047a3, 2);
        c2024p14.m609j();
        c2024p14.m601b(enumC2019k2);
        c2024p14.m601b(new C2018j("+HHMMss", "Z"));
        c2024p14.m601b(enumC2019k3);
        c2024p14.m610k(enumC2031w, c1997r);
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
        C2024p c2024p15 = new C2024p();
        c2024p15.m601b(enumC2019k);
        c2024p15.m601b(enumC2019k2);
        c2024p15.m609j();
        c2024p15.m604e(enumC2047a8, map);
        c2024p15.m603d(", ");
        c2024p15.m608i();
        c2024p15.m607h(enumC2047a3, 1, 2, EnumC2032x.NOT_NEGATIVE);
        c2024p15.m602c(' ');
        c2024p15.m604e(enumC2047a2, map2);
        c2024p15.m602c(' ');
        c2024p15.m606g(enumC2047a, 4);
        c2024p15.m602c(' ');
        c2024p15.m606g(enumC2047a4, 2);
        c2024p15.m602c(':');
        c2024p15.m606g(enumC2047a5, 2);
        c2024p15.m609j();
        c2024p15.m602c(':');
        c2024p15.m606g(enumC2047a6, 2);
        c2024p15.m608i();
        c2024p15.m602c(' ');
        c2024p15.m601b(new C2018j("+HHMM", "GMT"));
        c2024p15.m610k(EnumC2031w.SMART, c1997r);
    }

    public DateTimeFormatter(C2013e c2013e, Locale locale, EnumC2031w enumC2031w, InterfaceC1990k interfaceC1990k) {
        C2030v c2030v = C2030v.f553a;
        this.f502a = (C2013e) Objects.requireNonNull(c2013e, "printerParser");
        this.f503b = (Locale) Objects.requireNonNull(locale, "locale");
        this.f504c = (C2030v) Objects.requireNonNull(c2030v, "decimalStyle");
        this.f505d = interfaceC1990k;
    }

    /* JADX INFO: renamed from: a */
    public final String m592a(InterfaceC2060n interfaceC2060n) {
        StringBuilder sb = new StringBuilder(32);
        C2013e c2013e = this.f502a;
        Objects.requireNonNull(interfaceC2060n, "temporal");
        Objects.requireNonNull(sb, "appendable");
        try {
            c2013e.mo596h(new C2026r(interfaceC2060n, this), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new C1969b(e.getMessage(), e);
        }
    }

    public final String toString() {
        String string = this.f502a.toString();
        return string.startsWith("[") ? string : string.substring(1, string.length() - 1);
    }
}
