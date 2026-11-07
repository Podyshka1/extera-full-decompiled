package j$.time.format;

import j$.time.ZoneId;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2408p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.format.r */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2372r {

    /* JADX INFO: renamed from: a */
    public final DateTimeFormatter f782a;

    /* JADX INFO: renamed from: b */
    public boolean f783b = true;

    /* JADX INFO: renamed from: c */
    public boolean f784c = true;

    /* JADX INFO: renamed from: d */
    public final ArrayList f785d;

    public C2372r(DateTimeFormatter dateTimeFormatter) {
        ArrayList arrayList = new ArrayList();
        this.f785d = arrayList;
        this.f782a = dateTimeFormatter;
        arrayList.add(new C2379y());
    }

    /* JADX INFO: renamed from: b */
    public static boolean m847b(char c2, char c3) {
        return c2 == c3 || Character.toUpperCase(c2) == Character.toUpperCase(c3) || Character.toLowerCase(c2) == Character.toLowerCase(c3);
    }

    /* JADX INFO: renamed from: a */
    public final boolean m848a(char c2, char c3) {
        return this.f783b ? c2 == c3 : m847b(c2, c3);
    }

    /* JADX INFO: renamed from: c */
    public final C2379y m849c() {
        return (C2379y) this.f785d.get(r1.size() - 1);
    }

    /* JADX INFO: renamed from: d */
    public final Long m850d(EnumC2393a enumC2393a) {
        return (Long) ((HashMap) m849c().f799a).get(enumC2393a);
    }

    /* JADX INFO: renamed from: e */
    public final void m851e(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        m849c().f800b = zoneId;
    }

    /* JADX INFO: renamed from: f */
    public final int m852f(InterfaceC2408p interfaceC2408p, long j, int i, int i2) {
        Objects.requireNonNull(interfaceC2408p, "field");
        Long l = (Long) ((HashMap) m849c().f799a).put(interfaceC2408p, Long.valueOf(j));
        return (l == null || l.longValue() == j) ? i2 : ~i;
    }

    /* JADX INFO: renamed from: g */
    public final boolean m853g(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3) {
        if (i + i3 <= charSequence.length() && i2 + i3 <= charSequence2.length()) {
            if (this.f783b) {
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
        return m849c().toString();
    }
}
