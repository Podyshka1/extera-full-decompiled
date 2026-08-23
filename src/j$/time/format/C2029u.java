package j$.time.format;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.chrono.C1997r;
import j$.time.chrono.InterfaceC1990k;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2063q;
import j$.util.concurrent.ConcurrentHashMap;
import java.text.DateFormatSymbols;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.time.format.u */
/* JADX INFO: loaded from: classes2.dex */
public class C2029u {

    /* JADX INFO: renamed from: a */
    public static final ConcurrentHashMap f550a = new ConcurrentHashMap(16, 0.75f, 2);

    /* JADX INFO: renamed from: b */
    public static final C2027s f551b = new C2027s();

    /* JADX INFO: renamed from: c */
    public static final C2029u f552c = new C2029u();

    /* JADX INFO: renamed from: a */
    public String mo594a(InterfaceC1990k interfaceC1990k, InterfaceC2063q interfaceC2063q, long j, TextStyle textStyle, Locale locale) {
        if (interfaceC1990k == C1997r.f480c || !(interfaceC2063q instanceof EnumC2047a)) {
            return mo595b(interfaceC2063q, j, textStyle, locale);
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public String mo595b(InterfaceC2063q interfaceC2063q, long j, TextStyle textStyle, Locale locale) {
        Object c2028t;
        long j2;
        String strSubstring;
        AbstractMap.SimpleImmutableEntry simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(interfaceC2063q, locale);
        ConcurrentHashMap concurrentHashMap = f550a;
        Object obj = concurrentHashMap.get(simpleImmutableEntry);
        if (obj == null) {
            HashMap map = new HashMap();
            if (interfaceC2063q == EnumC2047a.ERA) {
                DateFormatSymbols dateFormatSymbols = DateFormatSymbols.getInstance(locale);
                HashMap map2 = new HashMap();
                HashMap map3 = new HashMap();
                String[] eras = dateFormatSymbols.getEras();
                for (int i = 0; i < eras.length; i++) {
                    if (!eras[i].isEmpty()) {
                        long j3 = i;
                        map2.put(Long.valueOf(j3), eras[i]);
                        Long lValueOf = Long.valueOf(j3);
                        String str = eras[i];
                        map3.put(lValueOf, str.substring(0, Character.charCount(str.codePointAt(0))));
                    }
                }
                if (!map2.isEmpty()) {
                    map.put(TextStyle.FULL, map2);
                    map.put(TextStyle.SHORT, map2);
                    map.put(TextStyle.NARROW, map3);
                }
                c2028t = new C2028t(map);
            } else {
                long j4 = 1;
                if (interfaceC2063q == EnumC2047a.MONTH_OF_YEAR) {
                    int length = DateFormatSymbols.getInstance(locale).getMonths().length;
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                    for (long j5 = 1; j5 <= length; j5++) {
                        String strM398D = AbstractC1965a.m398D(j5, "LLLL", locale);
                        linkedHashMap.put(Long.valueOf(j5), strM398D);
                        linkedHashMap2.put(Long.valueOf(j5), strM398D.substring(0, Character.charCount(strM398D.codePointAt(0))));
                        linkedHashMap3.put(Long.valueOf(j5), AbstractC1965a.m398D(j5, "LLL", locale));
                    }
                    if (length > 0) {
                        map.put(TextStyle.FULL_STANDALONE, linkedHashMap);
                        map.put(TextStyle.NARROW_STANDALONE, linkedHashMap2);
                        map.put(TextStyle.SHORT_STANDALONE, linkedHashMap3);
                        map.put(TextStyle.FULL, linkedHashMap);
                        map.put(TextStyle.NARROW, linkedHashMap2);
                        map.put(TextStyle.SHORT, linkedHashMap3);
                    }
                    c2028t = new C2028t(map);
                } else if (interfaceC2063q == EnumC2047a.DAY_OF_WEEK) {
                    int length2 = DateFormatSymbols.getInstance(locale).getWeekdays().length;
                    LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                    LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                    LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                    boolean z = locale == Locale.SIMPLIFIED_CHINESE || locale == Locale.TRADITIONAL_CHINESE;
                    long j6 = 1;
                    while (j6 <= length2) {
                        String strM397C = AbstractC1965a.m397C(j6, "cccc", locale);
                        linkedHashMap4.put(Long.valueOf(j6), strM397C);
                        Long lValueOf2 = Long.valueOf(j6);
                        if (!z) {
                            j2 = j4;
                            strSubstring = strM397C.substring(0, Character.charCount(strM397C.codePointAt(0)));
                        } else {
                            j2 = j4;
                            strSubstring = new StringBuilder().appendCodePoint(strM397C.codePointBefore(strM397C.length())).toString();
                        }
                        linkedHashMap5.put(lValueOf2, strSubstring);
                        linkedHashMap6.put(Long.valueOf(j6), AbstractC1965a.m397C(j6, "ccc", locale));
                        j6 += j2;
                        j4 = j2;
                    }
                    if (length2 > 0) {
                        map.put(TextStyle.FULL_STANDALONE, linkedHashMap4);
                        map.put(TextStyle.NARROW_STANDALONE, linkedHashMap5);
                        map.put(TextStyle.SHORT_STANDALONE, linkedHashMap6);
                        map.put(TextStyle.FULL, linkedHashMap4);
                        map.put(TextStyle.NARROW, linkedHashMap5);
                        map.put(TextStyle.SHORT, linkedHashMap6);
                    }
                    c2028t = new C2028t(map);
                } else if (interfaceC2063q == EnumC2047a.AMPM_OF_DAY) {
                    DateFormatSymbols dateFormatSymbols2 = DateFormatSymbols.getInstance(locale);
                    HashMap map4 = new HashMap();
                    HashMap map5 = new HashMap();
                    String[] amPmStrings = dateFormatSymbols2.getAmPmStrings();
                    for (int i2 = 0; i2 < amPmStrings.length; i2++) {
                        if (!amPmStrings[i2].isEmpty()) {
                            long j7 = i2;
                            map4.put(Long.valueOf(j7), amPmStrings[i2]);
                            Long lValueOf3 = Long.valueOf(j7);
                            String str2 = amPmStrings[i2];
                            map5.put(lValueOf3, str2.substring(0, Character.charCount(str2.codePointAt(0))));
                        }
                    }
                    if (!map4.isEmpty()) {
                        map.put(TextStyle.FULL, map4);
                        map.put(TextStyle.SHORT, map4);
                        map.put(TextStyle.NARROW, map5);
                    }
                    c2028t = new C2028t(map);
                } else {
                    c2028t = _UrlKt.FRAGMENT_ENCODE_SET;
                }
            }
            concurrentHashMap.putIfAbsent(simpleImmutableEntry, c2028t);
            obj = concurrentHashMap.get(simpleImmutableEntry);
        }
        if (obj instanceof C2028t) {
            return ((C2028t) obj).m614a(j, textStyle);
        }
        return null;
    }
}
