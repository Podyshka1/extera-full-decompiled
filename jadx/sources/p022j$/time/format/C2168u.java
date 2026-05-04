package p022j$.time.format;

import java.text.DateFormatSymbols;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.chrono.C2136r;
import p022j$.time.chrono.InterfaceC2129k;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.time.format.u */
/* JADX INFO: loaded from: classes2.dex */
public class C2168u {

    /* JADX INFO: renamed from: a */
    public static final ConcurrentHashMap f785a = new ConcurrentHashMap(16, 0.75f, 2);

    /* JADX INFO: renamed from: b */
    public static final C2166s f786b = new C2166s();

    /* JADX INFO: renamed from: c */
    public static final C2168u f787c = new C2168u();

    /* JADX INFO: renamed from: a */
    public String mo717a(InterfaceC2129k interfaceC2129k, InterfaceC2202q interfaceC2202q, long j, TextStyle textStyle, Locale locale) {
        if (interfaceC2129k == C2136r.f714c || !(interfaceC2202q instanceof EnumC2186a)) {
            return mo718b(interfaceC2202q, j, textStyle, locale);
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public String mo718b(InterfaceC2202q interfaceC2202q, long j, TextStyle textStyle, Locale locale) {
        Object c2167t;
        long j2;
        String strSubstring;
        AbstractMap.SimpleImmutableEntry simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(interfaceC2202q, locale);
        ConcurrentHashMap concurrentHashMap = f785a;
        Object obj = concurrentHashMap.get(simpleImmutableEntry);
        if (obj == null) {
            HashMap map = new HashMap();
            if (interfaceC2202q == EnumC2186a.ERA) {
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
                c2167t = new C2167t(map);
            } else {
                long j4 = 1;
                if (interfaceC2202q == EnumC2186a.MONTH_OF_YEAR) {
                    int length = DateFormatSymbols.getInstance(locale).getMonths().length;
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                    for (long j5 = 1; j5 <= length; j5++) {
                        String strM518D = AbstractC2104a.m518D(j5, "LLLL", locale);
                        linkedHashMap.put(Long.valueOf(j5), strM518D);
                        linkedHashMap2.put(Long.valueOf(j5), strM518D.substring(0, Character.charCount(strM518D.codePointAt(0))));
                        linkedHashMap3.put(Long.valueOf(j5), AbstractC2104a.m518D(j5, "LLL", locale));
                    }
                    if (length > 0) {
                        map.put(TextStyle.FULL_STANDALONE, linkedHashMap);
                        map.put(TextStyle.NARROW_STANDALONE, linkedHashMap2);
                        map.put(TextStyle.SHORT_STANDALONE, linkedHashMap3);
                        map.put(TextStyle.FULL, linkedHashMap);
                        map.put(TextStyle.NARROW, linkedHashMap2);
                        map.put(TextStyle.SHORT, linkedHashMap3);
                    }
                    c2167t = new C2167t(map);
                } else if (interfaceC2202q == EnumC2186a.DAY_OF_WEEK) {
                    int length2 = DateFormatSymbols.getInstance(locale).getWeekdays().length;
                    LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                    LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                    LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                    boolean z = locale == Locale.SIMPLIFIED_CHINESE || locale == Locale.TRADITIONAL_CHINESE;
                    long j6 = 1;
                    while (j6 <= length2) {
                        String strM517C = AbstractC2104a.m517C(j6, "cccc", locale);
                        linkedHashMap4.put(Long.valueOf(j6), strM517C);
                        Long lValueOf2 = Long.valueOf(j6);
                        if (!z) {
                            j2 = j4;
                            strSubstring = strM517C.substring(0, Character.charCount(strM517C.codePointAt(0)));
                        } else {
                            j2 = j4;
                            strSubstring = new StringBuilder().appendCodePoint(strM517C.codePointBefore(strM517C.length())).toString();
                        }
                        linkedHashMap5.put(lValueOf2, strSubstring);
                        linkedHashMap6.put(Long.valueOf(j6), AbstractC2104a.m517C(j6, "ccc", locale));
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
                    c2167t = new C2167t(map);
                } else if (interfaceC2202q == EnumC2186a.AMPM_OF_DAY) {
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
                    c2167t = new C2167t(map);
                } else {
                    c2167t = _UrlKt.FRAGMENT_ENCODE_SET;
                }
            }
            concurrentHashMap.putIfAbsent(simpleImmutableEntry, c2167t);
            obj = concurrentHashMap.get(simpleImmutableEntry);
        }
        if (obj instanceof C2167t) {
            return ((C2167t) obj).m737a(j, textStyle);
        }
        return null;
    }
}
