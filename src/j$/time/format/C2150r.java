package j$.time.format;

import j$.time.ZoneId;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2188p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.format.r */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2150r {

    /* JADX INFO: renamed from: a */
    public final DateTimeFormatter f622a;

    /* JADX INFO: renamed from: b */
    public boolean f623b = true;

    /* JADX INFO: renamed from: c */
    public boolean f624c = true;

    /* JADX INFO: renamed from: d */
    public final ArrayList f625d;

    public C2150r(DateTimeFormatter dateTimeFormatter) {
        ArrayList arrayList = new ArrayList();
        this.f625d = arrayList;
        this.f622a = dateTimeFormatter;
        arrayList.add(new C2157y());
    }

    /* JADX INFO: renamed from: b */
    public static boolean m665b(char c2, char c3) {
        return c2 == c3 || Character.toUpperCase(c2) == Character.toUpperCase(c3) || Character.toLowerCase(c2) == Character.toLowerCase(c3);
    }

    /* JADX INFO: renamed from: a */
    public final boolean m666a(char c2, char c3) {
        return this.f623b ? c2 == c3 : m665b(c2, c3);
    }

    /* JADX INFO: renamed from: c */
    public final C2157y m667c() {
        return (C2157y) this.f625d.get(r1.size() - 1);
    }

    /* JADX INFO: renamed from: d */
    public final Long m668d(EnumC2173a enumC2173a) {
        return (Long) ((HashMap) m667c().f639a).get(enumC2173a);
    }

    /* JADX INFO: renamed from: e */
    public final void m669e(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        m667c().f640b = zoneId;
    }

    /* JADX INFO: renamed from: f */
    public final int m670f(InterfaceC2188p interfaceC2188p, long j, int i, int i2) {
        Objects.requireNonNull(interfaceC2188p, "field");
        Long l = (Long) ((HashMap) m667c().f639a).put(interfaceC2188p, Long.valueOf(j));
        return (l == null || l.longValue() == j) ? i2 : ~i;
    }

    /* JADX INFO: renamed from: g */
    public final boolean m671g(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3) {
        if (i + i3 <= charSequence.length() && i2 + i3 <= charSequence2.length()) {
            if (this.f623b) {
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
        return m667c().toString();
    }
}
