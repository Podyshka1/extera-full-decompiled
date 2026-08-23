package j$.time.format;

import j$.time.C2103c;
import j$.time.C2159g;
import j$.time.C2162j;
import j$.time.C2196x;
import j$.time.Period;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.C2121r;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.InterfaceC2105b;
import j$.time.chrono.InterfaceC2114k;
import j$.time.temporal.AbstractC2181i;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2188p;
import java.io.IOException;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class DateTimeFormatter {
    public static final DateTimeFormatter ISO_LOCAL_DATE;
    public static final DateTimeFormatter RFC_1123_DATE_TIME;

    /* JADX INFO: renamed from: f */
    public static final DateTimeFormatter f563f;

    /* JADX INFO: renamed from: a */
    public final C2136d f564a;

    /* JADX INFO: renamed from: b */
    public final Locale f565b;

    /* JADX INFO: renamed from: c */
    public final C2156x f566c;

    /* JADX INFO: renamed from: d */
    public final EnumC2158z f567d;

    /* JADX INFO: renamed from: e */
    public final InterfaceC2114k f568e;

    static {
        C2149q c2149q = new C2149q();
        EnumC2173a enumC2173a = EnumC2173a.YEAR;
        a0 a0Var = a0.EXCEEDS_PAD;
        c2149q.m660h(enumC2173a, 4, 10, a0Var);
        c2149q.m655c(SignatureVisitor.SUPER);
        EnumC2173a enumC2173a2 = EnumC2173a.MONTH_OF_YEAR;
        c2149q.m659g(enumC2173a2, 2);
        c2149q.m655c(SignatureVisitor.SUPER);
        EnumC2173a enumC2173a3 = EnumC2173a.DAY_OF_MONTH;
        c2149q.m659g(enumC2173a3, 2);
        EnumC2158z enumC2158z = EnumC2158z.STRICT;
        C2121r c2121r = C2121r.f543c;
        DateTimeFormatter dateTimeFormatterM663k = c2149q.m663k(enumC2158z, c2121r);
        ISO_LOCAL_DATE = dateTimeFormatterM663k;
        C2149q c2149q2 = new C2149q();
        EnumC2144l enumC2144l = EnumC2144l.INSENSITIVE;
        c2149q2.m654b(enumC2144l);
        c2149q2.m653a(dateTimeFormatterM663k);
        C2141i c2141i = C2141i.f592e;
        c2149q2.m654b(c2141i);
        c2149q2.m663k(enumC2158z, c2121r);
        C2149q c2149q3 = new C2149q();
        c2149q3.m654b(enumC2144l);
        c2149q3.m653a(dateTimeFormatterM663k);
        c2149q3.m662j();
        c2149q3.m654b(c2141i);
        c2149q3.m663k(enumC2158z, c2121r);
        C2149q c2149q4 = new C2149q();
        EnumC2173a enumC2173a4 = EnumC2173a.HOUR_OF_DAY;
        c2149q4.m659g(enumC2173a4, 2);
        c2149q4.m655c(':');
        EnumC2173a enumC2173a5 = EnumC2173a.MINUTE_OF_HOUR;
        c2149q4.m659g(enumC2173a5, 2);
        c2149q4.m662j();
        c2149q4.m655c(':');
        EnumC2173a enumC2173a6 = EnumC2173a.SECOND_OF_MINUTE;
        c2149q4.m659g(enumC2173a6, 2);
        c2149q4.m662j();
        c2149q4.m654b(new C2138f(EnumC2173a.NANO_OF_SECOND));
        DateTimeFormatter dateTimeFormatterM663k2 = c2149q4.m663k(enumC2158z, null);
        C2149q c2149q5 = new C2149q();
        c2149q5.m654b(enumC2144l);
        c2149q5.m653a(dateTimeFormatterM663k2);
        c2149q5.m654b(c2141i);
        c2149q5.m663k(enumC2158z, null);
        C2149q c2149q6 = new C2149q();
        c2149q6.m654b(enumC2144l);
        c2149q6.m653a(dateTimeFormatterM663k2);
        c2149q6.m662j();
        c2149q6.m654b(c2141i);
        c2149q6.m663k(enumC2158z, null);
        C2149q c2149q7 = new C2149q();
        c2149q7.m654b(enumC2144l);
        c2149q7.m653a(dateTimeFormatterM663k);
        c2149q7.m655c('T');
        c2149q7.m653a(dateTimeFormatterM663k2);
        DateTimeFormatter dateTimeFormatterM663k3 = c2149q7.m663k(enumC2158z, c2121r);
        C2149q c2149q8 = new C2149q();
        c2149q8.m654b(enumC2144l);
        c2149q8.m653a(dateTimeFormatterM663k3);
        EnumC2144l enumC2144l2 = EnumC2144l.LENIENT;
        c2149q8.m654b(enumC2144l2);
        c2149q8.m654b(c2141i);
        EnumC2144l enumC2144l3 = EnumC2144l.STRICT;
        c2149q8.m654b(enumC2144l3);
        DateTimeFormatter dateTimeFormatterM663k4 = c2149q8.m663k(enumC2158z, c2121r);
        C2149q c2149q9 = new C2149q();
        c2149q9.m653a(dateTimeFormatterM663k4);
        c2149q9.m662j();
        c2149q9.m655c('[');
        EnumC2144l enumC2144l4 = EnumC2144l.SENSITIVE;
        c2149q9.m654b(enumC2144l4);
        C2196x c2196x = C2149q.f616f;
        c2149q9.m654b(new C2147o(c2196x, "ZoneRegionId()"));
        c2149q9.m655c(']');
        c2149q9.m663k(enumC2158z, c2121r);
        C2149q c2149q10 = new C2149q();
        c2149q10.m653a(dateTimeFormatterM663k3);
        c2149q10.m662j();
        c2149q10.m654b(c2141i);
        c2149q10.m662j();
        c2149q10.m655c('[');
        c2149q10.m654b(enumC2144l4);
        c2149q10.m654b(new C2147o(c2196x, "ZoneRegionId()"));
        c2149q10.m655c(']');
        c2149q10.m663k(enumC2158z, c2121r);
        C2149q c2149q11 = new C2149q();
        c2149q11.m654b(enumC2144l);
        c2149q11.m660h(enumC2173a, 4, 10, a0Var);
        c2149q11.m655c(SignatureVisitor.SUPER);
        c2149q11.m659g(EnumC2173a.DAY_OF_YEAR, 3);
        c2149q11.m662j();
        c2149q11.m654b(c2141i);
        c2149q11.m663k(enumC2158z, c2121r);
        C2149q c2149q12 = new C2149q();
        c2149q12.m654b(enumC2144l);
        c2149q12.m660h(AbstractC2181i.f689c, 4, 10, a0Var);
        c2149q12.m656d("-W");
        c2149q12.m659g(AbstractC2181i.f688b, 2);
        c2149q12.m655c(SignatureVisitor.SUPER);
        EnumC2173a enumC2173a7 = EnumC2173a.DAY_OF_WEEK;
        c2149q12.m659g(enumC2173a7, 1);
        c2149q12.m662j();
        c2149q12.m654b(c2141i);
        c2149q12.m663k(enumC2158z, c2121r);
        C2149q c2149q13 = new C2149q();
        c2149q13.m654b(enumC2144l);
        c2149q13.m654b(new C2139g());
        f563f = c2149q13.m663k(enumC2158z, null);
        C2149q c2149q14 = new C2149q();
        c2149q14.m654b(enumC2144l);
        c2149q14.m659g(enumC2173a, 4);
        c2149q14.m659g(enumC2173a2, 2);
        c2149q14.m659g(enumC2173a3, 2);
        c2149q14.m662j();
        c2149q14.m654b(enumC2144l2);
        c2149q14.m654b(new C2141i("+HHMMss", "Z"));
        c2149q14.m654b(enumC2144l3);
        c2149q14.m663k(enumC2158z, c2121r);
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
        C2149q c2149q15 = new C2149q();
        c2149q15.m654b(enumC2144l);
        c2149q15.m654b(enumC2144l2);
        c2149q15.m662j();
        c2149q15.m657e(enumC2173a7, map);
        c2149q15.m656d(", ");
        c2149q15.m661i();
        c2149q15.m660h(enumC2173a3, 1, 2, a0.NOT_NEGATIVE);
        c2149q15.m655c(' ');
        c2149q15.m657e(enumC2173a2, map2);
        c2149q15.m655c(' ');
        c2149q15.m659g(enumC2173a, 4);
        c2149q15.m655c(' ');
        c2149q15.m659g(enumC2173a4, 2);
        c2149q15.m655c(':');
        c2149q15.m659g(enumC2173a5, 2);
        c2149q15.m662j();
        c2149q15.m655c(':');
        c2149q15.m659g(enumC2173a6, 2);
        c2149q15.m661i();
        c2149q15.m655c(' ');
        c2149q15.m654b(new C2141i("+HHMM", "GMT"));
        RFC_1123_DATE_TIME = c2149q15.m663k(EnumC2158z.SMART, c2121r);
    }

    public DateTimeFormatter(C2136d c2136d, Locale locale, EnumC2158z enumC2158z, InterfaceC2114k interfaceC2114k) {
        C2156x c2156x = C2156x.f638a;
        this.f564a = c2136d;
        Objects.requireNonNull(locale, "locale");
        this.f565b = locale;
        this.f566c = c2156x;
        Objects.requireNonNull(enumC2158z, "resolverStyle");
        this.f567d = enumC2158z;
        this.f568e = interfaceC2114k;
    }

    /* JADX INFO: renamed from: a */
    public final String m630a(InterfaceC2184l interfaceC2184l) {
        StringBuilder sb = new StringBuilder(32);
        try {
            this.f564a.mo637t(new C2152t(interfaceC2184l, this), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new C2103c(e.getMessage(), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x025b  */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C2157y m631b(CharSequence charSequence) {
        long j;
        int i = 0;
        ParsePosition parsePosition = new ParsePosition(0);
        C2150r c2150r = new C2150r(this);
        int iMo636B = this.f564a.mo636B(c2150r, charSequence, parsePosition.getIndex());
        if (iMo636B < 0) {
            parsePosition.setErrorIndex(~iMo636B);
            c2150r = null;
        } else {
            parsePosition.setIndex(iMo636B);
        }
        if (c2150r != null) {
            DateTimeFormatter dateTimeFormatter = c2150r.f622a;
            if (parsePosition.getErrorIndex() < 0 && parsePosition.getIndex() >= charSequence.length()) {
                C2157y c2157yM667c = c2150r.m667c();
                InterfaceC2114k interfaceC2114k = c2150r.m667c().f641c;
                if (interfaceC2114k == null && (interfaceC2114k = dateTimeFormatter.f568e) == null) {
                    interfaceC2114k = C2121r.f543c;
                }
                c2157yM667c.f641c = interfaceC2114k;
                ZoneId zoneId = c2157yM667c.f640b;
                if (zoneId == null) {
                    dateTimeFormatter.getClass();
                    zoneId = null;
                }
                c2157yM667c.f640b = zoneId;
                c2157yM667c.f643e = this.f567d;
                c2157yM667c.m678s();
                c2157yM667c.m683z(c2157yM667c.f641c.mo578S(c2157yM667c.f639a, c2157yM667c.f643e));
                c2157yM667c.m681w();
                if (((HashMap) c2157yM667c.f639a).size() > 0) {
                    loop0: while (i < 50) {
                        Iterator it = ((HashMap) c2157yM667c.f639a).entrySet().iterator();
                        while (it.hasNext()) {
                            InterfaceC2188p interfaceC2188p = (InterfaceC2188p) ((Map.Entry) it.next()).getKey();
                            InterfaceC2184l interfaceC2184lMo722G = interfaceC2188p.mo722G(c2157yM667c.f639a, c2157yM667c, c2157yM667c.f643e);
                            if (interfaceC2184lMo722G == null) {
                                if (!((HashMap) c2157yM667c.f639a).containsKey(interfaceC2188p)) {
                                    break;
                                }
                            } else {
                                if (interfaceC2184lMo722G instanceof ChronoZonedDateTime) {
                                    ChronoZonedDateTime chronoZonedDateTime = (ChronoZonedDateTime) interfaceC2184lMo722G;
                                    ZoneId zoneId2 = c2157yM667c.f640b;
                                    if (zoneId2 == null) {
                                        c2157yM667c.f640b = chronoZonedDateTime.getZone();
                                    } else if (!zoneId2.equals(chronoZonedDateTime.getZone())) {
                                        throw new C2103c("ChronoZonedDateTime must use the effective parsed zone: " + c2157yM667c.f640b);
                                    }
                                    interfaceC2184lMo722G = chronoZonedDateTime.mo564y();
                                }
                                if (interfaceC2184lMo722G instanceof ChronoLocalDateTime) {
                                    ChronoLocalDateTime chronoLocalDateTime = (ChronoLocalDateTime) interfaceC2184lMo722G;
                                    c2157yM667c.m682x(chronoLocalDateTime.mo528l(), Period.f481d);
                                    c2157yM667c.m683z(chronoLocalDateTime.mo529n());
                                } else if (interfaceC2184lMo722G instanceof InterfaceC2105b) {
                                    c2157yM667c.m683z((InterfaceC2105b) interfaceC2184lMo722G);
                                } else {
                                    if (!(interfaceC2184lMo722G instanceof C2162j)) {
                                        C2159g.m684a("Method resolve() can only return ChronoZonedDateTime, ChronoLocalDateTime, ChronoLocalDate or LocalTime");
                                        return null;
                                    }
                                    c2157yM667c.m682x((C2162j) interfaceC2184lMo722G, Period.f481d);
                                }
                            }
                            i++;
                        }
                    }
                    if (i == 50) {
                        C2159g.m684a("One of the parsed fields has an incorrectly implemented resolve method");
                        return null;
                    }
                    if (i > 0) {
                        c2157yM667c.m678s();
                        c2157yM667c.m683z(c2157yM667c.f641c.mo578S(c2157yM667c.f639a, c2157yM667c.f643e));
                        c2157yM667c.m681w();
                    }
                }
                if (c2157yM667c.f645g == null) {
                    Map map = c2157yM667c.f639a;
                    EnumC2173a enumC2173a = EnumC2173a.MILLI_OF_SECOND;
                    boolean zContainsKey = ((HashMap) map).containsKey(enumC2173a);
                    Map map2 = c2157yM667c.f639a;
                    if (zContainsKey) {
                        long jLongValue = ((Long) ((HashMap) map2).remove(enumC2173a)).longValue();
                        Map map3 = c2157yM667c.f639a;
                        EnumC2173a enumC2173a2 = EnumC2173a.MICRO_OF_SECOND;
                        boolean zContainsKey2 = ((HashMap) map3).containsKey(enumC2173a2);
                        Map map4 = c2157yM667c.f639a;
                        if (zContainsKey2) {
                            long jLongValue2 = (((Long) ((HashMap) map4).get(enumC2173a2)).longValue() % 1000) + (jLongValue * 1000);
                            c2157yM667c.m676A(enumC2173a, enumC2173a2, Long.valueOf(jLongValue2));
                            ((HashMap) c2157yM667c.f639a).remove(enumC2173a2);
                            ((HashMap) c2157yM667c.f639a).put(EnumC2173a.NANO_OF_SECOND, Long.valueOf(jLongValue2 * 1000));
                        } else {
                            ((HashMap) map4).put(EnumC2173a.NANO_OF_SECOND, Long.valueOf(jLongValue * 1000000));
                        }
                    } else {
                        EnumC2173a enumC2173a3 = EnumC2173a.MICRO_OF_SECOND;
                        if (((HashMap) map2).containsKey(enumC2173a3)) {
                            ((HashMap) c2157yM667c.f639a).put(EnumC2173a.NANO_OF_SECOND, Long.valueOf(((Long) ((HashMap) c2157yM667c.f639a).remove(enumC2173a3)).longValue() * 1000));
                        }
                    }
                    Map map5 = c2157yM667c.f639a;
                    EnumC2173a enumC2173a4 = EnumC2173a.HOUR_OF_DAY;
                    Long l = (Long) ((HashMap) map5).get(enumC2173a4);
                    if (l != null) {
                        Map map6 = c2157yM667c.f639a;
                        EnumC2173a enumC2173a5 = EnumC2173a.MINUTE_OF_HOUR;
                        Long l2 = (Long) ((HashMap) map6).get(enumC2173a5);
                        Map map7 = c2157yM667c.f639a;
                        EnumC2173a enumC2173a6 = EnumC2173a.SECOND_OF_MINUTE;
                        Long l3 = (Long) ((HashMap) map7).get(enumC2173a6);
                        Map map8 = c2157yM667c.f639a;
                        EnumC2173a enumC2173a7 = EnumC2173a.NANO_OF_SECOND;
                        Long l4 = (Long) ((HashMap) map8).get(enumC2173a7);
                        if ((l2 != null || (l3 == null && l4 == null)) && (l2 == null || l3 != null || l4 == null)) {
                            j = 1000000;
                            c2157yM667c.m680v(l.longValue(), l2 != null ? l2.longValue() : 0L, l3 != null ? l3.longValue() : 0L, l4 != null ? l4.longValue() : 0L);
                            ((HashMap) c2157yM667c.f639a).remove(enumC2173a4);
                            ((HashMap) c2157yM667c.f639a).remove(enumC2173a5);
                            ((HashMap) c2157yM667c.f639a).remove(enumC2173a6);
                            ((HashMap) c2157yM667c.f639a).remove(enumC2173a7);
                        } else {
                            j = 1000000;
                        }
                    } else {
                        j = 1000000;
                    }
                    if (c2157yM667c.f643e != EnumC2158z.LENIENT && ((HashMap) c2157yM667c.f639a).size() > 0) {
                        for (Map.Entry entry : ((HashMap) c2157yM667c.f639a).entrySet()) {
                            InterfaceC2188p interfaceC2188p2 = (InterfaceC2188p) entry.getKey();
                            if (interfaceC2188p2 instanceof EnumC2173a) {
                                EnumC2173a enumC2173a8 = (EnumC2173a) interfaceC2188p2;
                                if (enumC2173a8.m720Y()) {
                                    enumC2173a8.m719X(((Long) entry.getValue()).longValue());
                                }
                            }
                        }
                    }
                }
                InterfaceC2105b interfaceC2105b = c2157yM667c.f644f;
                if (interfaceC2105b != null) {
                    c2157yM667c.m677r(interfaceC2105b);
                }
                C2162j c2162j = c2157yM667c.f645g;
                if (c2162j != null) {
                    c2157yM667c.m677r(c2162j);
                    if (c2157yM667c.f644f != null && ((HashMap) c2157yM667c.f639a).size() > 0) {
                        c2157yM667c.m677r(c2157yM667c.f644f.mo505K(c2157yM667c.f645g));
                    }
                }
                if (c2157yM667c.f644f != null && c2157yM667c.f645g != null) {
                    Period period = c2157yM667c.f646h;
                    period.getClass();
                    Period period2 = Period.f481d;
                    if (period != period2) {
                        c2157yM667c.f644f = c2157yM667c.f644f.mo508R(c2157yM667c.f646h);
                        c2157yM667c.f646h = period2;
                    }
                }
                if (c2157yM667c.f645g == null) {
                    if (!((HashMap) c2157yM667c.f639a).containsKey(EnumC2173a.INSTANT_SECONDS)) {
                        if (!((HashMap) c2157yM667c.f639a).containsKey(EnumC2173a.SECOND_OF_DAY)) {
                            if (((HashMap) c2157yM667c.f639a).containsKey(EnumC2173a.SECOND_OF_MINUTE)) {
                                Map map9 = c2157yM667c.f639a;
                                EnumC2173a enumC2173a9 = EnumC2173a.NANO_OF_SECOND;
                                boolean zContainsKey3 = ((HashMap) map9).containsKey(enumC2173a9);
                                Map map10 = c2157yM667c.f639a;
                                if (zContainsKey3) {
                                    long jLongValue3 = ((Long) ((HashMap) map10).get(enumC2173a9)).longValue();
                                    ((HashMap) c2157yM667c.f639a).put(EnumC2173a.MICRO_OF_SECOND, Long.valueOf(jLongValue3 / 1000));
                                    ((HashMap) c2157yM667c.f639a).put(EnumC2173a.MILLI_OF_SECOND, Long.valueOf(jLongValue3 / j));
                                } else {
                                    ((HashMap) map10).put(enumC2173a9, 0L);
                                    ((HashMap) c2157yM667c.f639a).put(EnumC2173a.MICRO_OF_SECOND, 0L);
                                    ((HashMap) c2157yM667c.f639a).put(EnumC2173a.MILLI_OF_SECOND, 0L);
                                }
                            }
                        }
                    }
                }
                if (c2157yM667c.f644f != null && c2157yM667c.f645g != null) {
                    Long l5 = (Long) ((HashMap) c2157yM667c.f639a).get(EnumC2173a.OFFSET_SECONDS);
                    if (l5 != null) {
                        ((HashMap) c2157yM667c.f639a).put(EnumC2173a.INSTANT_SECONDS, Long.valueOf(c2157yM667c.f644f.mo505K(c2157yM667c.f645g).mo520F(ZoneOffset.m549Z(l5.intValue())).m570W()));
                        return c2157yM667c;
                    }
                    if (c2157yM667c.f640b != null) {
                        ((HashMap) c2157yM667c.f639a).put(EnumC2173a.INSTANT_SECONDS, Long.valueOf(c2157yM667c.f644f.mo505K(c2157yM667c.f645g).mo520F(c2157yM667c.f640b).m570W()));
                    }
                }
                return c2157yM667c;
            }
        }
        String string = charSequence.length() > 64 ? charSequence.subSequence(0, 64).toString() + "..." : charSequence.toString();
        if (parsePosition.getErrorIndex() >= 0) {
            String str = "Text '" + string + "' could not be parsed at index " + parsePosition.getErrorIndex();
            parsePosition.getErrorIndex();
            throw new DateTimeParseException(str, charSequence);
        }
        String str2 = "Text '" + string + "' could not be parsed, unparsed text found at index " + parsePosition.getIndex();
        parsePosition.getIndex();
        throw new DateTimeParseException(str2, charSequence);
    }

    public final String toString() {
        String string = this.f564a.toString();
        return string.startsWith("[") ? string : string.substring(1, string.length() - 1);
    }
}
