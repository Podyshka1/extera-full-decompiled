package j$.time.format;

import j$.nio.file.C2288b;
import j$.time.C2352d;
import j$.time.DateTimeException;
import j$.time.LocalTime;
import j$.time.Period;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.C2343r;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.InterfaceC2327b;
import j$.time.chrono.InterfaceC2336k;
import j$.time.temporal.AbstractC2401i;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2408p;
import java.io.IOException;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class DateTimeFormatter {
    public static final DateTimeFormatter ISO_LOCAL_DATE;
    public static final DateTimeFormatter RFC_1123_DATE_TIME;

    /* JADX INFO: renamed from: f */
    public static final DateTimeFormatter f722f;

    /* JADX INFO: renamed from: g */
    public static final DateTimeFormatter f723g;

    /* JADX INFO: renamed from: a */
    public final C2358d f724a;

    /* JADX INFO: renamed from: b */
    public final Locale f725b;

    /* JADX INFO: renamed from: c */
    public final C2378x f726c;

    /* JADX INFO: renamed from: d */
    public final EnumC2380z f727d;

    /* JADX INFO: renamed from: e */
    public final InterfaceC2336k f728e;

    static {
        C2371q c2371q = new C2371q();
        EnumC2393a enumC2393a = EnumC2393a.YEAR;
        a0 a0Var = a0.EXCEEDS_PAD;
        c2371q.m842h(enumC2393a, 4, 10, a0Var);
        c2371q.m837c(SignatureVisitor.SUPER);
        EnumC2393a enumC2393a2 = EnumC2393a.MONTH_OF_YEAR;
        c2371q.m841g(enumC2393a2, 2);
        c2371q.m837c(SignatureVisitor.SUPER);
        EnumC2393a enumC2393a3 = EnumC2393a.DAY_OF_MONTH;
        c2371q.m841g(enumC2393a3, 2);
        EnumC2380z enumC2380z = EnumC2380z.STRICT;
        C2343r c2343r = C2343r.f701c;
        DateTimeFormatter dateTimeFormatterM845k = c2371q.m845k(enumC2380z, c2343r);
        ISO_LOCAL_DATE = dateTimeFormatterM845k;
        C2371q c2371q2 = new C2371q();
        EnumC2366l enumC2366l = EnumC2366l.INSENSITIVE;
        c2371q2.m836b(enumC2366l);
        c2371q2.m835a(dateTimeFormatterM845k);
        C2363i c2363i = C2363i.f752e;
        c2371q2.m836b(c2363i);
        c2371q2.m845k(enumC2380z, c2343r);
        C2371q c2371q3 = new C2371q();
        c2371q3.m836b(enumC2366l);
        c2371q3.m835a(dateTimeFormatterM845k);
        c2371q3.m844j();
        c2371q3.m836b(c2363i);
        c2371q3.m845k(enumC2380z, c2343r);
        C2371q c2371q4 = new C2371q();
        EnumC2393a enumC2393a4 = EnumC2393a.HOUR_OF_DAY;
        c2371q4.m841g(enumC2393a4, 2);
        c2371q4.m837c(':');
        EnumC2393a enumC2393a5 = EnumC2393a.MINUTE_OF_HOUR;
        c2371q4.m841g(enumC2393a5, 2);
        c2371q4.m844j();
        c2371q4.m837c(':');
        EnumC2393a enumC2393a6 = EnumC2393a.SECOND_OF_MINUTE;
        c2371q4.m841g(enumC2393a6, 2);
        c2371q4.m844j();
        c2371q4.m836b(new C2360f(EnumC2393a.NANO_OF_SECOND));
        DateTimeFormatter dateTimeFormatterM845k2 = c2371q4.m845k(enumC2380z, null);
        C2371q c2371q5 = new C2371q();
        c2371q5.m836b(enumC2366l);
        c2371q5.m835a(dateTimeFormatterM845k2);
        c2371q5.m836b(c2363i);
        c2371q5.m845k(enumC2380z, null);
        C2371q c2371q6 = new C2371q();
        c2371q6.m836b(enumC2366l);
        c2371q6.m835a(dateTimeFormatterM845k2);
        c2371q6.m844j();
        c2371q6.m836b(c2363i);
        c2371q6.m845k(enumC2380z, null);
        C2371q c2371q7 = new C2371q();
        c2371q7.m836b(enumC2366l);
        c2371q7.m835a(dateTimeFormatterM845k);
        c2371q7.m837c('T');
        c2371q7.m835a(dateTimeFormatterM845k2);
        DateTimeFormatter dateTimeFormatterM845k3 = c2371q7.m845k(enumC2380z, c2343r);
        C2371q c2371q8 = new C2371q();
        c2371q8.m836b(enumC2366l);
        c2371q8.m835a(dateTimeFormatterM845k3);
        EnumC2366l enumC2366l2 = EnumC2366l.LENIENT;
        c2371q8.m836b(enumC2366l2);
        c2371q8.m836b(c2363i);
        EnumC2366l enumC2366l3 = EnumC2366l.STRICT;
        c2371q8.m836b(enumC2366l3);
        DateTimeFormatter dateTimeFormatterM845k4 = c2371q8.m845k(enumC2380z, c2343r);
        f722f = dateTimeFormatterM845k4;
        C2371q c2371q9 = new C2371q();
        c2371q9.m835a(dateTimeFormatterM845k4);
        c2371q9.m844j();
        c2371q9.m837c('[');
        EnumC2366l enumC2366l4 = EnumC2366l.SENSITIVE;
        c2371q9.m836b(enumC2366l4);
        C2352d c2352d = C2371q.f776f;
        c2371q9.m836b(new C2369o(c2352d, "ZoneRegionId()"));
        c2371q9.m837c(']');
        c2371q9.m845k(enumC2380z, c2343r);
        C2371q c2371q10 = new C2371q();
        c2371q10.m835a(dateTimeFormatterM845k3);
        c2371q10.m844j();
        c2371q10.m836b(c2363i);
        c2371q10.m844j();
        c2371q10.m837c('[');
        c2371q10.m836b(enumC2366l4);
        c2371q10.m836b(new C2369o(c2352d, "ZoneRegionId()"));
        c2371q10.m837c(']');
        c2371q10.m845k(enumC2380z, c2343r);
        C2371q c2371q11 = new C2371q();
        c2371q11.m836b(enumC2366l);
        c2371q11.m842h(enumC2393a, 4, 10, a0Var);
        c2371q11.m837c(SignatureVisitor.SUPER);
        c2371q11.m841g(EnumC2393a.DAY_OF_YEAR, 3);
        c2371q11.m844j();
        c2371q11.m836b(c2363i);
        c2371q11.m845k(enumC2380z, c2343r);
        C2371q c2371q12 = new C2371q();
        c2371q12.m836b(enumC2366l);
        c2371q12.m842h(AbstractC2401i.f841c, 4, 10, a0Var);
        c2371q12.m838d("-W");
        c2371q12.m841g(AbstractC2401i.f840b, 2);
        c2371q12.m837c(SignatureVisitor.SUPER);
        EnumC2393a enumC2393a7 = EnumC2393a.DAY_OF_WEEK;
        c2371q12.m841g(enumC2393a7, 1);
        c2371q12.m844j();
        c2371q12.m836b(c2363i);
        c2371q12.m845k(enumC2380z, c2343r);
        C2371q c2371q13 = new C2371q();
        c2371q13.m836b(enumC2366l);
        c2371q13.m836b(new C2361g());
        f723g = c2371q13.m845k(enumC2380z, null);
        C2371q c2371q14 = new C2371q();
        c2371q14.m836b(enumC2366l);
        c2371q14.m841g(enumC2393a, 4);
        c2371q14.m841g(enumC2393a2, 2);
        c2371q14.m841g(enumC2393a3, 2);
        c2371q14.m844j();
        c2371q14.m836b(enumC2366l2);
        c2371q14.m836b(new C2363i("+HHMMss", "Z"));
        c2371q14.m836b(enumC2366l3);
        c2371q14.m845k(enumC2380z, c2343r);
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
        C2371q c2371q15 = new C2371q();
        c2371q15.m836b(enumC2366l);
        c2371q15.m836b(enumC2366l2);
        c2371q15.m844j();
        c2371q15.m839e(enumC2393a7, map);
        c2371q15.m838d(", ");
        c2371q15.m843i();
        c2371q15.m842h(enumC2393a3, 1, 2, a0.NOT_NEGATIVE);
        c2371q15.m837c(' ');
        c2371q15.m839e(enumC2393a2, map2);
        c2371q15.m837c(' ');
        c2371q15.m841g(enumC2393a, 4);
        c2371q15.m837c(' ');
        c2371q15.m841g(enumC2393a4, 2);
        c2371q15.m837c(':');
        c2371q15.m841g(enumC2393a5, 2);
        c2371q15.m844j();
        c2371q15.m837c(':');
        c2371q15.m841g(enumC2393a6, 2);
        c2371q15.m843i();
        c2371q15.m837c(' ');
        c2371q15.m836b(new C2363i("+HHMM", "GMT"));
        RFC_1123_DATE_TIME = c2371q15.m845k(EnumC2380z.SMART, c2343r);
    }

    public DateTimeFormatter(C2358d c2358d, Locale locale, EnumC2380z enumC2380z, InterfaceC2336k interfaceC2336k) {
        C2378x c2378x = C2378x.f798a;
        this.f724a = c2358d;
        Objects.requireNonNull(locale, "locale");
        this.f725b = locale;
        this.f726c = c2378x;
        Objects.requireNonNull(enumC2380z, "resolverStyle");
        this.f727d = enumC2380z;
        this.f728e = interfaceC2336k;
    }

    /* JADX INFO: renamed from: a */
    public final String m811a(InterfaceC2404l interfaceC2404l) {
        StringBuilder sb = new StringBuilder(32);
        try {
            this.f724a.mo819s(new C2374t(interfaceC2404l, this), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new DateTimeException(e.getMessage(), e);
        }
    }

    /* JADX INFO: renamed from: b */
    public final Object m812b(CharSequence charSequence, C2352d c2352d) {
        String string;
        Objects.requireNonNull(charSequence, "text");
        try {
            return m813c(charSequence).mo554d(c2352d);
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
    public final C2379y m813c(CharSequence charSequence) {
        long j;
        int i = 0;
        ParsePosition parsePosition = new ParsePosition(0);
        Objects.requireNonNull(charSequence, "text");
        C2372r c2372r = new C2372r(this);
        int iMo818D = this.f724a.mo818D(c2372r, charSequence, parsePosition.getIndex());
        if (iMo818D < 0) {
            parsePosition.setErrorIndex(~iMo818D);
            c2372r = null;
        } else {
            parsePosition.setIndex(iMo818D);
        }
        if (c2372r != null) {
            DateTimeFormatter dateTimeFormatter = c2372r.f782a;
            if (parsePosition.getErrorIndex() < 0 && parsePosition.getIndex() >= charSequence.length()) {
                C2379y c2379yM849c = c2372r.m849c();
                InterfaceC2336k interfaceC2336k = c2372r.m849c().f801c;
                if (interfaceC2336k == null && (interfaceC2336k = dateTimeFormatter.f728e) == null) {
                    interfaceC2336k = C2343r.f701c;
                }
                c2379yM849c.f801c = interfaceC2336k;
                ZoneId zoneId = c2379yM849c.f800b;
                if (zoneId == null) {
                    dateTimeFormatter.getClass();
                    zoneId = null;
                }
                c2379yM849c.f800b = zoneId;
                c2379yM849c.f803e = this.f727d;
                c2379yM849c.m859q();
                c2379yM849c.m864w(c2379yM849c.f801c.mo762U(c2379yM849c.f799a, c2379yM849c.f803e));
                c2379yM849c.m862u();
                if (((HashMap) c2379yM849c.f799a).size() > 0) {
                    loop0: while (i < 50) {
                        Iterator it = ((HashMap) c2379yM849c.f799a).entrySet().iterator();
                        while (it.hasNext()) {
                            InterfaceC2408p interfaceC2408p = (InterfaceC2408p) ((Map.Entry) it.next()).getKey();
                            InterfaceC2404l interfaceC2404lMo880I = interfaceC2408p.mo880I(c2379yM849c.f799a, c2379yM849c, c2379yM849c.f803e);
                            if (interfaceC2404lMo880I == null) {
                                if (!((HashMap) c2379yM849c.f799a).containsKey(interfaceC2408p)) {
                                    break;
                                }
                            } else {
                                if (interfaceC2404lMo880I instanceof ChronoZonedDateTime) {
                                    ChronoZonedDateTime chronoZonedDateTime = (ChronoZonedDateTime) interfaceC2404lMo880I;
                                    ZoneId zoneId2 = c2379yM849c.f800b;
                                    if (zoneId2 == null) {
                                        c2379yM849c.f800b = chronoZonedDateTime.getZone();
                                    } else if (!zoneId2.equals(chronoZonedDateTime.getZone())) {
                                        throw new DateTimeException("ChronoZonedDateTime must use the effective parsed zone: " + c2379yM849c.f800b);
                                    }
                                    interfaceC2404lMo880I = chronoZonedDateTime.mo744A();
                                }
                                if (interfaceC2404lMo880I instanceof ChronoLocalDateTime) {
                                    ChronoLocalDateTime chronoLocalDateTime = (ChronoLocalDateTime) interfaceC2404lMo880I;
                                    c2379yM849c.m863v(chronoLocalDateTime.toLocalTime(), Period.f636d);
                                    c2379yM849c.m864w(chronoLocalDateTime.mo705m());
                                } else if (interfaceC2404lMo880I instanceof InterfaceC2327b) {
                                    c2379yM849c.m864w((InterfaceC2327b) interfaceC2404lMo880I);
                                } else {
                                    if (!(interfaceC2404lMo880I instanceof LocalTime)) {
                                        C2288b.m639h("Method resolve() can only return ChronoZonedDateTime, ChronoLocalDateTime, ChronoLocalDate or LocalTime");
                                        return null;
                                    }
                                    c2379yM849c.m863v((LocalTime) interfaceC2404lMo880I, Period.f636d);
                                }
                            }
                            i++;
                        }
                    }
                    if (i == 50) {
                        C2288b.m639h("One of the parsed fields has an incorrectly implemented resolve method");
                        return null;
                    }
                    if (i > 0) {
                        c2379yM849c.m859q();
                        c2379yM849c.m864w(c2379yM849c.f801c.mo762U(c2379yM849c.f799a, c2379yM849c.f803e));
                        c2379yM849c.m862u();
                    }
                }
                if (c2379yM849c.f805g == null) {
                    Map map = c2379yM849c.f799a;
                    EnumC2393a enumC2393a = EnumC2393a.MILLI_OF_SECOND;
                    boolean zContainsKey = ((HashMap) map).containsKey(enumC2393a);
                    Map map2 = c2379yM849c.f799a;
                    if (zContainsKey) {
                        long jLongValue = ((Long) ((HashMap) map2).remove(enumC2393a)).longValue();
                        Map map3 = c2379yM849c.f799a;
                        EnumC2393a enumC2393a2 = EnumC2393a.MICRO_OF_SECOND;
                        boolean zContainsKey2 = ((HashMap) map3).containsKey(enumC2393a2);
                        Map map4 = c2379yM849c.f799a;
                        if (zContainsKey2) {
                            long jLongValue2 = (((Long) ((HashMap) map4).get(enumC2393a2)).longValue() % 1000) + (jLongValue * 1000);
                            c2379yM849c.m865x(enumC2393a, enumC2393a2, Long.valueOf(jLongValue2));
                            ((HashMap) c2379yM849c.f799a).remove(enumC2393a2);
                            ((HashMap) c2379yM849c.f799a).put(EnumC2393a.NANO_OF_SECOND, Long.valueOf(jLongValue2 * 1000));
                        } else {
                            ((HashMap) map4).put(EnumC2393a.NANO_OF_SECOND, Long.valueOf(jLongValue * 1000000));
                        }
                    } else {
                        EnumC2393a enumC2393a3 = EnumC2393a.MICRO_OF_SECOND;
                        if (((HashMap) map2).containsKey(enumC2393a3)) {
                            ((HashMap) c2379yM849c.f799a).put(EnumC2393a.NANO_OF_SECOND, Long.valueOf(((Long) ((HashMap) c2379yM849c.f799a).remove(enumC2393a3)).longValue() * 1000));
                        }
                    }
                    Map map5 = c2379yM849c.f799a;
                    EnumC2393a enumC2393a4 = EnumC2393a.HOUR_OF_DAY;
                    Long l = (Long) ((HashMap) map5).get(enumC2393a4);
                    if (l != null) {
                        Map map6 = c2379yM849c.f799a;
                        EnumC2393a enumC2393a5 = EnumC2393a.MINUTE_OF_HOUR;
                        Long l2 = (Long) ((HashMap) map6).get(enumC2393a5);
                        Map map7 = c2379yM849c.f799a;
                        EnumC2393a enumC2393a6 = EnumC2393a.SECOND_OF_MINUTE;
                        Long l3 = (Long) ((HashMap) map7).get(enumC2393a6);
                        Map map8 = c2379yM849c.f799a;
                        EnumC2393a enumC2393a7 = EnumC2393a.NANO_OF_SECOND;
                        Long l4 = (Long) ((HashMap) map8).get(enumC2393a7);
                        if ((l2 != null || (l3 == null && l4 == null)) && (l2 == null || l3 != null || l4 == null)) {
                            j = 1000000;
                            c2379yM849c.m861s(l.longValue(), l2 != null ? l2.longValue() : 0L, l3 != null ? l3.longValue() : 0L, l4 != null ? l4.longValue() : 0L);
                            ((HashMap) c2379yM849c.f799a).remove(enumC2393a4);
                            ((HashMap) c2379yM849c.f799a).remove(enumC2393a5);
                            ((HashMap) c2379yM849c.f799a).remove(enumC2393a6);
                            ((HashMap) c2379yM849c.f799a).remove(enumC2393a7);
                        } else {
                            j = 1000000;
                        }
                    } else {
                        j = 1000000;
                    }
                    if (c2379yM849c.f803e != EnumC2380z.LENIENT && ((HashMap) c2379yM849c.f799a).size() > 0) {
                        for (Map.Entry entry : ((HashMap) c2379yM849c.f799a).entrySet()) {
                            InterfaceC2408p interfaceC2408p2 = (InterfaceC2408p) entry.getKey();
                            if (interfaceC2408p2 instanceof EnumC2393a) {
                                EnumC2393a enumC2393a8 = (EnumC2393a) interfaceC2408p2;
                                if (enumC2393a8.m878Z()) {
                                    enumC2393a8.m877Y(((Long) entry.getValue()).longValue());
                                }
                            }
                        }
                    }
                }
                InterfaceC2327b interfaceC2327b = c2379yM849c.f804f;
                if (interfaceC2327b != null) {
                    c2379yM849c.m858p(interfaceC2327b);
                }
                LocalTime localTime = c2379yM849c.f805g;
                if (localTime != null) {
                    c2379yM849c.m858p(localTime);
                    if (c2379yM849c.f804f != null && ((HashMap) c2379yM849c.f799a).size() > 0) {
                        c2379yM849c.m858p(c2379yM849c.f804f.mo684L(c2379yM849c.f805g));
                    }
                }
                if (c2379yM849c.f804f != null && c2379yM849c.f805g != null) {
                    Period period = c2379yM849c.f806h;
                    period.getClass();
                    Period period2 = Period.f636d;
                    if (period != period2) {
                        c2379yM849c.f804f = c2379yM849c.f804f.mo687T(c2379yM849c.f806h);
                        c2379yM849c.f806h = period2;
                    }
                }
                if (c2379yM849c.f805g == null) {
                    if (!((HashMap) c2379yM849c.f799a).containsKey(EnumC2393a.INSTANT_SECONDS)) {
                        if (!((HashMap) c2379yM849c.f799a).containsKey(EnumC2393a.SECOND_OF_DAY)) {
                            if (((HashMap) c2379yM849c.f799a).containsKey(EnumC2393a.SECOND_OF_MINUTE)) {
                                Map map9 = c2379yM849c.f799a;
                                EnumC2393a enumC2393a9 = EnumC2393a.NANO_OF_SECOND;
                                boolean zContainsKey3 = ((HashMap) map9).containsKey(enumC2393a9);
                                Map map10 = c2379yM849c.f799a;
                                if (zContainsKey3) {
                                    long jLongValue3 = ((Long) ((HashMap) map10).get(enumC2393a9)).longValue();
                                    ((HashMap) c2379yM849c.f799a).put(EnumC2393a.MICRO_OF_SECOND, Long.valueOf(jLongValue3 / 1000));
                                    ((HashMap) c2379yM849c.f799a).put(EnumC2393a.MILLI_OF_SECOND, Long.valueOf(jLongValue3 / j));
                                } else {
                                    ((HashMap) map10).put(enumC2393a9, 0L);
                                    ((HashMap) c2379yM849c.f799a).put(EnumC2393a.MICRO_OF_SECOND, 0L);
                                    ((HashMap) c2379yM849c.f799a).put(EnumC2393a.MILLI_OF_SECOND, 0L);
                                }
                            }
                        }
                    }
                }
                if (c2379yM849c.f804f != null && c2379yM849c.f805g != null) {
                    Long l5 = (Long) ((HashMap) c2379yM849c.f799a).get(EnumC2393a.OFFSET_SECONDS);
                    if (l5 != null) {
                        ((HashMap) c2379yM849c.f799a).put(EnumC2393a.INSTANT_SECONDS, Long.valueOf(c2379yM849c.f804f.mo684L(c2379yM849c.f805g).mo697H(ZoneOffset.ofTotalSeconds(l5.intValue())).toEpochSecond()));
                        return c2379yM849c;
                    }
                    if (c2379yM849c.f800b != null) {
                        ((HashMap) c2379yM849c.f799a).put(EnumC2393a.INSTANT_SECONDS, Long.valueOf(c2379yM849c.f804f.mo684L(c2379yM849c.f805g).mo697H(c2379yM849c.f800b).toEpochSecond()));
                    }
                }
                return c2379yM849c;
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
        String string = this.f724a.toString();
        return string.startsWith("[") ? string : string.substring(1, string.length() - 1);
    }
}
