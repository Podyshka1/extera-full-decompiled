package j$.time.format;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import j$.time.chrono.C2343r;
import j$.time.chrono.InterfaceC2336k;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2408p;
import java.text.DateFormatSymbols;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.time.format.w */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public class C2377w {

    /* JADX INFO: renamed from: a */
    public static final ConcurrentMap f795a = new ConcurrentHashMap(16, 0.75f, 2);

    /* JADX INFO: renamed from: b */
    public static final C2375u f796b = new C2375u();

    /* JADX INFO: renamed from: c */
    public static final C2377w f797c = new C2377w();

    /* JADX INFO: renamed from: a */
    public static Object m857a(InterfaceC2408p interfaceC2408p, Locale locale) {
        Object c2376v;
        AbstractMap.SimpleImmutableEntry simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(interfaceC2408p, locale);
        Object obj = ((ConcurrentHashMap) f795a).get(simpleImmutableEntry);
        if (obj != null) {
            return obj;
        }
        HashMap map = new HashMap();
        if (interfaceC2408p == EnumC2393a.ERA) {
            DateFormatSymbols dateFormatSymbols = DateFormatSymbols.getInstance(locale);
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            String[] eras = dateFormatSymbols.getEras();
            for (int i = 0; i < eras.length; i++) {
                if (!eras[i].isEmpty()) {
                    long j = i;
                    map2.put(Long.valueOf(j), eras[i]);
                    Long lValueOf = Long.valueOf(j);
                    String str = eras[i];
                    map3.put(lValueOf, str.substring(0, Character.charCount(str.codePointAt(0))));
                }
            }
            if (!map2.isEmpty()) {
                map.put(TextStyle.FULL, map2);
                map.put(TextStyle.SHORT, map2);
                map.put(TextStyle.NARROW, map3);
            }
            c2376v = new C2376v(map);
        } else if (interfaceC2408p == EnumC2393a.MONTH_OF_YEAR) {
            int length = DateFormatSymbols.getInstance(locale).getMonths().length;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            for (long j2 = 1; j2 <= length; j2++) {
                String strM529b = AbstractC2248g.m529b(j2, "LLLL", locale);
                linkedHashMap.put(Long.valueOf(j2), strM529b);
                linkedHashMap2.put(Long.valueOf(j2), strM529b.substring(0, Character.charCount(strM529b.codePointAt(0))));
                linkedHashMap3.put(Long.valueOf(j2), AbstractC2248g.m529b(j2, "LLL", locale));
            }
            if (length > 0) {
                map.put(TextStyle.FULL_STANDALONE, linkedHashMap);
                map.put(TextStyle.NARROW_STANDALONE, linkedHashMap2);
                map.put(TextStyle.SHORT_STANDALONE, linkedHashMap3);
                map.put(TextStyle.FULL, linkedHashMap);
                map.put(TextStyle.NARROW, linkedHashMap2);
                map.put(TextStyle.SHORT, linkedHashMap3);
            }
            c2376v = new C2376v(map);
        } else if (interfaceC2408p == EnumC2393a.DAY_OF_WEEK) {
            int length2 = DateFormatSymbols.getInstance(locale).getWeekdays().length;
            LinkedHashMap linkedHashMap4 = new LinkedHashMap();
            LinkedHashMap linkedHashMap5 = new LinkedHashMap();
            LinkedHashMap linkedHashMap6 = new LinkedHashMap();
            boolean z = locale == Locale.SIMPLIFIED_CHINESE || locale == Locale.TRADITIONAL_CHINESE;
            for (long j3 = 1; j3 <= length2; j3++) {
                String strM528a = AbstractC2248g.m528a(j3, "cccc", locale);
                linkedHashMap4.put(Long.valueOf(j3), strM528a);
                linkedHashMap5.put(Long.valueOf(j3), z ? new StringBuilder().appendCodePoint(strM528a.codePointBefore(strM528a.length())).toString() : strM528a.substring(0, Character.charCount(strM528a.codePointAt(0))));
                linkedHashMap6.put(Long.valueOf(j3), AbstractC2248g.m528a(j3, "ccc", locale));
            }
            if (length2 > 0) {
                map.put(TextStyle.FULL_STANDALONE, linkedHashMap4);
                map.put(TextStyle.NARROW_STANDALONE, linkedHashMap5);
                map.put(TextStyle.SHORT_STANDALONE, linkedHashMap6);
                map.put(TextStyle.FULL, linkedHashMap4);
                map.put(TextStyle.NARROW, linkedHashMap5);
                map.put(TextStyle.SHORT, linkedHashMap6);
            }
            c2376v = new C2376v(map);
        } else if (interfaceC2408p == EnumC2393a.AMPM_OF_DAY) {
            DateFormatSymbols dateFormatSymbols2 = DateFormatSymbols.getInstance(locale);
            HashMap map4 = new HashMap();
            HashMap map5 = new HashMap();
            String[] amPmStrings = dateFormatSymbols2.getAmPmStrings();
            for (int i2 = 0; i2 < amPmStrings.length; i2++) {
                if (!amPmStrings[i2].isEmpty()) {
                    long j4 = i2;
                    map4.put(Long.valueOf(j4), amPmStrings[i2]);
                    Long lValueOf2 = Long.valueOf(j4);
                    String str2 = amPmStrings[i2];
                    map5.put(lValueOf2, str2.substring(0, Character.charCount(str2.codePointAt(0))));
                }
            }
            if (!map4.isEmpty()) {
                map.put(TextStyle.FULL, map4);
                map.put(TextStyle.SHORT, map4);
                map.put(TextStyle.NARROW, map5);
            }
            c2376v = new C2376v(map);
        } else {
            c2376v = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) f795a;
        concurrentHashMap.putIfAbsent(simpleImmutableEntry, c2376v);
        return concurrentHashMap.get(simpleImmutableEntry);
    }

    /* JADX INFO: renamed from: b */
    public String mo814b(InterfaceC2336k interfaceC2336k, InterfaceC2408p interfaceC2408p, long j, TextStyle textStyle, Locale locale) {
        if (interfaceC2336k == C2343r.f701c || !(interfaceC2408p instanceof EnumC2393a)) {
            return mo815c(interfaceC2408p, j, textStyle, locale);
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public String mo815c(InterfaceC2408p interfaceC2408p, long j, TextStyle textStyle, Locale locale) {
        Object objM857a = m857a(interfaceC2408p, locale);
        if (objM857a instanceof C2376v) {
            return ((C2376v) objM857a).m856a(j, textStyle);
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    public Iterator mo816d(InterfaceC2336k interfaceC2336k, InterfaceC2408p interfaceC2408p, TextStyle textStyle, Locale locale) {
        if (interfaceC2336k == C2343r.f701c || !(interfaceC2408p instanceof EnumC2393a)) {
            return mo817e(interfaceC2408p, textStyle, locale);
        }
        return null;
    }

    /* JADX INFO: renamed from: e */
    public Iterator mo817e(InterfaceC2408p interfaceC2408p, TextStyle textStyle, Locale locale) {
        List list;
        Object objM857a = m857a(interfaceC2408p, locale);
        if (!(objM857a instanceof C2376v) || (list = (List) ((HashMap) ((C2376v) objM857a).f794b).get(textStyle)) == null) {
            return null;
        }
        return list.iterator();
    }
}
