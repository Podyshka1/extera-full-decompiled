package j$.time.chrono;

import j$.nio.file.C2288b;
import j$.time.C2352d;
import j$.time.DateTimeException;
import j$.time.DayOfWeek;
import j$.time.format.EnumC2380z;
import j$.time.temporal.C2406n;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.TemporalUnit;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.time.chrono.a */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2326a implements InterfaceC2336k {

    /* JADX INFO: renamed from: a */
    public static final ConcurrentHashMap f658a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b */
    public static final ConcurrentHashMap f659b = new ConcurrentHashMap();

    static {
        new Locale("ja", "JP", "JP");
    }

    /* JADX INFO: renamed from: D */
    public static InterfaceC2336k m757D(InterfaceC2336k interfaceC2336k, String str) {
        String strMo787v;
        InterfaceC2336k interfaceC2336k2 = (InterfaceC2336k) f658a.putIfAbsent(str, interfaceC2336k);
        if (interfaceC2336k2 == null && (strMo787v = interfaceC2336k.mo787v()) != null) {
            f659b.putIfAbsent(strMo787v, interfaceC2336k);
        }
        return interfaceC2336k2;
    }

    /* JADX INFO: renamed from: I */
    public static InterfaceC2327b m758I(InterfaceC2327b interfaceC2327b, long j, long j2, long j3) {
        long j4;
        InterfaceC2327b interfaceC2327bMo677b = interfaceC2327b.mo677b(j, (TemporalUnit) ChronoUnit.MONTHS);
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        InterfaceC2327b interfaceC2327bMo677b2 = interfaceC2327bMo677b.mo677b(j2, (TemporalUnit) chronoUnit);
        if (j3 <= 7) {
            if (j3 < 1) {
                interfaceC2327bMo677b2 = interfaceC2327bMo677b2.mo677b(Math.subtractExact(j3, 7L) / 7, (TemporalUnit) chronoUnit);
                j4 = (j3 + 6) % 7;
            }
            return interfaceC2327bMo677b2.mo750j(new C2406n(DayOfWeek.m664s((int) j3).getValue(), 0));
        }
        long j5 = j3 - 1;
        interfaceC2327bMo677b2 = interfaceC2327bMo677b2.mo677b(j5 / 7, (TemporalUnit) chronoUnit);
        j4 = j5 % 7;
        j3 = j4 + 1;
        return interfaceC2327bMo677b2.mo750j(new C2406n(DayOfWeek.m664s((int) j3).getValue(), 0));
    }

    /* JADX INFO: renamed from: s */
    public static void m759s(Map map, EnumC2393a enumC2393a, long j) {
        Long l = (Long) map.get(enumC2393a);
        if (l == null || l.longValue() == j) {
            map.put(enumC2393a, Long.valueOf(j));
            return;
        }
        throw new DateTimeException("Conflict found: " + enumC2393a + " " + l + " differs from " + enumC2393a + " " + j);
    }

    /* JADX INFO: renamed from: K */
    public void mo760K(Map map, EnumC2380z enumC2380z) {
        EnumC2393a enumC2393a = EnumC2393a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(enumC2393a);
        if (l != null) {
            if (enumC2380z != EnumC2380z.LENIENT) {
                enumC2393a.m877Y(l.longValue());
            }
            InterfaceC2327b interfaceC2327bMo676a = mo783M().mo676a(1L, (InterfaceC2408p) EnumC2393a.DAY_OF_MONTH).mo676a(l.longValue(), (InterfaceC2408p) enumC2393a);
            m759s(map, EnumC2393a.MONTH_OF_YEAR, interfaceC2327bMo676a.mo666g(r6));
            m759s(map, EnumC2393a.YEAR, interfaceC2327bMo676a.mo666g(r6));
        }
    }

    /* JADX INFO: renamed from: R */
    public InterfaceC2327b mo761R(Map map, EnumC2380z enumC2380z) {
        EnumC2393a enumC2393a = EnumC2393a.YEAR;
        int iM885a = mo778B(enumC2393a).m885a(((Long) map.remove(enumC2393a)).longValue(), enumC2393a);
        if (enumC2380z == EnumC2380z.LENIENT) {
            long jSubtractExact = Math.subtractExact(((Long) map.remove(EnumC2393a.MONTH_OF_YEAR)).longValue(), 1L);
            return mo784S(iM885a, 1, 1).mo677b(jSubtractExact, (TemporalUnit) ChronoUnit.MONTHS).mo677b(Math.subtractExact(((Long) map.remove(EnumC2393a.DAY_OF_MONTH)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
        }
        EnumC2393a enumC2393a2 = EnumC2393a.MONTH_OF_YEAR;
        int iM885a2 = mo778B(enumC2393a2).m885a(((Long) map.remove(enumC2393a2)).longValue(), enumC2393a2);
        EnumC2393a enumC2393a3 = EnumC2393a.DAY_OF_MONTH;
        int iM885a3 = mo778B(enumC2393a3).m885a(((Long) map.remove(enumC2393a3)).longValue(), enumC2393a3);
        if (enumC2380z != EnumC2380z.SMART) {
            return mo784S(iM885a, iM885a2, iM885a3);
        }
        try {
            return mo784S(iM885a, iM885a2, iM885a3);
        } catch (DateTimeException unused) {
            return this.mo784S(iM885a, iM885a2, 1).mo750j(new C2352d(4));
        }
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: U */
    public InterfaceC2327b mo762U(Map map, EnumC2380z enumC2380z) {
        EnumC2393a enumC2393a = EnumC2393a.EPOCH_DAY;
        if (map.containsKey(enumC2393a)) {
            return mo786p(((Long) map.remove(enumC2393a)).longValue());
        }
        mo760K(map, enumC2380z);
        InterfaceC2327b interfaceC2327bMo763X = mo763X(map, enumC2380z);
        if (interfaceC2327bMo763X != null) {
            return interfaceC2327bMo763X;
        }
        EnumC2393a enumC2393a2 = EnumC2393a.YEAR;
        if (map.containsKey(enumC2393a2)) {
            EnumC2393a enumC2393a3 = EnumC2393a.MONTH_OF_YEAR;
            if (map.containsKey(enumC2393a3)) {
                if (map.containsKey(EnumC2393a.DAY_OF_MONTH)) {
                    return mo761R(map, enumC2380z);
                }
                EnumC2393a enumC2393a4 = EnumC2393a.ALIGNED_WEEK_OF_MONTH;
                if (map.containsKey(enumC2393a4)) {
                    EnumC2393a enumC2393a5 = EnumC2393a.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                    if (map.containsKey(enumC2393a5)) {
                        int iM885a = mo778B(enumC2393a2).m885a(((Long) map.remove(enumC2393a2)).longValue(), enumC2393a2);
                        if (enumC2380z == EnumC2380z.LENIENT) {
                            long jSubtractExact = Math.subtractExact(((Long) map.remove(enumC2393a3)).longValue(), 1L);
                            return mo784S(iM885a, 1, 1).mo677b(jSubtractExact, (TemporalUnit) ChronoUnit.MONTHS).mo677b(Math.subtractExact(((Long) map.remove(enumC2393a4)).longValue(), 1L), (TemporalUnit) ChronoUnit.WEEKS).mo677b(Math.subtractExact(((Long) map.remove(enumC2393a5)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
                        }
                        int iM885a2 = mo778B(enumC2393a3).m885a(((Long) map.remove(enumC2393a3)).longValue(), enumC2393a3);
                        int iM885a3 = mo778B(enumC2393a4).m885a(((Long) map.remove(enumC2393a4)).longValue(), enumC2393a4);
                        InterfaceC2327b interfaceC2327bMo677b = mo784S(iM885a, iM885a2, 1).mo677b((mo778B(enumC2393a5).m885a(((Long) map.remove(enumC2393a5)).longValue(), enumC2393a5) - 1) + ((iM885a3 - 1) * 7), (TemporalUnit) ChronoUnit.DAYS);
                        if (enumC2380z != EnumC2380z.STRICT || interfaceC2327bMo677b.mo666g(enumC2393a3) == iM885a2) {
                            return interfaceC2327bMo677b;
                        }
                        C2288b.m639h("Strict mode rejected resolved date as it is in a different month");
                        return null;
                    }
                    EnumC2393a enumC2393a6 = EnumC2393a.DAY_OF_WEEK;
                    if (map.containsKey(enumC2393a6)) {
                        int iM885a4 = mo778B(enumC2393a2).m885a(((Long) map.remove(enumC2393a2)).longValue(), enumC2393a2);
                        if (enumC2380z == EnumC2380z.LENIENT) {
                            return m758I(mo784S(iM885a4, 1, 1), Math.subtractExact(((Long) map.remove(enumC2393a3)).longValue(), 1L), Math.subtractExact(((Long) map.remove(enumC2393a4)).longValue(), 1L), Math.subtractExact(((Long) map.remove(enumC2393a6)).longValue(), 1L));
                        }
                        int iM885a5 = mo778B(enumC2393a3).m885a(((Long) map.remove(enumC2393a3)).longValue(), enumC2393a3);
                        InterfaceC2327b interfaceC2327bMo693j = mo784S(iM885a4, iM885a5, 1).mo677b((mo778B(enumC2393a4).m885a(((Long) map.remove(enumC2393a4)).longValue(), enumC2393a4) - 1) * 7, (TemporalUnit) ChronoUnit.DAYS).mo750j(new C2406n(DayOfWeek.m664s(mo778B(enumC2393a6).m885a(((Long) map.remove(enumC2393a6)).longValue(), enumC2393a6)).getValue(), 0));
                        if (enumC2380z != EnumC2380z.STRICT || interfaceC2327bMo693j.mo666g(enumC2393a3) == iM885a5) {
                            return interfaceC2327bMo693j;
                        }
                        C2288b.m639h("Strict mode rejected resolved date as it is in a different month");
                        return null;
                    }
                }
            }
            EnumC2393a enumC2393a7 = EnumC2393a.DAY_OF_YEAR;
            if (map.containsKey(enumC2393a7)) {
                int iM885a6 = mo778B(enumC2393a2).m885a(((Long) map.remove(enumC2393a2)).longValue(), enumC2393a2);
                if (enumC2380z != EnumC2380z.LENIENT) {
                    return mo788x(iM885a6, mo778B(enumC2393a7).m885a(((Long) map.remove(enumC2393a7)).longValue(), enumC2393a7));
                }
                return mo788x(iM885a6, 1).mo677b(Math.subtractExact(((Long) map.remove(enumC2393a7)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
            }
            EnumC2393a enumC2393a8 = EnumC2393a.ALIGNED_WEEK_OF_YEAR;
            if (map.containsKey(enumC2393a8)) {
                EnumC2393a enumC2393a9 = EnumC2393a.ALIGNED_DAY_OF_WEEK_IN_YEAR;
                if (map.containsKey(enumC2393a9)) {
                    int iM885a7 = mo778B(enumC2393a2).m885a(((Long) map.remove(enumC2393a2)).longValue(), enumC2393a2);
                    if (enumC2380z == EnumC2380z.LENIENT) {
                        return mo788x(iM885a7, 1).mo677b(Math.subtractExact(((Long) map.remove(enumC2393a8)).longValue(), 1L), (TemporalUnit) ChronoUnit.WEEKS).mo677b(Math.subtractExact(((Long) map.remove(enumC2393a9)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
                    }
                    int iM885a8 = mo778B(enumC2393a8).m885a(((Long) map.remove(enumC2393a8)).longValue(), enumC2393a8);
                    InterfaceC2327b interfaceC2327bMo677b2 = mo788x(iM885a7, 1).mo677b((mo778B(enumC2393a9).m885a(((Long) map.remove(enumC2393a9)).longValue(), enumC2393a9) - 1) + ((iM885a8 - 1) * 7), (TemporalUnit) ChronoUnit.DAYS);
                    if (enumC2380z != EnumC2380z.STRICT || interfaceC2327bMo677b2.mo666g(enumC2393a2) == iM885a7) {
                        return interfaceC2327bMo677b2;
                    }
                    C2288b.m639h("Strict mode rejected resolved date as it is in a different year");
                    return null;
                }
                EnumC2393a enumC2393a10 = EnumC2393a.DAY_OF_WEEK;
                if (map.containsKey(enumC2393a10)) {
                    int iM885a9 = mo778B(enumC2393a2).m885a(((Long) map.remove(enumC2393a2)).longValue(), enumC2393a2);
                    if (enumC2380z == EnumC2380z.LENIENT) {
                        return m758I(mo788x(iM885a9, 1), 0L, Math.subtractExact(((Long) map.remove(enumC2393a8)).longValue(), 1L), Math.subtractExact(((Long) map.remove(enumC2393a10)).longValue(), 1L));
                    }
                    InterfaceC2327b interfaceC2327bMo693j2 = mo788x(iM885a9, 1).mo677b((mo778B(enumC2393a8).m885a(((Long) map.remove(enumC2393a8)).longValue(), enumC2393a8) - 1) * 7, (TemporalUnit) ChronoUnit.DAYS).mo750j(new C2406n(DayOfWeek.m664s(mo778B(enumC2393a10).m885a(((Long) map.remove(enumC2393a10)).longValue(), enumC2393a10)).getValue(), 0));
                    if (enumC2380z != EnumC2380z.STRICT || interfaceC2327bMo693j2.mo666g(enumC2393a2) == iM885a9) {
                        return interfaceC2327bMo693j2;
                    }
                    C2288b.m639h("Strict mode rejected resolved date as it is in a different year");
                    return null;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: X */
    public InterfaceC2327b mo763X(Map map, EnumC2380z enumC2380z) {
        EnumC2393a enumC2393a = EnumC2393a.YEAR_OF_ERA;
        Long l = (Long) map.remove(enumC2393a);
        if (l == null) {
            EnumC2393a enumC2393a2 = EnumC2393a.ERA;
            if (!map.containsKey(enumC2393a2)) {
                return null;
            }
            mo778B(enumC2393a2).m886b(((Long) map.get(enumC2393a2)).longValue(), enumC2393a2);
            return null;
        }
        Long l2 = (Long) map.remove(EnumC2393a.ERA);
        int iM885a = enumC2380z != EnumC2380z.LENIENT ? mo778B(enumC2393a).m885a(l.longValue(), enumC2393a) : Math.toIntExact(l.longValue());
        if (l2 != null) {
            m759s(map, EnumC2393a.YEAR, mo781F(mo780E(mo778B(r2).m885a(l2.longValue(), r2)), iM885a));
            return null;
        }
        EnumC2393a enumC2393a3 = EnumC2393a.YEAR;
        if (map.containsKey(enumC2393a3)) {
            m759s(map, enumC2393a3, mo781F(mo788x(mo778B(enumC2393a3).m885a(((Long) map.get(enumC2393a3)).longValue(), enumC2393a3), 1).mo685O(), iM885a));
            return null;
        }
        if (enumC2380z == EnumC2380z.STRICT) {
            map.put(enumC2393a, l);
            return null;
        }
        if (mo779C().isEmpty()) {
            m759s(map, enumC2393a3, iM885a);
            return null;
        }
        m759s(map, enumC2393a3, mo781F((InterfaceC2337l) r9.get(r9.size() - 1), iM885a));
        return null;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return getId().compareTo(((InterfaceC2336k) obj).getId());
    }

    @Override // j$.time.chrono.InterfaceC2336k
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbstractC2326a) && getId().compareTo(((AbstractC2326a) obj).getId()) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2336k
    public final int hashCode() {
        return getId().hashCode() ^ getClass().hashCode();
    }

    @Override // j$.time.chrono.InterfaceC2336k
    public final String toString() {
        return getId();
    }
}
