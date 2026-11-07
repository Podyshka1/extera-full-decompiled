package j$.time.format;

import j$.nio.file.C2148b;
import j$.time.C2184b;
import j$.time.C2213e;
import j$.time.LocalTime;
import j$.time.Period;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.C2203r;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.InterfaceC2187b;
import j$.time.chrono.InterfaceC2196k;
import j$.time.temporal.AbstractC2262i;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2269p;
import java.io.IOException;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class DateTimeFormatter {
    public static final DateTimeFormatter ISO_LOCAL_DATE;
    public static final DateTimeFormatter RFC_1123_DATE_TIME;

    /* JADX INFO: renamed from: f */
    public static final DateTimeFormatter f719f;

    /* JADX INFO: renamed from: a */
    public final C2218d f720a;

    /* JADX INFO: renamed from: b */
    public final Locale f721b;

    /* JADX INFO: renamed from: c */
    public final C2238x f722c;

    /* JADX INFO: renamed from: d */
    public final EnumC2240z f723d;

    /* JADX INFO: renamed from: e */
    public final InterfaceC2196k f724e;

    static {
        C2231q c2231q = new C2231q();
        EnumC2254a enumC2254a = EnumC2254a.YEAR;
        a0 a0Var = a0.EXCEEDS_PAD;
        c2231q.m798h(enumC2254a, 4, 10, a0Var);
        c2231q.m793c(SignatureVisitor.SUPER);
        EnumC2254a enumC2254a2 = EnumC2254a.MONTH_OF_YEAR;
        c2231q.m797g(enumC2254a2, 2);
        c2231q.m793c(SignatureVisitor.SUPER);
        EnumC2254a enumC2254a3 = EnumC2254a.DAY_OF_MONTH;
        c2231q.m797g(enumC2254a3, 2);
        EnumC2240z enumC2240z = EnumC2240z.STRICT;
        C2203r c2203r = C2203r.f699c;
        DateTimeFormatter dateTimeFormatterM801k = c2231q.m801k(enumC2240z, c2203r);
        ISO_LOCAL_DATE = dateTimeFormatterM801k;
        C2231q c2231q2 = new C2231q();
        EnumC2226l enumC2226l = EnumC2226l.INSENSITIVE;
        c2231q2.m792b(enumC2226l);
        c2231q2.m791a(dateTimeFormatterM801k);
        C2223i c2223i = C2223i.f748e;
        c2231q2.m792b(c2223i);
        c2231q2.m801k(enumC2240z, c2203r);
        C2231q c2231q3 = new C2231q();
        c2231q3.m792b(enumC2226l);
        c2231q3.m791a(dateTimeFormatterM801k);
        c2231q3.m800j();
        c2231q3.m792b(c2223i);
        c2231q3.m801k(enumC2240z, c2203r);
        C2231q c2231q4 = new C2231q();
        EnumC2254a enumC2254a4 = EnumC2254a.HOUR_OF_DAY;
        c2231q4.m797g(enumC2254a4, 2);
        c2231q4.m793c(':');
        EnumC2254a enumC2254a5 = EnumC2254a.MINUTE_OF_HOUR;
        c2231q4.m797g(enumC2254a5, 2);
        c2231q4.m800j();
        c2231q4.m793c(':');
        EnumC2254a enumC2254a6 = EnumC2254a.SECOND_OF_MINUTE;
        c2231q4.m797g(enumC2254a6, 2);
        c2231q4.m800j();
        c2231q4.m792b(new C2220f(EnumC2254a.NANO_OF_SECOND));
        DateTimeFormatter dateTimeFormatterM801k2 = c2231q4.m801k(enumC2240z, null);
        C2231q c2231q5 = new C2231q();
        c2231q5.m792b(enumC2226l);
        c2231q5.m791a(dateTimeFormatterM801k2);
        c2231q5.m792b(c2223i);
        c2231q5.m801k(enumC2240z, null);
        C2231q c2231q6 = new C2231q();
        c2231q6.m792b(enumC2226l);
        c2231q6.m791a(dateTimeFormatterM801k2);
        c2231q6.m800j();
        c2231q6.m792b(c2223i);
        c2231q6.m801k(enumC2240z, null);
        C2231q c2231q7 = new C2231q();
        c2231q7.m792b(enumC2226l);
        c2231q7.m791a(dateTimeFormatterM801k);
        c2231q7.m793c('T');
        c2231q7.m791a(dateTimeFormatterM801k2);
        DateTimeFormatter dateTimeFormatterM801k3 = c2231q7.m801k(enumC2240z, c2203r);
        C2231q c2231q8 = new C2231q();
        c2231q8.m792b(enumC2226l);
        c2231q8.m791a(dateTimeFormatterM801k3);
        EnumC2226l enumC2226l2 = EnumC2226l.LENIENT;
        c2231q8.m792b(enumC2226l2);
        c2231q8.m792b(c2223i);
        EnumC2226l enumC2226l3 = EnumC2226l.STRICT;
        c2231q8.m792b(enumC2226l3);
        DateTimeFormatter dateTimeFormatterM801k4 = c2231q8.m801k(enumC2240z, c2203r);
        C2231q c2231q9 = new C2231q();
        c2231q9.m791a(dateTimeFormatterM801k4);
        c2231q9.m800j();
        c2231q9.m793c('[');
        EnumC2226l enumC2226l4 = EnumC2226l.SENSITIVE;
        c2231q9.m792b(enumC2226l4);
        C2213e c2213e = C2231q.f772f;
        c2231q9.m792b(new C2229o(c2213e, "ZoneRegionId()"));
        c2231q9.m793c(']');
        c2231q9.m801k(enumC2240z, c2203r);
        C2231q c2231q10 = new C2231q();
        c2231q10.m791a(dateTimeFormatterM801k3);
        c2231q10.m800j();
        c2231q10.m792b(c2223i);
        c2231q10.m800j();
        c2231q10.m793c('[');
        c2231q10.m792b(enumC2226l4);
        c2231q10.m792b(new C2229o(c2213e, "ZoneRegionId()"));
        c2231q10.m793c(']');
        c2231q10.m801k(enumC2240z, c2203r);
        C2231q c2231q11 = new C2231q();
        c2231q11.m792b(enumC2226l);
        c2231q11.m798h(enumC2254a, 4, 10, a0Var);
        c2231q11.m793c(SignatureVisitor.SUPER);
        c2231q11.m797g(EnumC2254a.DAY_OF_YEAR, 3);
        c2231q11.m800j();
        c2231q11.m792b(c2223i);
        c2231q11.m801k(enumC2240z, c2203r);
        C2231q c2231q12 = new C2231q();
        c2231q12.m792b(enumC2226l);
        c2231q12.m798h(AbstractC2262i.f839c, 4, 10, a0Var);
        c2231q12.m794d("-W");
        c2231q12.m797g(AbstractC2262i.f838b, 2);
        c2231q12.m793c(SignatureVisitor.SUPER);
        EnumC2254a enumC2254a7 = EnumC2254a.DAY_OF_WEEK;
        c2231q12.m797g(enumC2254a7, 1);
        c2231q12.m800j();
        c2231q12.m792b(c2223i);
        c2231q12.m801k(enumC2240z, c2203r);
        C2231q c2231q13 = new C2231q();
        c2231q13.m792b(enumC2226l);
        c2231q13.m792b(new C2221g());
        f719f = c2231q13.m801k(enumC2240z, null);
        C2231q c2231q14 = new C2231q();
        c2231q14.m792b(enumC2226l);
        c2231q14.m797g(enumC2254a, 4);
        c2231q14.m797g(enumC2254a2, 2);
        c2231q14.m797g(enumC2254a3, 2);
        c2231q14.m800j();
        c2231q14.m792b(enumC2226l2);
        c2231q14.m792b(new C2223i("+HHMMss", "Z"));
        c2231q14.m792b(enumC2226l3);
        c2231q14.m801k(enumC2240z, c2203r);
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
        C2231q c2231q15 = new C2231q();
        c2231q15.m792b(enumC2226l);
        c2231q15.m792b(enumC2226l2);
        c2231q15.m800j();
        c2231q15.m795e(enumC2254a7, map);
        c2231q15.m794d(", ");
        c2231q15.m799i();
        c2231q15.m798h(enumC2254a3, 1, 2, a0.NOT_NEGATIVE);
        c2231q15.m793c(' ');
        c2231q15.m795e(enumC2254a2, map2);
        c2231q15.m793c(' ');
        c2231q15.m797g(enumC2254a, 4);
        c2231q15.m793c(' ');
        c2231q15.m797g(enumC2254a4, 2);
        c2231q15.m793c(':');
        c2231q15.m797g(enumC2254a5, 2);
        c2231q15.m800j();
        c2231q15.m793c(':');
        c2231q15.m797g(enumC2254a6, 2);
        c2231q15.m799i();
        c2231q15.m793c(' ');
        c2231q15.m792b(new C2223i("+HHMM", "GMT"));
        RFC_1123_DATE_TIME = c2231q15.m801k(EnumC2240z.SMART, c2203r);
    }

    public DateTimeFormatter(C2218d c2218d, Locale locale, EnumC2240z enumC2240z, InterfaceC2196k interfaceC2196k) {
        C2238x c2238x = C2238x.f794a;
        this.f720a = c2218d;
        Objects.requireNonNull(locale, "locale");
        this.f721b = locale;
        this.f722c = c2238x;
        Objects.requireNonNull(enumC2240z, "resolverStyle");
        this.f723d = enumC2240z;
        this.f724e = interfaceC2196k;
    }

    /* JADX INFO: renamed from: a */
    public final String m767a(InterfaceC2265l interfaceC2265l) {
        StringBuilder sb = new StringBuilder(32);
        try {
            this.f720a.mo775s(new C2234t(interfaceC2265l, this), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new C2184b(e.getMessage(), e);
        }
    }

    /* JADX INFO: renamed from: b */
    public final Object m768b(CharSequence charSequence, C2213e c2213e) {
        String string;
        Objects.requireNonNull(charSequence, "text");
        try {
            return m769c(charSequence).mo530d(c2213e);
        } catch (DateTimeParseException e) {
            throw e;
        } catch (RuntimeException e2) {
            if (charSequence.length() > 64) {
                string = charSequence.subSequence(0, 64).toString() + "...";
            } else {
                string = charSequence.toString();
            }
            DateTimeParseException dateTimeParseException = new DateTimeParseException("Text '" + string + "' could not be parsed: " + e2.getMessage(), e2);
            charSequence.toString();
            throw dateTimeParseException;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0260  */
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C2239y m769c(CharSequence charSequence) {
        long j;
        int i = 0;
        ParsePosition parsePosition = new ParsePosition(0);
        Objects.requireNonNull(charSequence, "text");
        C2232r c2232r = new C2232r(this);
        int iMo774D = this.f720a.mo774D(c2232r, charSequence, parsePosition.getIndex());
        if (iMo774D < 0) {
            parsePosition.setErrorIndex(~iMo774D);
            c2232r = null;
        } else {
            parsePosition.setIndex(iMo774D);
        }
        if (c2232r != null) {
            DateTimeFormatter dateTimeFormatter = c2232r.f778a;
            if (parsePosition.getErrorIndex() < 0 && parsePosition.getIndex() >= charSequence.length()) {
                C2239y c2239yM805c = c2232r.m805c();
                InterfaceC2196k interfaceC2196k = c2232r.m805c().f797c;
                if (interfaceC2196k == null && (interfaceC2196k = dateTimeFormatter.f724e) == null) {
                    interfaceC2196k = C2203r.f699c;
                }
                c2239yM805c.f797c = interfaceC2196k;
                ZoneId zoneId = c2239yM805c.f796b;
                if (zoneId == null) {
                    dateTimeFormatter.getClass();
                    zoneId = null;
                }
                c2239yM805c.f796b = zoneId;
                c2239yM805c.f799e = this.f723d;
                c2239yM805c.m815q();
                c2239yM805c.m820w(c2239yM805c.f797c.mo729V(c2239yM805c.f795a, c2239yM805c.f799e));
                c2239yM805c.m818u();
                if (((HashMap) c2239yM805c.f795a).size() > 0) {
                    loop0: while (i < 50) {
                        Iterator it = ((HashMap) c2239yM805c.f795a).entrySet().iterator();
                        while (it.hasNext()) {
                            InterfaceC2269p interfaceC2269p = (InterfaceC2269p) ((Map.Entry) it.next()).getKey();
                            InterfaceC2265l interfaceC2265lMo834I = interfaceC2269p.mo834I(c2239yM805c.f795a, c2239yM805c, c2239yM805c.f799e);
                            if (interfaceC2265lMo834I == null) {
                                if (!((HashMap) c2239yM805c.f795a).containsKey(interfaceC2269p)) {
                                    break;
                                }
                            } else {
                                if (interfaceC2265lMo834I instanceof ChronoZonedDateTime) {
                                    ChronoZonedDateTime chronoZonedDateTime = (ChronoZonedDateTime) interfaceC2265lMo834I;
                                    ZoneId zoneId2 = c2239yM805c.f796b;
                                    if (zoneId2 == null) {
                                        c2239yM805c.f796b = chronoZonedDateTime.getZone();
                                    } else if (!zoneId2.equals(chronoZonedDateTime.getZone())) {
                                        throw new C2184b("ChronoZonedDateTime must use the effective parsed zone: " + c2239yM805c.f796b);
                                    }
                                    interfaceC2265lMo834I = chronoZonedDateTime.mo711A();
                                }
                                if (interfaceC2265lMo834I instanceof ChronoLocalDateTime) {
                                    ChronoLocalDateTime chronoLocalDateTime = (ChronoLocalDateTime) interfaceC2265lMo834I;
                                    c2239yM805c.m819v(chronoLocalDateTime.toLocalTime(), Period.f635d);
                                    c2239yM805c.m820w(chronoLocalDateTime.mo678m());
                                } else if (interfaceC2265lMo834I instanceof InterfaceC2187b) {
                                    c2239yM805c.m820w((InterfaceC2187b) interfaceC2265lMo834I);
                                } else {
                                    if (!(interfaceC2265lMo834I instanceof LocalTime)) {
                                        C2148b.m615h("Method resolve() can only return ChronoZonedDateTime, ChronoLocalDateTime, ChronoLocalDate or LocalTime");
                                        return null;
                                    }
                                    c2239yM805c.m819v((LocalTime) interfaceC2265lMo834I, Period.f635d);
                                }
                            }
                            i++;
                        }
                    }
                    if (i == 50) {
                        C2148b.m615h("One of the parsed fields has an incorrectly implemented resolve method");
                        return null;
                    }
                    if (i > 0) {
                        c2239yM805c.m815q();
                        c2239yM805c.m820w(c2239yM805c.f797c.mo729V(c2239yM805c.f795a, c2239yM805c.f799e));
                        c2239yM805c.m818u();
                    }
                }
                if (c2239yM805c.f801g == null) {
                    Map map = c2239yM805c.f795a;
                    EnumC2254a enumC2254a = EnumC2254a.MILLI_OF_SECOND;
                    boolean zContainsKey = ((HashMap) map).containsKey(enumC2254a);
                    Map map2 = c2239yM805c.f795a;
                    if (zContainsKey) {
                        long jLongValue = ((Long) ((HashMap) map2).remove(enumC2254a)).longValue();
                        Map map3 = c2239yM805c.f795a;
                        EnumC2254a enumC2254a2 = EnumC2254a.MICRO_OF_SECOND;
                        boolean zContainsKey2 = ((HashMap) map3).containsKey(enumC2254a2);
                        Map map4 = c2239yM805c.f795a;
                        if (zContainsKey2) {
                            long jLongValue2 = (((Long) ((HashMap) map4).get(enumC2254a2)).longValue() % 1000) + (jLongValue * 1000);
                            c2239yM805c.m821x(enumC2254a, enumC2254a2, Long.valueOf(jLongValue2));
                            ((HashMap) c2239yM805c.f795a).remove(enumC2254a2);
                            ((HashMap) c2239yM805c.f795a).put(EnumC2254a.NANO_OF_SECOND, Long.valueOf(jLongValue2 * 1000));
                        } else {
                            ((HashMap) map4).put(EnumC2254a.NANO_OF_SECOND, Long.valueOf(jLongValue * 1000000));
                        }
                    } else {
                        EnumC2254a enumC2254a3 = EnumC2254a.MICRO_OF_SECOND;
                        if (((HashMap) map2).containsKey(enumC2254a3)) {
                            ((HashMap) c2239yM805c.f795a).put(EnumC2254a.NANO_OF_SECOND, Long.valueOf(((Long) ((HashMap) c2239yM805c.f795a).remove(enumC2254a3)).longValue() * 1000));
                        }
                    }
                    Map map5 = c2239yM805c.f795a;
                    EnumC2254a enumC2254a4 = EnumC2254a.HOUR_OF_DAY;
                    Long l = (Long) ((HashMap) map5).get(enumC2254a4);
                    if (l != null) {
                        Map map6 = c2239yM805c.f795a;
                        EnumC2254a enumC2254a5 = EnumC2254a.MINUTE_OF_HOUR;
                        Long l2 = (Long) ((HashMap) map6).get(enumC2254a5);
                        Map map7 = c2239yM805c.f795a;
                        EnumC2254a enumC2254a6 = EnumC2254a.SECOND_OF_MINUTE;
                        Long l3 = (Long) ((HashMap) map7).get(enumC2254a6);
                        Map map8 = c2239yM805c.f795a;
                        EnumC2254a enumC2254a7 = EnumC2254a.NANO_OF_SECOND;
                        Long l4 = (Long) ((HashMap) map8).get(enumC2254a7);
                        if ((l2 != null || (l3 == null && l4 == null)) && (l2 == null || l3 != null || l4 == null)) {
                            j = 1000000;
                            c2239yM805c.m817s(l.longValue(), l2 != null ? l2.longValue() : 0L, l3 != null ? l3.longValue() : 0L, l4 != null ? l4.longValue() : 0L);
                            ((HashMap) c2239yM805c.f795a).remove(enumC2254a4);
                            ((HashMap) c2239yM805c.f795a).remove(enumC2254a5);
                            ((HashMap) c2239yM805c.f795a).remove(enumC2254a6);
                            ((HashMap) c2239yM805c.f795a).remove(enumC2254a7);
                        } else {
                            j = 1000000;
                        }
                    } else {
                        j = 1000000;
                    }
                    if (c2239yM805c.f799e != EnumC2240z.LENIENT && ((HashMap) c2239yM805c.f795a).size() > 0) {
                        for (Map.Entry entry : ((HashMap) c2239yM805c.f795a).entrySet()) {
                            InterfaceC2269p interfaceC2269p2 = (InterfaceC2269p) entry.getKey();
                            if (interfaceC2269p2 instanceof EnumC2254a) {
                                EnumC2254a enumC2254a8 = (EnumC2254a) interfaceC2269p2;
                                if (enumC2254a8.b0()) {
                                    enumC2254a8.a0(((Long) entry.getValue()).longValue());
                                }
                            }
                        }
                    }
                }
                InterfaceC2187b interfaceC2187b = c2239yM805c.f800f;
                if (interfaceC2187b != null) {
                    c2239yM805c.m814p(interfaceC2187b);
                }
                LocalTime localTime = c2239yM805c.f801g;
                if (localTime != null) {
                    c2239yM805c.m814p(localTime);
                    if (c2239yM805c.f800f != null && ((HashMap) c2239yM805c.f795a).size() > 0) {
                        c2239yM805c.m814p(c2239yM805c.f800f.mo661M(c2239yM805c.f801g));
                    }
                }
                if (c2239yM805c.f800f != null && c2239yM805c.f801g != null) {
                    Period period = c2239yM805c.f802h;
                    period.getClass();
                    Period period2 = Period.f635d;
                    if (period != period2) {
                        c2239yM805c.f800f = c2239yM805c.f800f.mo664U(c2239yM805c.f802h);
                        c2239yM805c.f802h = period2;
                    }
                }
                if (c2239yM805c.f801g == null) {
                    if (!((HashMap) c2239yM805c.f795a).containsKey(EnumC2254a.INSTANT_SECONDS)) {
                        if (!((HashMap) c2239yM805c.f795a).containsKey(EnumC2254a.SECOND_OF_DAY)) {
                            if (((HashMap) c2239yM805c.f795a).containsKey(EnumC2254a.SECOND_OF_MINUTE)) {
                                Map map9 = c2239yM805c.f795a;
                                EnumC2254a enumC2254a9 = EnumC2254a.NANO_OF_SECOND;
                                boolean zContainsKey3 = ((HashMap) map9).containsKey(enumC2254a9);
                                Map map10 = c2239yM805c.f795a;
                                if (zContainsKey3) {
                                    long jLongValue3 = ((Long) ((HashMap) map10).get(enumC2254a9)).longValue();
                                    ((HashMap) c2239yM805c.f795a).put(EnumC2254a.MICRO_OF_SECOND, Long.valueOf(jLongValue3 / 1000));
                                    ((HashMap) c2239yM805c.f795a).put(EnumC2254a.MILLI_OF_SECOND, Long.valueOf(jLongValue3 / j));
                                } else {
                                    ((HashMap) map10).put(enumC2254a9, 0L);
                                    ((HashMap) c2239yM805c.f795a).put(EnumC2254a.MICRO_OF_SECOND, 0L);
                                    ((HashMap) c2239yM805c.f795a).put(EnumC2254a.MILLI_OF_SECOND, 0L);
                                }
                            }
                        }
                    }
                }
                if (c2239yM805c.f800f != null && c2239yM805c.f801g != null) {
                    Long l5 = (Long) ((HashMap) c2239yM805c.f795a).get(EnumC2254a.OFFSET_SECONDS);
                    if (l5 != null) {
                        ((HashMap) c2239yM805c.f795a).put(EnumC2254a.INSTANT_SECONDS, Long.valueOf(c2239yM805c.f800f.mo661M(c2239yM805c.f801g).mo672H(ZoneOffset.ofTotalSeconds(l5.intValue())).m721Z()));
                        return c2239yM805c;
                    }
                    if (c2239yM805c.f796b != null) {
                        ((HashMap) c2239yM805c.f795a).put(EnumC2254a.INSTANT_SECONDS, Long.valueOf(c2239yM805c.f800f.mo661M(c2239yM805c.f801g).mo672H(c2239yM805c.f796b).m721Z()));
                    }
                }
                return c2239yM805c;
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
        String string = this.f720a.toString();
        return string.startsWith("[") ? string : string.substring(1, string.length() - 1);
    }
}
