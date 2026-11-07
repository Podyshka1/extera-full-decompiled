package j$.time.format;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.time.chrono.C2203r;
import j$.time.chrono.InterfaceC2196k;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2269p;
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
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public class C2237w {

    /* JADX INFO: renamed from: a */
    public static final ConcurrentMap f791a = new ConcurrentHashMap(16, 0.75f, 2);

    /* JADX INFO: renamed from: b */
    public static final C2235u f792b = new C2235u();

    /* JADX INFO: renamed from: c */
    public static final C2237w f793c = new C2237w();

    /* JADX INFO: renamed from: a */
    public static Object m813a(InterfaceC2269p interfaceC2269p, Locale locale) {
        Object c2236v;
        AbstractMap.SimpleImmutableEntry simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(interfaceC2269p, locale);
        Object obj = ((ConcurrentHashMap) f791a).get(simpleImmutableEntry);
        if (obj != null) {
            return obj;
        }
        HashMap map = new HashMap();
        if (interfaceC2269p == EnumC2254a.ERA) {
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
            c2236v = new C2236v(map);
        } else if (interfaceC2269p == EnumC2254a.MONTH_OF_YEAR) {
            int length = DateFormatSymbols.getInstance(locale).getMonths().length;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            for (long j2 = 1; j2 <= length; j2++) {
                String strM505b = AbstractC2108g.m505b(j2, "LLLL", locale);
                linkedHashMap.put(Long.valueOf(j2), strM505b);
                linkedHashMap2.put(Long.valueOf(j2), strM505b.substring(0, Character.charCount(strM505b.codePointAt(0))));
                linkedHashMap3.put(Long.valueOf(j2), AbstractC2108g.m505b(j2, "LLL", locale));
            }
            if (length > 0) {
                map.put(TextStyle.FULL_STANDALONE, linkedHashMap);
                map.put(TextStyle.NARROW_STANDALONE, linkedHashMap2);
                map.put(TextStyle.SHORT_STANDALONE, linkedHashMap3);
                map.put(TextStyle.FULL, linkedHashMap);
                map.put(TextStyle.NARROW, linkedHashMap2);
                map.put(TextStyle.SHORT, linkedHashMap3);
            }
            c2236v = new C2236v(map);
        } else if (interfaceC2269p == EnumC2254a.DAY_OF_WEEK) {
            int length2 = DateFormatSymbols.getInstance(locale).getWeekdays().length;
            LinkedHashMap linkedHashMap4 = new LinkedHashMap();
            LinkedHashMap linkedHashMap5 = new LinkedHashMap();
            LinkedHashMap linkedHashMap6 = new LinkedHashMap();
            boolean z = locale == Locale.SIMPLIFIED_CHINESE || locale == Locale.TRADITIONAL_CHINESE;
            for (long j3 = 1; j3 <= length2; j3++) {
                String strM504a = AbstractC2108g.m504a(j3, "cccc", locale);
                linkedHashMap4.put(Long.valueOf(j3), strM504a);
                linkedHashMap5.put(Long.valueOf(j3), z ? new StringBuilder().appendCodePoint(strM504a.codePointBefore(strM504a.length())).toString() : strM504a.substring(0, Character.charCount(strM504a.codePointAt(0))));
                linkedHashMap6.put(Long.valueOf(j3), AbstractC2108g.m504a(j3, "ccc", locale));
            }
            if (length2 > 0) {
                map.put(TextStyle.FULL_STANDALONE, linkedHashMap4);
                map.put(TextStyle.NARROW_STANDALONE, linkedHashMap5);
                map.put(TextStyle.SHORT_STANDALONE, linkedHashMap6);
                map.put(TextStyle.FULL, linkedHashMap4);
                map.put(TextStyle.NARROW, linkedHashMap5);
                map.put(TextStyle.SHORT, linkedHashMap6);
            }
            c2236v = new C2236v(map);
        } else if (interfaceC2269p == EnumC2254a.AMPM_OF_DAY) {
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
            c2236v = new C2236v(map);
        } else {
            c2236v = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) f791a;
        concurrentHashMap.putIfAbsent(simpleImmutableEntry, c2236v);
        return concurrentHashMap.get(simpleImmutableEntry);
    }

    /* JADX INFO: renamed from: b */
    public String mo770b(InterfaceC2196k interfaceC2196k, InterfaceC2269p interfaceC2269p, long j, TextStyle textStyle, Locale locale) {
        if (interfaceC2196k == C2203r.f699c || !(interfaceC2269p instanceof EnumC2254a)) {
            return mo771c(interfaceC2269p, j, textStyle, locale);
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public String mo771c(InterfaceC2269p interfaceC2269p, long j, TextStyle textStyle, Locale locale) {
        Object objM813a = m813a(interfaceC2269p, locale);
        if (objM813a instanceof C2236v) {
            return ((C2236v) objM813a).m812a(j, textStyle);
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    public Iterator mo772d(InterfaceC2196k interfaceC2196k, InterfaceC2269p interfaceC2269p, TextStyle textStyle, Locale locale) {
        if (interfaceC2196k == C2203r.f699c || !(interfaceC2269p instanceof EnumC2254a)) {
            return mo773e(interfaceC2269p, textStyle, locale);
        }
        return null;
    }

    /* JADX INFO: renamed from: e */
    public Iterator mo773e(InterfaceC2269p interfaceC2269p, TextStyle textStyle, Locale locale) {
        List list;
        Object objM813a = m813a(interfaceC2269p, locale);
        if (!(objM813a instanceof C2236v) || (list = (List) ((HashMap) ((C2236v) objM813a).f790b).get(textStyle)) == null) {
            return null;
        }
        return list.iterator();
    }
}
