package j$.time.format;

import j$.time.ZoneId;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2269p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.format.r */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2232r {

    /* JADX INFO: renamed from: a */
    public final DateTimeFormatter f778a;

    /* JADX INFO: renamed from: b */
    public boolean f779b = true;

    /* JADX INFO: renamed from: c */
    public boolean f780c = true;

    /* JADX INFO: renamed from: d */
    public final ArrayList f781d;

    public C2232r(DateTimeFormatter dateTimeFormatter) {
        ArrayList arrayList = new ArrayList();
        this.f781d = arrayList;
        this.f778a = dateTimeFormatter;
        arrayList.add(new C2239y());
    }

    /* JADX INFO: renamed from: b */
    public static boolean m803b(char c2, char c3) {
        return c2 == c3 || Character.toUpperCase(c2) == Character.toUpperCase(c3) || Character.toLowerCase(c2) == Character.toLowerCase(c3);
    }

    /* JADX INFO: renamed from: a */
    public final boolean m804a(char c2, char c3) {
        return this.f779b ? c2 == c3 : m803b(c2, c3);
    }

    /* JADX INFO: renamed from: c */
    public final C2239y m805c() {
        return (C2239y) this.f781d.get(r1.size() - 1);
    }

    /* JADX INFO: renamed from: d */
    public final Long m806d(EnumC2254a enumC2254a) {
        return (Long) ((HashMap) m805c().f795a).get(enumC2254a);
    }

    /* JADX INFO: renamed from: e */
    public final void m807e(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        m805c().f796b = zoneId;
    }

    /* JADX INFO: renamed from: f */
    public final int m808f(InterfaceC2269p interfaceC2269p, long j, int i, int i2) {
        Objects.requireNonNull(interfaceC2269p, "field");
        Long l = (Long) ((HashMap) m805c().f795a).put(interfaceC2269p, Long.valueOf(j));
        return (l == null || l.longValue() == j) ? i2 : ~i;
    }

    /* JADX INFO: renamed from: g */
    public final boolean m809g(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3) {
        if (i + i3 <= charSequence.length() && i2 + i3 <= charSequence2.length()) {
            if (this.f779b) {
                for (int i4 = 0; i4 < i3; i4++) {
                    if (charSequence.charAt(i + i4) == charSequence2.charAt(i2 + i4)) {
                    }
                }
                return true;
            }
            for (int i5 = 0; i5 < i3; i5++) {
                char cCharAt = charSequence.charAt(i + i5);
                char cCharAt2 = charSequence2.charAt(i2 + i5);
                if (cCharAt == cCharAt2 || Character.toUpperCase(cCharAt) == Character.toUpperCase(cCharAt2) || Character.toLowerCase(cCharAt) == Character.toLowerCase(cCharAt2)) {
                }
            }
            return true;
        }
        return false;
    }

    public final String toString() {
        return m805c().toString();
    }
}
