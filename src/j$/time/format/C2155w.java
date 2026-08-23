package j$.time.format;

import j$.time.AbstractC2102b;
import j$.time.chrono.C2121r;
import j$.time.chrono.InterfaceC2114k;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2188p;
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
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public class C2155w {

    /* JADX INFO: renamed from: a */
    public static final ConcurrentMap f635a = new ConcurrentHashMap(16, 0.75f, 2);

    /* JADX INFO: renamed from: b */
    public static final C2153u f636b = new C2153u();

    /* JADX INFO: renamed from: c */
    public static final C2155w f637c = new C2155w();

    /* JADX INFO: renamed from: a */
    public static Object m675a(InterfaceC2188p interfaceC2188p, Locale locale) {
        Object c2154v;
        AbstractMap.SimpleImmutableEntry simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(interfaceC2188p, locale);
        Object obj = ((ConcurrentHashMap) f635a).get(simpleImmutableEntry);
        if (obj != null) {
            return obj;
        }
        HashMap map = new HashMap();
        if (interfaceC2188p == EnumC2173a.ERA) {
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
            c2154v = new C2154v(map);
        } else if (interfaceC2188p == EnumC2173a.MONTH_OF_YEAR) {
            int length = DateFormatSymbols.getInstance(locale).getMonths().length;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            for (long j2 = 1; j2 <= length; j2++) {
                String strM566b = AbstractC2102b.m566b(j2, "LLLL", locale);
                linkedHashMap.put(Long.valueOf(j2), strM566b);
                linkedHashMap2.put(Long.valueOf(j2), strM566b.substring(0, Character.charCount(strM566b.codePointAt(0))));
                linkedHashMap3.put(Long.valueOf(j2), AbstractC2102b.m566b(j2, "LLL", locale));
            }
            if (length > 0) {
                map.put(TextStyle.FULL_STANDALONE, linkedHashMap);
                map.put(TextStyle.NARROW_STANDALONE, linkedHashMap2);
                map.put(TextStyle.SHORT_STANDALONE, linkedHashMap3);
                map.put(TextStyle.FULL, linkedHashMap);
                map.put(TextStyle.NARROW, linkedHashMap2);
                map.put(TextStyle.SHORT, linkedHashMap3);
            }
            c2154v = new C2154v(map);
        } else if (interfaceC2188p == EnumC2173a.DAY_OF_WEEK) {
            int length2 = DateFormatSymbols.getInstance(locale).getWeekdays().length;
            LinkedHashMap linkedHashMap4 = new LinkedHashMap();
            LinkedHashMap linkedHashMap5 = new LinkedHashMap();
            LinkedHashMap linkedHashMap6 = new LinkedHashMap();
            boolean z = locale == Locale.SIMPLIFIED_CHINESE || locale == Locale.TRADITIONAL_CHINESE;
            for (long j3 = 1; j3 <= length2; j3++) {
                String strM565a = AbstractC2102b.m565a(j3, "cccc", locale);
                linkedHashMap4.put(Long.valueOf(j3), strM565a);
                linkedHashMap5.put(Long.valueOf(j3), z ? new StringBuilder().appendCodePoint(strM565a.codePointBefore(strM565a.length())).toString() : strM565a.substring(0, Character.charCount(strM565a.codePointAt(0))));
                linkedHashMap6.put(Long.valueOf(j3), AbstractC2102b.m565a(j3, "ccc", locale));
            }
            if (length2 > 0) {
                map.put(TextStyle.FULL_STANDALONE, linkedHashMap4);
                map.put(TextStyle.NARROW_STANDALONE, linkedHashMap5);
                map.put(TextStyle.SHORT_STANDALONE, linkedHashMap6);
                map.put(TextStyle.FULL, linkedHashMap4);
                map.put(TextStyle.NARROW, linkedHashMap5);
                map.put(TextStyle.SHORT, linkedHashMap6);
            }
            c2154v = new C2154v(map);
        } else if (interfaceC2188p == EnumC2173a.AMPM_OF_DAY) {
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
            c2154v = new C2154v(map);
        } else {
            c2154v = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) f635a;
        concurrentHashMap.putIfAbsent(simpleImmutableEntry, c2154v);
        return concurrentHashMap.get(simpleImmutableEntry);
    }

    /* JADX INFO: renamed from: b */
    public String mo632b(InterfaceC2114k interfaceC2114k, InterfaceC2188p interfaceC2188p, long j, TextStyle textStyle, Locale locale) {
        if (interfaceC2114k == C2121r.f543c || !(interfaceC2188p instanceof EnumC2173a)) {
            return mo633c(interfaceC2188p, j, textStyle, locale);
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public String mo633c(InterfaceC2188p interfaceC2188p, long j, TextStyle textStyle, Locale locale) {
        Object objM675a = m675a(interfaceC2188p, locale);
        if (objM675a instanceof C2154v) {
            return ((C2154v) objM675a).m674a(j, textStyle);
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    public Iterator mo634d(InterfaceC2114k interfaceC2114k, InterfaceC2188p interfaceC2188p, TextStyle textStyle, Locale locale) {
        if (interfaceC2114k == C2121r.f543c || !(interfaceC2188p instanceof EnumC2173a)) {
            return mo635e(interfaceC2188p, textStyle, locale);
        }
        return null;
    }

    /* JADX INFO: renamed from: e */
    public Iterator mo635e(InterfaceC2188p interfaceC2188p, TextStyle textStyle, Locale locale) {
        List list;
        Object objM675a = m675a(interfaceC2188p, locale);
        if (!(objM675a instanceof C2154v) || (list = (List) ((HashMap) ((C2154v) objM675a).f634b).get(textStyle)) == null) {
            return null;
        }
        return list.iterator();
    }
}
