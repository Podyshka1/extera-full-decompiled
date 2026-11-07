package j$.time.chrono;

import j$.nio.file.C2148b;
import j$.time.C2184b;
import j$.time.C2213e;
import j$.time.DayOfWeek;
import j$.time.format.EnumC2240z;
import j$.time.temporal.C2267n;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.TemporalUnit;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.time.chrono.a */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2186a implements InterfaceC2196k {

    /* JADX INFO: renamed from: a */
    public static final ConcurrentHashMap f656a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b */
    public static final ConcurrentHashMap f657b = new ConcurrentHashMap();

    static {
        new Locale("ja", "JP", "JP");
    }

    /* JADX INFO: renamed from: D */
    public static InterfaceC2196k m724D(InterfaceC2196k interfaceC2196k, String str) {
        String strMo752v;
        InterfaceC2196k interfaceC2196k2 = (InterfaceC2196k) f656a.putIfAbsent(str, interfaceC2196k);
        if (interfaceC2196k2 == null && (strMo752v = interfaceC2196k.mo752v()) != null) {
            f657b.putIfAbsent(strMo752v, interfaceC2196k);
        }
        return interfaceC2196k2;
    }

    /* JADX INFO: renamed from: I */
    public static InterfaceC2187b m725I(InterfaceC2187b interfaceC2187b, long j, long j2, long j3) {
        long j4;
        InterfaceC2187b interfaceC2187bMo653b = interfaceC2187b.mo653b(j, (TemporalUnit) ChronoUnit.MONTHS);
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        InterfaceC2187b interfaceC2187bMo653b2 = interfaceC2187bMo653b.mo653b(j2, (TemporalUnit) chronoUnit);
        if (j3 <= 7) {
            if (j3 < 1) {
                interfaceC2187bMo653b2 = interfaceC2187bMo653b2.mo653b(Math.subtractExact(j3, 7L) / 7, (TemporalUnit) chronoUnit);
                j4 = (j3 + 6) % 7;
            }
            return interfaceC2187bMo653b2.mo716j(new C2267n(DayOfWeek.m640s((int) j3).getValue(), 0));
        }
        long j5 = j3 - 1;
        interfaceC2187bMo653b2 = interfaceC2187bMo653b2.mo653b(j5 / 7, (TemporalUnit) chronoUnit);
        j4 = j5 % 7;
        j3 = j4 + 1;
        return interfaceC2187bMo653b2.mo716j(new C2267n(DayOfWeek.m640s((int) j3).getValue(), 0));
    }

    /* JADX INFO: renamed from: s */
    public static void m726s(Map map, EnumC2254a enumC2254a, long j) {
        Long l = (Long) map.get(enumC2254a);
        if (l == null || l.longValue() == j) {
            map.put(enumC2254a, Long.valueOf(j));
            return;
        }
        throw new C2184b("Conflict found: " + enumC2254a + " " + l + " differs from " + enumC2254a + " " + j);
    }

    /* JADX INFO: renamed from: K */
    public void mo727K(Map map, EnumC2240z enumC2240z) {
        EnumC2254a enumC2254a = EnumC2254a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(enumC2254a);
        if (l != null) {
            if (enumC2240z != EnumC2240z.LENIENT) {
                enumC2254a.a0(l.longValue());
            }
            InterfaceC2187b interfaceC2187bMo652a = mo748N().mo652a(1L, (InterfaceC2269p) EnumC2254a.DAY_OF_MONTH).mo652a(l.longValue(), (InterfaceC2269p) enumC2254a);
            m726s(map, EnumC2254a.MONTH_OF_YEAR, interfaceC2187bMo652a.mo642g(r6));
            m726s(map, EnumC2254a.YEAR, interfaceC2187bMo652a.mo642g(r6));
        }
    }

    /* JADX INFO: renamed from: S */
    public InterfaceC2187b mo728S(Map map, EnumC2240z enumC2240z) {
        EnumC2254a enumC2254a = EnumC2254a.YEAR;
        int iM837a = mo743B(enumC2254a).m837a(((Long) map.remove(enumC2254a)).longValue(), enumC2254a);
        if (enumC2240z == EnumC2240z.LENIENT) {
            long jSubtractExact = Math.subtractExact(((Long) map.remove(EnumC2254a.MONTH_OF_YEAR)).longValue(), 1L);
            return mo749T(iM837a, 1, 1).mo653b(jSubtractExact, (TemporalUnit) ChronoUnit.MONTHS).mo653b(Math.subtractExact(((Long) map.remove(EnumC2254a.DAY_OF_MONTH)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
        }
        EnumC2254a enumC2254a2 = EnumC2254a.MONTH_OF_YEAR;
        int iM837a2 = mo743B(enumC2254a2).m837a(((Long) map.remove(enumC2254a2)).longValue(), enumC2254a2);
        EnumC2254a enumC2254a3 = EnumC2254a.DAY_OF_MONTH;
        int iM837a3 = mo743B(enumC2254a3).m837a(((Long) map.remove(enumC2254a3)).longValue(), enumC2254a3);
        if (enumC2240z != EnumC2240z.SMART) {
            return mo749T(iM837a, iM837a2, iM837a3);
        }
        try {
            return mo749T(iM837a, iM837a2, iM837a3);
        } catch (C2184b unused) {
            return this.mo749T(iM837a, iM837a2, 1).mo716j(new C2213e(3));
        }
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: V */
    public InterfaceC2187b mo729V(Map map, EnumC2240z enumC2240z) {
        EnumC2254a enumC2254a = EnumC2254a.EPOCH_DAY;
        if (map.containsKey(enumC2254a)) {
            return mo751p(((Long) map.remove(enumC2254a)).longValue());
        }
        mo727K(map, enumC2240z);
        InterfaceC2187b interfaceC2187bMo730Y = mo730Y(map, enumC2240z);
        if (interfaceC2187bMo730Y != null) {
            return interfaceC2187bMo730Y;
        }
        EnumC2254a enumC2254a2 = EnumC2254a.YEAR;
        if (map.containsKey(enumC2254a2)) {
            EnumC2254a enumC2254a3 = EnumC2254a.MONTH_OF_YEAR;
            if (map.containsKey(enumC2254a3)) {
                if (map.containsKey(EnumC2254a.DAY_OF_MONTH)) {
                    return mo728S(map, enumC2240z);
                }
                EnumC2254a enumC2254a4 = EnumC2254a.ALIGNED_WEEK_OF_MONTH;
                if (map.containsKey(enumC2254a4)) {
                    EnumC2254a enumC2254a5 = EnumC2254a.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                    if (map.containsKey(enumC2254a5)) {
                        int iM837a = mo743B(enumC2254a2).m837a(((Long) map.remove(enumC2254a2)).longValue(), enumC2254a2);
                        if (enumC2240z == EnumC2240z.LENIENT) {
                            long jSubtractExact = Math.subtractExact(((Long) map.remove(enumC2254a3)).longValue(), 1L);
                            return mo749T(iM837a, 1, 1).mo653b(jSubtractExact, (TemporalUnit) ChronoUnit.MONTHS).mo653b(Math.subtractExact(((Long) map.remove(enumC2254a4)).longValue(), 1L), (TemporalUnit) ChronoUnit.WEEKS).mo653b(Math.subtractExact(((Long) map.remove(enumC2254a5)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
                        }
                        int iM837a2 = mo743B(enumC2254a3).m837a(((Long) map.remove(enumC2254a3)).longValue(), enumC2254a3);
                        int iM837a3 = mo743B(enumC2254a4).m837a(((Long) map.remove(enumC2254a4)).longValue(), enumC2254a4);
                        InterfaceC2187b interfaceC2187bMo653b = mo749T(iM837a, iM837a2, 1).mo653b((mo743B(enumC2254a5).m837a(((Long) map.remove(enumC2254a5)).longValue(), enumC2254a5) - 1) + ((iM837a3 - 1) * 7), (TemporalUnit) ChronoUnit.DAYS);
                        if (enumC2240z != EnumC2240z.STRICT || interfaceC2187bMo653b.mo642g(enumC2254a3) == iM837a2) {
                            return interfaceC2187bMo653b;
                        }
                        C2148b.m615h("Strict mode rejected resolved date as it is in a different month");
                        return null;
                    }
                    EnumC2254a enumC2254a6 = EnumC2254a.DAY_OF_WEEK;
                    if (map.containsKey(enumC2254a6)) {
                        int iM837a4 = mo743B(enumC2254a2).m837a(((Long) map.remove(enumC2254a2)).longValue(), enumC2254a2);
                        if (enumC2240z == EnumC2240z.LENIENT) {
                            return m725I(mo749T(iM837a4, 1, 1), Math.subtractExact(((Long) map.remove(enumC2254a3)).longValue(), 1L), Math.subtractExact(((Long) map.remove(enumC2254a4)).longValue(), 1L), Math.subtractExact(((Long) map.remove(enumC2254a6)).longValue(), 1L));
                        }
                        int iM837a5 = mo743B(enumC2254a3).m837a(((Long) map.remove(enumC2254a3)).longValue(), enumC2254a3);
                        InterfaceC2187b interfaceC2187bMo668j = mo749T(iM837a4, iM837a5, 1).mo653b((mo743B(enumC2254a4).m837a(((Long) map.remove(enumC2254a4)).longValue(), enumC2254a4) - 1) * 7, (TemporalUnit) ChronoUnit.DAYS).mo716j(new C2267n(DayOfWeek.m640s(mo743B(enumC2254a6).m837a(((Long) map.remove(enumC2254a6)).longValue(), enumC2254a6)).getValue(), 0));
                        if (enumC2240z != EnumC2240z.STRICT || interfaceC2187bMo668j.mo642g(enumC2254a3) == iM837a5) {
                            return interfaceC2187bMo668j;
                        }
                        C2148b.m615h("Strict mode rejected resolved date as it is in a different month");
                        return null;
                    }
                }
            }
            EnumC2254a enumC2254a7 = EnumC2254a.DAY_OF_YEAR;
            if (map.containsKey(enumC2254a7)) {
                int iM837a6 = mo743B(enumC2254a2).m837a(((Long) map.remove(enumC2254a2)).longValue(), enumC2254a2);
                if (enumC2240z != EnumC2240z.LENIENT) {
                    return mo753x(iM837a6, mo743B(enumC2254a7).m837a(((Long) map.remove(enumC2254a7)).longValue(), enumC2254a7));
                }
                return mo753x(iM837a6, 1).mo653b(Math.subtractExact(((Long) map.remove(enumC2254a7)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
            }
            EnumC2254a enumC2254a8 = EnumC2254a.ALIGNED_WEEK_OF_YEAR;
            if (map.containsKey(enumC2254a8)) {
                EnumC2254a enumC2254a9 = EnumC2254a.ALIGNED_DAY_OF_WEEK_IN_YEAR;
                if (map.containsKey(enumC2254a9)) {
                    int iM837a7 = mo743B(enumC2254a2).m837a(((Long) map.remove(enumC2254a2)).longValue(), enumC2254a2);
                    if (enumC2240z == EnumC2240z.LENIENT) {
                        return mo753x(iM837a7, 1).mo653b(Math.subtractExact(((Long) map.remove(enumC2254a8)).longValue(), 1L), (TemporalUnit) ChronoUnit.WEEKS).mo653b(Math.subtractExact(((Long) map.remove(enumC2254a9)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
                    }
                    int iM837a8 = mo743B(enumC2254a8).m837a(((Long) map.remove(enumC2254a8)).longValue(), enumC2254a8);
                    InterfaceC2187b interfaceC2187bMo653b2 = mo753x(iM837a7, 1).mo653b((mo743B(enumC2254a9).m837a(((Long) map.remove(enumC2254a9)).longValue(), enumC2254a9) - 1) + ((iM837a8 - 1) * 7), (TemporalUnit) ChronoUnit.DAYS);
                    if (enumC2240z != EnumC2240z.STRICT || interfaceC2187bMo653b2.mo642g(enumC2254a2) == iM837a7) {
                        return interfaceC2187bMo653b2;
                    }
                    C2148b.m615h("Strict mode rejected resolved date as it is in a different year");
                    return null;
                }
                EnumC2254a enumC2254a10 = EnumC2254a.DAY_OF_WEEK;
                if (map.containsKey(enumC2254a10)) {
                    int iM837a9 = mo743B(enumC2254a2).m837a(((Long) map.remove(enumC2254a2)).longValue(), enumC2254a2);
                    if (enumC2240z == EnumC2240z.LENIENT) {
                        return m725I(mo753x(iM837a9, 1), 0L, Math.subtractExact(((Long) map.remove(enumC2254a8)).longValue(), 1L), Math.subtractExact(((Long) map.remove(enumC2254a10)).longValue(), 1L));
                    }
                    InterfaceC2187b interfaceC2187bMo668j2 = mo753x(iM837a9, 1).mo653b((mo743B(enumC2254a8).m837a(((Long) map.remove(enumC2254a8)).longValue(), enumC2254a8) - 1) * 7, (TemporalUnit) ChronoUnit.DAYS).mo716j(new C2267n(DayOfWeek.m640s(mo743B(enumC2254a10).m837a(((Long) map.remove(enumC2254a10)).longValue(), enumC2254a10)).getValue(), 0));
                    if (enumC2240z != EnumC2240z.STRICT || interfaceC2187bMo668j2.mo642g(enumC2254a2) == iM837a9) {
                        return interfaceC2187bMo668j2;
                    }
                    C2148b.m615h("Strict mode rejected resolved date as it is in a different year");
                    return null;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: Y */
    public InterfaceC2187b mo730Y(Map map, EnumC2240z enumC2240z) {
        EnumC2254a enumC2254a = EnumC2254a.YEAR_OF_ERA;
        Long l = (Long) map.remove(enumC2254a);
        if (l == null) {
            EnumC2254a enumC2254a2 = EnumC2254a.ERA;
            if (!map.containsKey(enumC2254a2)) {
                return null;
            }
            mo743B(enumC2254a2).m838b(((Long) map.get(enumC2254a2)).longValue(), enumC2254a2);
            return null;
        }
        Long l2 = (Long) map.remove(EnumC2254a.ERA);
        int iM837a = enumC2240z != EnumC2240z.LENIENT ? mo743B(enumC2254a).m837a(l.longValue(), enumC2254a) : Math.toIntExact(l.longValue());
        if (l2 != null) {
            m726s(map, EnumC2254a.YEAR, mo746F(mo745E(mo743B(r2).m837a(l2.longValue(), r2)), iM837a));
            return null;
        }
        EnumC2254a enumC2254a3 = EnumC2254a.YEAR;
        if (map.containsKey(enumC2254a3)) {
            m726s(map, enumC2254a3, mo746F(mo753x(mo743B(enumC2254a3).m837a(((Long) map.get(enumC2254a3)).longValue(), enumC2254a3), 1).mo662P(), iM837a));
            return null;
        }
        if (enumC2240z == EnumC2240z.STRICT) {
            map.put(enumC2254a, l);
            return null;
        }
        if (mo744C().isEmpty()) {
            m726s(map, enumC2254a3, iM837a);
            return null;
        }
        m726s(map, enumC2254a3, mo746F((InterfaceC2197l) r9.get(r9.size() - 1), iM837a));
        return null;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return getId().compareTo(((InterfaceC2196k) obj).getId());
    }

    @Override // j$.time.chrono.InterfaceC2196k
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbstractC2186a) && getId().compareTo(((AbstractC2186a) obj).getId()) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2196k
    public final int hashCode() {
        return getId().hashCode() ^ getClass().hashCode();
    }

    @Override // j$.time.chrono.InterfaceC2196k
    public final String toString() {
        return getId();
    }
}
