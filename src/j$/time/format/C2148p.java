package j$.time.format;

import j$.time.C2162j;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.ZonedDateTime;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.zone.C2205h;
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
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2148p extends C2147o {

    /* JADX INFO: renamed from: h */
    public static final Map f612h = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e */
    public final TextStyle f613e;

    /* JADX INFO: renamed from: f */
    public final Map f614f;

    /* JADX INFO: renamed from: g */
    public final Map f615g;

    public C2148p(TextStyle textStyle) {
        super(AbstractC2189q.f701e, "ZoneText(" + textStyle + ")");
        this.f614f = new HashMap();
        this.f615g = new HashMap();
        Objects.requireNonNull(textStyle, "textStyle");
        this.f613e = textStyle;
    }

    @Override // j$.time.format.C2147o
    /* JADX INFO: renamed from: a */
    public final C2143k mo652a(C2150r c2150r) {
        C2143k c2143k;
        if (this.f613e == TextStyle.NARROW) {
            return super.mo652a(c2150r);
        }
        Locale locale = c2150r.f622a.f565b;
        boolean z = c2150r.f623b;
        Set set = C2205h.f749d;
        int size = set.size();
        Map map = z ? this.f614f : this.f615g;
        Map.Entry entry = (Map.Entry) map.get(locale);
        if (entry != null && ((Integer) entry.getKey()).intValue() == size && (c2143k = (C2143k) ((SoftReference) entry.getValue()).get()) != null) {
            return c2143k;
        }
        C2143k c2143k2 = c2150r.f623b ? new C2143k(_UrlKt.FRAGMENT_ENCODE_SET, null, null) : new C2142j(_UrlKt.FRAGMENT_ENCODE_SET, null, null);
        for (String[] strArr : DateFormatSymbols.getInstance(locale).getZoneStrings()) {
            String str = strArr[0];
            if (set.contains(str)) {
                c2143k2.m649a(str, str);
                HashMap map2 = (HashMap) b0.f577d;
                String str2 = (String) map2.get(str);
                if (str2 == null) {
                    HashMap map3 = (HashMap) b0.f580g;
                    if (map3.containsKey(str)) {
                        str = (String) map3.get(str);
                        str2 = (String) map2.get(str);
                    }
                }
                if (str2 != null) {
                    Map map4 = (Map) ((HashMap) b0.f579f).get(str2);
                    str = (map4 == null || !map4.containsKey(locale.getCountry())) ? (String) ((HashMap) b0.f578e).get(str2) : (String) map4.get(locale.getCountry());
                }
                HashMap map5 = (HashMap) b0.f580g;
                if (map5.containsKey(str)) {
                    str = (String) map5.get(str);
                }
                for (int i = this.f613e == TextStyle.FULL ? 1 : 2; i < strArr.length; i += 2) {
                    c2143k2.m649a(strArr[i], str);
                }
            }
        }
        map.put(locale, new AbstractMap.SimpleImmutableEntry(Integer.valueOf(size), new SoftReference(c2143k2)));
        return c2143k2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006d  */
    @Override // j$.time.format.C2147o, j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo637t(C2152t c2152t, StringBuilder sb) {
        boolean zM742g;
        String[] strArr;
        ZoneId zoneId = (ZoneId) c2152t.m673b(AbstractC2189q.f697a);
        if (zoneId == null) {
            return false;
        }
        String id = zoneId.getId();
        if (!(zoneId instanceof ZoneOffset)) {
            InterfaceC2184l interfaceC2184l = c2152t.f630a;
            String str = null;
            Map concurrentHashMap = null;
            if (interfaceC2184l.mo485i(EnumC2173a.INSTANT_SECONDS)) {
                zM742g = zoneId.getRules().m742g(Instant.m491B(interfaceC2184l));
            } else {
                EnumC2173a enumC2173a = EnumC2173a.EPOCH_DAY;
                if (interfaceC2184l.mo485i(enumC2173a)) {
                    EnumC2173a enumC2173a2 = EnumC2173a.NANO_OF_DAY;
                    if (interfaceC2184l.mo485i(enumC2173a2)) {
                        LocalDateTime localDateTimeM518I = LocalDateTime.m518I(LocalDate.d0(interfaceC2184l.mo486k(enumC2173a)), C2162j.m696V(interfaceC2184l.mo486k(enumC2173a2)));
                        zM742g = zoneId.getRules().m740e(localDateTimeM518I) == null ? zoneId.getRules().m742g(ZonedDateTime.m551G(localDateTimeM518I, zoneId, null).toInstant()) : 2;
                    }
                }
            }
            Locale locale = c2152t.f631b.f565b;
            TextStyle textStyle = TextStyle.NARROW;
            TextStyle textStyle2 = this.f613e;
            if (textStyle2 != textStyle) {
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) f612h;
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
                str = zM742g != 0 ? zM742g != 1 ? strArr[textStyle2.f570a + 5] : strArr[textStyle2.f570a + 3] : strArr[textStyle2.f570a + 1];
            }
            if (str != null) {
                id = str;
            }
        }
        sb.append(id);
        return true;
    }
}
