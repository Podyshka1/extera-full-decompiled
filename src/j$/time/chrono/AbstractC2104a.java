package j$.time.chrono;

import j$.time.C2103c;
import j$.time.C2159g;
import j$.time.C2196x;
import j$.time.DayOfWeek;
import j$.time.format.EnumC2158z;
import j$.time.temporal.C2186n;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.time.chrono.a */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2104a implements InterfaceC2114k {

    /* JADX INFO: renamed from: a */
    public static final ConcurrentHashMap f500a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b */
    public static final ConcurrentHashMap f501b = new ConcurrentHashMap();

    static {
        new Locale("ja", "JP", "JP");
    }

    /* JADX INFO: renamed from: B */
    public static InterfaceC2114k m573B(InterfaceC2114k interfaceC2114k, String str) {
        String strMo602v;
        InterfaceC2114k interfaceC2114k2 = (InterfaceC2114k) f500a.putIfAbsent(str, interfaceC2114k);
        if (interfaceC2114k2 == null && (strMo602v = interfaceC2114k.mo602v()) != null) {
            f501b.putIfAbsent(strMo602v, interfaceC2114k);
        }
        return interfaceC2114k2;
    }

    /* JADX INFO: renamed from: G */
    public static InterfaceC2105b m574G(InterfaceC2105b interfaceC2105b, long j, long j2, long j3) {
        long j4;
        InterfaceC2105b interfaceC2105bMo497b = interfaceC2105b.mo497b(j, (InterfaceC2190r) ChronoUnit.MONTHS);
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        InterfaceC2105b interfaceC2105bMo497b2 = interfaceC2105bMo497b.mo497b(j2, (InterfaceC2190r) chronoUnit);
        if (j3 <= 7) {
            if (j3 < 1) {
                interfaceC2105bMo497b2 = interfaceC2105bMo497b2.mo497b(Math.subtractExact(j3, 7L) / 7, (InterfaceC2190r) chronoUnit);
                j4 = (j3 + 6) % 7;
            }
            return interfaceC2105bMo497b2.mo559j(new C2186n(DayOfWeek.m481t((int) j3).getValue(), 0));
        }
        long j5 = j3 - 1;
        interfaceC2105bMo497b2 = interfaceC2105bMo497b2.mo497b(j5 / 7, (InterfaceC2190r) chronoUnit);
        j4 = j5 % 7;
        j3 = j4 + 1;
        return interfaceC2105bMo497b2.mo559j(new C2186n(DayOfWeek.m481t((int) j3).getValue(), 0));
    }

    /* JADX INFO: renamed from: t */
    public static void m575t(Map map, EnumC2173a enumC2173a, long j) {
        Long l = (Long) map.get(enumC2173a);
        if (l == null || l.longValue() == j) {
            map.put(enumC2173a, Long.valueOf(j));
            return;
        }
        throw new C2103c("Conflict found: " + enumC2173a + " " + l + " differs from " + enumC2173a + " " + j);
    }

    /* JADX INFO: renamed from: I */
    public void mo576I(Map map, EnumC2158z enumC2158z) {
        EnumC2173a enumC2173a = EnumC2173a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(enumC2173a);
        if (l != null) {
            if (enumC2158z != EnumC2158z.LENIENT) {
                enumC2173a.m719X(l.longValue());
            }
            InterfaceC2105b interfaceC2105bMo496a = mo598L().mo496a(1L, (InterfaceC2188p) EnumC2173a.DAY_OF_MONTH).mo496a(l.longValue(), (InterfaceC2188p) enumC2173a);
            m575t(map, EnumC2173a.MONTH_OF_YEAR, interfaceC2105bMo496a.mo484g(r6));
            m575t(map, EnumC2173a.YEAR, interfaceC2105bMo496a.mo484g(r6));
        }
    }

    /* JADX INFO: renamed from: P */
    public InterfaceC2105b mo577P(Map map, EnumC2158z enumC2158z) {
        EnumC2173a enumC2173a = EnumC2173a.YEAR;
        int iM728a = mo604z(enumC2173a).m728a(((Long) map.remove(enumC2173a)).longValue(), enumC2173a);
        if (enumC2158z == EnumC2158z.LENIENT) {
            long jSubtractExact = Math.subtractExact(((Long) map.remove(EnumC2173a.MONTH_OF_YEAR)).longValue(), 1L);
            return mo599Q(iM728a, 1, 1).mo497b(jSubtractExact, (InterfaceC2190r) ChronoUnit.MONTHS).mo497b(Math.subtractExact(((Long) map.remove(EnumC2173a.DAY_OF_MONTH)).longValue(), 1L), (InterfaceC2190r) ChronoUnit.DAYS);
        }
        EnumC2173a enumC2173a2 = EnumC2173a.MONTH_OF_YEAR;
        int iM728a2 = mo604z(enumC2173a2).m728a(((Long) map.remove(enumC2173a2)).longValue(), enumC2173a2);
        EnumC2173a enumC2173a3 = EnumC2173a.DAY_OF_MONTH;
        int iM728a3 = mo604z(enumC2173a3).m728a(((Long) map.remove(enumC2173a3)).longValue(), enumC2173a3);
        if (enumC2158z != EnumC2158z.SMART) {
            return mo599Q(iM728a, iM728a2, iM728a3);
        }
        try {
            return mo599Q(iM728a, iM728a2, iM728a3);
        } catch (C2103c unused) {
            return this.mo599Q(iM728a, iM728a2, 1).mo559j(new C2196x(2));
        }
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: S */
    public InterfaceC2105b mo578S(Map map, EnumC2158z enumC2158z) {
        EnumC2173a enumC2173a = EnumC2173a.EPOCH_DAY;
        if (map.containsKey(enumC2173a)) {
            return mo601r(((Long) map.remove(enumC2173a)).longValue());
        }
        mo576I(map, enumC2158z);
        InterfaceC2105b interfaceC2105bMo579V = mo579V(map, enumC2158z);
        if (interfaceC2105bMo579V != null) {
            return interfaceC2105bMo579V;
        }
        EnumC2173a enumC2173a2 = EnumC2173a.YEAR;
        if (map.containsKey(enumC2173a2)) {
            EnumC2173a enumC2173a3 = EnumC2173a.MONTH_OF_YEAR;
            if (map.containsKey(enumC2173a3)) {
                if (map.containsKey(EnumC2173a.DAY_OF_MONTH)) {
                    return mo577P(map, enumC2158z);
                }
                EnumC2173a enumC2173a4 = EnumC2173a.ALIGNED_WEEK_OF_MONTH;
                if (map.containsKey(enumC2173a4)) {
                    EnumC2173a enumC2173a5 = EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                    if (map.containsKey(enumC2173a5)) {
                        int iM728a = mo604z(enumC2173a2).m728a(((Long) map.remove(enumC2173a2)).longValue(), enumC2173a2);
                        if (enumC2158z == EnumC2158z.LENIENT) {
                            long jSubtractExact = Math.subtractExact(((Long) map.remove(enumC2173a3)).longValue(), 1L);
                            return mo599Q(iM728a, 1, 1).mo497b(jSubtractExact, (InterfaceC2190r) ChronoUnit.MONTHS).mo497b(Math.subtractExact(((Long) map.remove(enumC2173a4)).longValue(), 1L), (InterfaceC2190r) ChronoUnit.WEEKS).mo497b(Math.subtractExact(((Long) map.remove(enumC2173a5)).longValue(), 1L), (InterfaceC2190r) ChronoUnit.DAYS);
                        }
                        int iM728a2 = mo604z(enumC2173a3).m728a(((Long) map.remove(enumC2173a3)).longValue(), enumC2173a3);
                        int iM728a3 = mo604z(enumC2173a4).m728a(((Long) map.remove(enumC2173a4)).longValue(), enumC2173a4);
                        InterfaceC2105b interfaceC2105bMo497b = mo599Q(iM728a, iM728a2, 1).mo497b((mo604z(enumC2173a5).m728a(((Long) map.remove(enumC2173a5)).longValue(), enumC2173a5) - 1) + ((iM728a3 - 1) * 7), (InterfaceC2190r) ChronoUnit.DAYS);
                        if (enumC2158z != EnumC2158z.STRICT || interfaceC2105bMo497b.mo484g(enumC2173a3) == iM728a2) {
                            return interfaceC2105bMo497b;
                        }
                        C2159g.m684a("Strict mode rejected resolved date as it is in a different month");
                        return null;
                    }
                    EnumC2173a enumC2173a6 = EnumC2173a.DAY_OF_WEEK;
                    if (map.containsKey(enumC2173a6)) {
                        int iM728a4 = mo604z(enumC2173a2).m728a(((Long) map.remove(enumC2173a2)).longValue(), enumC2173a2);
                        if (enumC2158z == EnumC2158z.LENIENT) {
                            return m574G(mo599Q(iM728a4, 1, 1), Math.subtractExact(((Long) map.remove(enumC2173a3)).longValue(), 1L), Math.subtractExact(((Long) map.remove(enumC2173a4)).longValue(), 1L), Math.subtractExact(((Long) map.remove(enumC2173a6)).longValue(), 1L));
                        }
                        int iM728a5 = mo604z(enumC2173a3).m728a(((Long) map.remove(enumC2173a3)).longValue(), enumC2173a3);
                        InterfaceC2105b interfaceC2105bMo515j = mo599Q(iM728a4, iM728a5, 1).mo497b((mo604z(enumC2173a4).m728a(((Long) map.remove(enumC2173a4)).longValue(), enumC2173a4) - 1) * 7, (InterfaceC2190r) ChronoUnit.DAYS).mo559j(new C2186n(DayOfWeek.m481t(mo604z(enumC2173a6).m728a(((Long) map.remove(enumC2173a6)).longValue(), enumC2173a6)).getValue(), 0));
                        if (enumC2158z != EnumC2158z.STRICT || interfaceC2105bMo515j.mo484g(enumC2173a3) == iM728a5) {
                            return interfaceC2105bMo515j;
                        }
                        C2159g.m684a("Strict mode rejected resolved date as it is in a different month");
                        return null;
                    }
                }
            }
            EnumC2173a enumC2173a7 = EnumC2173a.DAY_OF_YEAR;
            if (map.containsKey(enumC2173a7)) {
                int iM728a6 = mo604z(enumC2173a2).m728a(((Long) map.remove(enumC2173a2)).longValue(), enumC2173a2);
                if (enumC2158z != EnumC2158z.LENIENT) {
                    return mo603x(iM728a6, mo604z(enumC2173a7).m728a(((Long) map.remove(enumC2173a7)).longValue(), enumC2173a7));
                }
                return mo603x(iM728a6, 1).mo497b(Math.subtractExact(((Long) map.remove(enumC2173a7)).longValue(), 1L), (InterfaceC2190r) ChronoUnit.DAYS);
            }
            EnumC2173a enumC2173a8 = EnumC2173a.ALIGNED_WEEK_OF_YEAR;
            if (map.containsKey(enumC2173a8)) {
                EnumC2173a enumC2173a9 = EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_YEAR;
                if (map.containsKey(enumC2173a9)) {
                    int iM728a7 = mo604z(enumC2173a2).m728a(((Long) map.remove(enumC2173a2)).longValue(), enumC2173a2);
                    if (enumC2158z == EnumC2158z.LENIENT) {
                        return mo603x(iM728a7, 1).mo497b(Math.subtractExact(((Long) map.remove(enumC2173a8)).longValue(), 1L), (InterfaceC2190r) ChronoUnit.WEEKS).mo497b(Math.subtractExact(((Long) map.remove(enumC2173a9)).longValue(), 1L), (InterfaceC2190r) ChronoUnit.DAYS);
                    }
                    int iM728a8 = mo604z(enumC2173a8).m728a(((Long) map.remove(enumC2173a8)).longValue(), enumC2173a8);
                    InterfaceC2105b interfaceC2105bMo497b2 = mo603x(iM728a7, 1).mo497b((mo604z(enumC2173a9).m728a(((Long) map.remove(enumC2173a9)).longValue(), enumC2173a9) - 1) + ((iM728a8 - 1) * 7), (InterfaceC2190r) ChronoUnit.DAYS);
                    if (enumC2158z != EnumC2158z.STRICT || interfaceC2105bMo497b2.mo484g(enumC2173a2) == iM728a7) {
                        return interfaceC2105bMo497b2;
                    }
                    C2159g.m684a("Strict mode rejected resolved date as it is in a different year");
                    return null;
                }
                EnumC2173a enumC2173a10 = EnumC2173a.DAY_OF_WEEK;
                if (map.containsKey(enumC2173a10)) {
                    int iM728a9 = mo604z(enumC2173a2).m728a(((Long) map.remove(enumC2173a2)).longValue(), enumC2173a2);
                    if (enumC2158z == EnumC2158z.LENIENT) {
                        return m574G(mo603x(iM728a9, 1), 0L, Math.subtractExact(((Long) map.remove(enumC2173a8)).longValue(), 1L), Math.subtractExact(((Long) map.remove(enumC2173a10)).longValue(), 1L));
                    }
                    InterfaceC2105b interfaceC2105bMo515j2 = mo603x(iM728a9, 1).mo497b((mo604z(enumC2173a8).m728a(((Long) map.remove(enumC2173a8)).longValue(), enumC2173a8) - 1) * 7, (InterfaceC2190r) ChronoUnit.DAYS).mo559j(new C2186n(DayOfWeek.m481t(mo604z(enumC2173a10).m728a(((Long) map.remove(enumC2173a10)).longValue(), enumC2173a10)).getValue(), 0));
                    if (enumC2158z != EnumC2158z.STRICT || interfaceC2105bMo515j2.mo484g(enumC2173a2) == iM728a9) {
                        return interfaceC2105bMo515j2;
                    }
                    C2159g.m684a("Strict mode rejected resolved date as it is in a different year");
                    return null;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: V */
    public InterfaceC2105b mo579V(Map map, EnumC2158z enumC2158z) {
        EnumC2173a enumC2173a = EnumC2173a.YEAR_OF_ERA;
        Long l = (Long) map.remove(enumC2173a);
        if (l == null) {
            EnumC2173a enumC2173a2 = EnumC2173a.ERA;
            if (!map.containsKey(enumC2173a2)) {
                return null;
            }
            mo604z(enumC2173a2).m729b(((Long) map.get(enumC2173a2)).longValue(), enumC2173a2);
            return null;
        }
        Long l2 = (Long) map.remove(EnumC2173a.ERA);
        int iM728a = enumC2158z != EnumC2158z.LENIENT ? mo604z(enumC2173a).m728a(l.longValue(), enumC2173a) : Math.toIntExact(l.longValue());
        if (l2 != null) {
            m575t(map, EnumC2173a.YEAR, mo596D(mo595C(mo604z(r2).m728a(l2.longValue(), r2)), iM728a));
            return null;
        }
        EnumC2173a enumC2173a3 = EnumC2173a.YEAR;
        if (map.containsKey(enumC2173a3)) {
            m575t(map, enumC2173a3, mo596D(mo603x(mo604z(enumC2173a3).m728a(((Long) map.get(enumC2173a3)).longValue(), enumC2173a3), 1).mo506N(), iM728a));
            return null;
        }
        if (enumC2158z == EnumC2158z.STRICT) {
            map.put(enumC2173a, l);
            return null;
        }
        if (mo594A().isEmpty()) {
            m575t(map, enumC2173a3, iM728a);
            return null;
        }
        m575t(map, enumC2173a3, mo596D((InterfaceC2115l) r9.get(r9.size() - 1), iM728a));
        return null;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return getId().compareTo(((InterfaceC2114k) obj).getId());
    }

    @Override // j$.time.chrono.InterfaceC2114k
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbstractC2104a) && getId().compareTo(((AbstractC2104a) obj).getId()) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2114k
    public final int hashCode() {
        return getId().hashCode() ^ getClass().hashCode();
    }

    @Override // j$.time.chrono.InterfaceC2114k
    public final String toString() {
        return getId();
    }
}
