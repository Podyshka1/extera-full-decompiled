package j$.time.format;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.ZonedDateTime;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.zone.C2279g;
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
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2230p extends C2229o {

    /* JADX INFO: renamed from: h */
    public static final Map f768h = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e */
    public final TextStyle f769e;

    /* JADX INFO: renamed from: f */
    public final Map f770f;

    /* JADX INFO: renamed from: g */
    public final Map f771g;

    public C2230p(TextStyle textStyle) {
        super(AbstractC2270q.f851e, "ZoneText(" + textStyle + ")");
        this.f770f = new HashMap();
        this.f771g = new HashMap();
        Objects.requireNonNull(textStyle, "textStyle");
        this.f769e = textStyle;
    }

    @Override // j$.time.format.C2229o
    /* JADX INFO: renamed from: a */
    public final C2225k mo790a(C2232r c2232r) {
        C2225k c2225k;
        if (this.f769e == TextStyle.NARROW) {
            return super.mo790a(c2232r);
        }
        Locale locale = c2232r.f778a.f721b;
        boolean z = c2232r.f779b;
        Set set = C2279g.f890d;
        int size = set.size();
        Map map = z ? this.f770f : this.f771g;
        Map.Entry entry = (Map.Entry) map.get(locale);
        if (entry != null && ((Integer) entry.getKey()).intValue() == size && (c2225k = (C2225k) ((SoftReference) entry.getValue()).get()) != null) {
            return c2225k;
        }
        C2225k c2225k2 = c2232r.f779b ? new C2225k(_UrlKt.FRAGMENT_ENCODE_SET, null, null) : new C2224j(_UrlKt.FRAGMENT_ENCODE_SET, null, null);
        for (String[] strArr : DateFormatSymbols.getInstance(locale).getZoneStrings()) {
            String str = strArr[0];
            if (set.contains(str)) {
                c2225k2.m787a(str, str);
                HashMap map2 = (HashMap) b0.f733d;
                String str2 = (String) map2.get(str);
                if (str2 == null) {
                    HashMap map3 = (HashMap) b0.f736g;
                    if (map3.containsKey(str)) {
                        str = (String) map3.get(str);
                        str2 = (String) map2.get(str);
                    }
                }
                if (str2 != null) {
                    Map map4 = (Map) ((HashMap) b0.f735f).get(str2);
                    str = (map4 == null || !map4.containsKey(locale.getCountry())) ? (String) ((HashMap) b0.f734e).get(str2) : (String) map4.get(locale.getCountry());
                }
                HashMap map5 = (HashMap) b0.f736g;
                if (map5.containsKey(str)) {
                    str = (String) map5.get(str);
                }
                for (int i = this.f769e == TextStyle.FULL ? 1 : 2; i < strArr.length; i += 2) {
                    c2225k2.m787a(strArr[i], str);
                }
            }
        }
        map.put(locale, new AbstractMap.SimpleImmutableEntry(Integer.valueOf(size), new SoftReference(c2225k2)));
        return c2225k2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0070  */
    @Override // j$.time.format.C2229o, j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo775s(C2234t c2234t, StringBuilder sb) {
        boolean zM849g;
        String[] strArr;
        ZoneId zoneId = (ZoneId) c2234t.m811b(AbstractC2270q.f847a);
        if (zoneId == null) {
            return false;
        }
        String id = zoneId.getId();
        if (!(zoneId instanceof ZoneOffset)) {
            InterfaceC2265l interfaceC2265l = c2234t.f786a;
            String str = null;
            Map concurrentHashMap = null;
            if (interfaceC2265l.mo531i(EnumC2254a.INSTANT_SECONDS)) {
                zM849g = zoneId.getRules().m849g(Instant.m647D(interfaceC2265l));
            } else {
                EnumC2254a enumC2254a = EnumC2254a.EPOCH_DAY;
                if (interfaceC2265l.mo531i(enumC2254a)) {
                    EnumC2254a enumC2254a2 = EnumC2254a.NANO_OF_DAY;
                    if (interfaceC2265l.mo531i(enumC2254a2)) {
                        LocalDateTime localDateTimeOf = LocalDateTime.of(LocalDate.g0(interfaceC2265l.mo532k(enumC2254a)), LocalTime.m682S(interfaceC2265l.mo532k(enumC2254a2)));
                        if (zoneId.getRules().m847e(localDateTimeOf) == null) {
                            ZoneRules rules = zoneId.getRules();
                            localDateTimeOf.getClass();
                            zM849g = rules.m849g(ZonedDateTime.m709I(localDateTimeOf, null, zoneId).toInstant());
                        } else {
                            zM849g = 2;
                        }
                    }
                }
            }
            Locale locale = c2234t.f787b.f721b;
            TextStyle textStyle = TextStyle.NARROW;
            TextStyle textStyle2 = this.f769e;
            if (textStyle2 != textStyle) {
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) f768h;
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
                str = zM849g != 0 ? zM849g != 1 ? strArr[textStyle2.f726a + 5] : strArr[textStyle2.f726a + 3] : strArr[textStyle2.f726a + 1];
            }
            if (str != null) {
                id = str;
            }
        }
        sb.append(id);
        return true;
    }
}
