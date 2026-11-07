package j$.time.format;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.ZonedDateTime;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import j$.time.zone.C2418g;
import j$.time.zone.ZoneRules;
import java.lang.ref.SoftReference;
import java.text.DateFormatSymbols;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.time.format.p */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2370p extends C2369o {

    /* JADX INFO: renamed from: h */
    public static final Map f772h = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e */
    public final TextStyle f773e;

    /* JADX INFO: renamed from: f */
    public final Map f774f;

    /* JADX INFO: renamed from: g */
    public final Map f775g;

    public C2370p(TextStyle textStyle) {
        super(AbstractC2409q.f853e, "ZoneText(" + textStyle + ")");
        this.f774f = new HashMap();
        this.f775g = new HashMap();
        Objects.requireNonNull(textStyle, "textStyle");
        this.f773e = textStyle;
    }

    @Override // j$.time.format.C2369o
    /* JADX INFO: renamed from: a */
    public final C2365k mo834a(C2372r c2372r) {
        C2365k c2365k;
        if (this.f773e == TextStyle.NARROW) {
            return super.mo834a(c2372r);
        }
        Locale locale = c2372r.f782a.f725b;
        boolean z = c2372r.f783b;
        Set set = C2418g.f892d;
        int size = set.size();
        Map map = z ? this.f774f : this.f775g;
        Map.Entry entry = (Map.Entry) map.get(locale);
        if (entry != null && ((Integer) entry.getKey()).intValue() == size && (c2365k = (C2365k) ((SoftReference) entry.getValue()).get()) != null) {
            return c2365k;
        }
        C2365k c2365k2 = c2372r.f783b ? new C2365k(_UrlKt.FRAGMENT_ENCODE_SET, null, null) : new C2364j(_UrlKt.FRAGMENT_ENCODE_SET, null, null);
        for (String[] strArr : DateFormatSymbols.getInstance(locale).getZoneStrings()) {
            String str = strArr[0];
            if (set.contains(str)) {
                c2365k2.m831a(str, str);
                HashMap map2 = (HashMap) b0.f737d;
                String str2 = (String) map2.get(str);
                if (str2 == null) {
                    HashMap map3 = (HashMap) b0.f740g;
                    if (map3.containsKey(str)) {
                        str = (String) map3.get(str);
                        str2 = (String) map2.get(str);
                    }
                }
                if (str2 != null) {
                    Map map4 = (Map) ((HashMap) b0.f739f).get(str2);
                    str = (map4 == null || !map4.containsKey(locale.getCountry())) ? (String) ((HashMap) b0.f738e).get(str2) : (String) map4.get(locale.getCountry());
                }
                HashMap map5 = (HashMap) b0.f740g;
                if (map5.containsKey(str)) {
                    str = (String) map5.get(str);
                }
                for (int i = this.f773e == TextStyle.FULL ? 1 : 2; i < strArr.length; i += 2) {
                    c2365k2.m831a(strArr[i], str);
                }
            }
        }
        map.put(locale, new AbstractMap.SimpleImmutableEntry(Integer.valueOf(size), new SoftReference(c2365k2)));
        return c2365k2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0070  */
    @Override // j$.time.format.C2369o, j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo819s(C2374t c2374t, StringBuilder sb) {
        boolean zM897g;
        String[] strArr;
        ZoneId zoneId = (ZoneId) c2374t.m855b(AbstractC2409q.f849a);
        if (zoneId == null) {
            return false;
        }
        String id = zoneId.getId();
        if (!(zoneId instanceof ZoneOffset)) {
            InterfaceC2404l interfaceC2404l = c2374t.f790a;
            String str = null;
            Map concurrentHashMap = null;
            if (interfaceC2404l.mo555i(EnumC2393a.INSTANT_SECONDS)) {
                zM897g = zoneId.getRules().m897g(Instant.m671D(interfaceC2404l));
            } else {
                EnumC2393a enumC2393a = EnumC2393a.EPOCH_DAY;
                if (interfaceC2404l.mo555i(enumC2393a)) {
                    EnumC2393a enumC2393a2 = EnumC2393a.NANO_OF_DAY;
                    if (interfaceC2404l.mo555i(enumC2393a2)) {
                        LocalDateTime localDateTimeOf = LocalDateTime.of(LocalDate.e0(interfaceC2404l.mo556k(enumC2393a)), LocalTime.m709R(interfaceC2404l.mo556k(enumC2393a2)));
                        if (zoneId.getRules().m895e(localDateTimeOf) == null) {
                            ZoneRules rules = zoneId.getRules();
                            localDateTimeOf.getClass();
                            zM897g = rules.m897g(ZonedDateTime.m742K(localDateTimeOf, null, zoneId).toInstant());
                        } else {
                            zM897g = 2;
                        }
                    }
                }
            }
            Locale locale = c2374t.f791b.f725b;
            TextStyle textStyle = TextStyle.NARROW;
            TextStyle textStyle2 = this.f773e;
            if (textStyle2 != textStyle) {
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) f772h;
                SoftReference softReference = (SoftReference) concurrentHashMap2.get(id);
                if (softReference == null || (concurrentHashMap = (Map) softReference.get()) == null || (strArr = (String[]) concurrentHashMap.get(locale)) == null) {
                    TimeZone timeZone = TimeZone.getTimeZone(id);
                    String[] strArr2 = {id, timeZone.getDisplayName(false, 1, locale), timeZone.getDisplayName(false, 0, locale), timeZone.getDisplayName(true, 1, locale), timeZone.getDisplayName(true, 0, locale), id, id};
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    concurrentHashMap.put(locale, strArr2);
                    concurrentHashMap2.put(id, new SoftReference(concurrentHashMap));
                    strArr = strArr2;
                }
                str = zM897g != 0 ? zM897g != 1 ? strArr[textStyle2.f730a + 5] : strArr[textStyle2.f730a + 3] : strArr[textStyle2.f730a + 1];
            }
            if (str != null) {
                id = str;
            }
        }
        sb.append(id);
        return true;
    }
}
