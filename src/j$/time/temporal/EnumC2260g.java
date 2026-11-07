package j$.time.temporal;

import j$.nio.file.C2148b;
import j$.time.DayOfWeek;
import j$.time.LocalDate;
import j$.time.chrono.C2203r;
import j$.time.chrono.InterfaceC2196k;
import j$.time.format.C2239y;
import j$.time.format.EnumC2240z;
import java.util.Map;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.temporal.g */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class EnumC2260g implements InterfaceC2269p {
    public static final EnumC2260g DAY_OF_QUARTER;
    public static final EnumC2260g QUARTER_OF_YEAR;
    public static final EnumC2260g WEEK_BASED_YEAR;
    public static final EnumC2260g WEEK_OF_WEEK_BASED_YEAR;

    /* JADX INFO: renamed from: a */
    public static final int[] f832a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ EnumC2260g[] f833b;

    static {
        EnumC2260g enumC2260g = new EnumC2260g() { // from class: j$.time.temporal.c
            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: D */
            public final C2272s mo829D(InterfaceC2265l interfaceC2265l) {
                if (!mo833s(interfaceC2265l)) {
                    throw new C2271r("Unsupported field: DayOfQuarter");
                }
                long jMo532k = interfaceC2265l.mo532k(EnumC2260g.QUARTER_OF_YEAR);
                if (jMo532k != 1) {
                    return jMo532k == 2 ? C2272s.m835f(1L, 91L) : (jMo532k == 3 || jMo532k == 4) ? C2272s.m835f(1L, 92L) : mo830K();
                }
                long jMo532k2 = interfaceC2265l.mo532k(EnumC2254a.YEAR);
                C2203r.f699c.getClass();
                return C2203r.a0(jMo532k2) ? C2272s.m835f(1L, 91L) : C2272s.m835f(1L, 90L);
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: I */
            public final InterfaceC2265l mo834I(Map map, C2239y c2239y, EnumC2240z enumC2240z) {
                LocalDate localDateOf;
                long jSubtractExact;
                EnumC2254a enumC2254a = EnumC2254a.YEAR;
                Long l = (Long) map.get(enumC2254a);
                InterfaceC2269p interfaceC2269p = EnumC2260g.QUARTER_OF_YEAR;
                Long l2 = (Long) map.get(interfaceC2269p);
                if (l != null && l2 != null) {
                    int iM837a = enumC2254a.f830b.m837a(l.longValue(), enumC2254a);
                    long jLongValue = ((Long) map.get(EnumC2260g.DAY_OF_QUARTER)).longValue();
                    EnumC2260g enumC2260g2 = AbstractC2262i.f837a;
                    if (InterfaceC2196k.m758r(c2239y).equals(C2203r.f699c)) {
                        if (enumC2240z == EnumC2240z.LENIENT) {
                            localDateOf = LocalDate.of(iM837a, 1, 1).j0(Math.multiplyExact(Math.subtractExact(l2.longValue(), 1L), 3L));
                            jSubtractExact = Math.subtractExact(jLongValue, 1L);
                        } else {
                            localDateOf = LocalDate.of(iM837a, ((interfaceC2269p.mo830K().m837a(l2.longValue(), interfaceC2269p) - 1) * 3) + 1, 1);
                            if (jLongValue < 1 || jLongValue > 90) {
                                if (enumC2240z == EnumC2240z.STRICT) {
                                    mo829D(localDateOf).m838b(jLongValue, this);
                                } else {
                                    mo830K().m838b(jLongValue, this);
                                }
                            }
                            jSubtractExact = jLongValue - 1;
                        }
                        map.remove(this);
                        map.remove(enumC2254a);
                        map.remove(interfaceC2269p);
                        return localDateOf.plusDays(jSubtractExact);
                    }
                    C2148b.m615h("Resolve requires IsoChronology");
                }
                return null;
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: K */
            public final C2272s mo830K() {
                return C2272s.m836g(90L, 92L);
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: S */
            public final long mo831S(InterfaceC2265l interfaceC2265l) {
                if (!mo833s(interfaceC2265l)) {
                    throw new C2271r("Unsupported field: DayOfQuarter");
                }
                int iMo642g = interfaceC2265l.mo642g(EnumC2254a.DAY_OF_YEAR);
                int iMo642g2 = interfaceC2265l.mo642g(EnumC2254a.MONTH_OF_YEAR);
                long jMo532k = interfaceC2265l.mo532k(EnumC2254a.YEAR);
                int i = (iMo642g2 - 1) / 3;
                C2203r.f699c.getClass();
                return iMo642g - EnumC2260g.f832a[i + (C2203r.a0(jMo532k) ? 4 : 0)];
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: Y */
            public final Temporal mo832Y(Temporal temporal, long j) {
                long jMo831S = mo831S(temporal);
                mo830K().m838b(j, this);
                EnumC2254a enumC2254a = EnumC2254a.DAY_OF_YEAR;
                return temporal.mo652a((j - jMo831S) + temporal.mo532k(enumC2254a), enumC2254a);
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: s */
            public final boolean mo833s(InterfaceC2265l interfaceC2265l) {
                if (!interfaceC2265l.mo531i(EnumC2254a.DAY_OF_YEAR) || !interfaceC2265l.mo531i(EnumC2254a.MONTH_OF_YEAR) || !interfaceC2265l.mo531i(EnumC2254a.YEAR)) {
                    return false;
                }
                EnumC2260g enumC2260g2 = AbstractC2262i.f837a;
                return InterfaceC2196k.m758r(interfaceC2265l).equals(C2203r.f699c);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }
        };
        DAY_OF_QUARTER = enumC2260g;
        EnumC2260g enumC2260g2 = new EnumC2260g() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: D */
            public final C2272s mo829D(InterfaceC2265l interfaceC2265l) {
                if (mo833s(interfaceC2265l)) {
                    return mo830K();
                }
                throw new C2271r("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: K */
            public final C2272s mo830K() {
                return C2272s.m835f(1L, 4L);
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: S */
            public final long mo831S(InterfaceC2265l interfaceC2265l) {
                if (mo833s(interfaceC2265l)) {
                    return (interfaceC2265l.mo532k(EnumC2254a.MONTH_OF_YEAR) + 2) / 3;
                }
                throw new C2271r("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: Y */
            public final Temporal mo832Y(Temporal temporal, long j) {
                long jMo831S = mo831S(temporal);
                mo830K().m838b(j, this);
                EnumC2254a enumC2254a = EnumC2254a.MONTH_OF_YEAR;
                return temporal.mo652a(((j - jMo831S) * 3) + temporal.mo532k(enumC2254a), enumC2254a);
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: s */
            public final boolean mo833s(InterfaceC2265l interfaceC2265l) {
                if (!interfaceC2265l.mo531i(EnumC2254a.MONTH_OF_YEAR)) {
                    return false;
                }
                EnumC2260g enumC2260g3 = AbstractC2262i.f837a;
                return InterfaceC2196k.m758r(interfaceC2265l).equals(C2203r.f699c);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }
        };
        QUARTER_OF_YEAR = enumC2260g2;
        EnumC2260g enumC2260g3 = new EnumC2260g() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: D */
            public final C2272s mo829D(InterfaceC2265l interfaceC2265l) {
                if (mo833s(interfaceC2265l)) {
                    return EnumC2260g.d0(LocalDate.m658I(interfaceC2265l));
                }
                throw new C2271r("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: I */
            public final InterfaceC2265l mo834I(Map map, C2239y c2239y, EnumC2240z enumC2240z) {
                LocalDate localDateMo652a;
                long j;
                InterfaceC2269p interfaceC2269p = EnumC2260g.WEEK_BASED_YEAR;
                Long l = (Long) map.get(interfaceC2269p);
                EnumC2254a enumC2254a = EnumC2254a.DAY_OF_WEEK;
                Long l2 = (Long) map.get(enumC2254a);
                if (l != null && l2 != null) {
                    int iM837a = interfaceC2269p.mo830K().m837a(l.longValue(), interfaceC2269p);
                    long jLongValue = ((Long) map.get(EnumC2260g.WEEK_OF_WEEK_BASED_YEAR)).longValue();
                    EnumC2260g enumC2260g4 = AbstractC2262i.f837a;
                    if (InterfaceC2196k.m758r(c2239y).equals(C2203r.f699c)) {
                        LocalDate localDateOf = LocalDate.of(iM837a, 1, 4);
                        if (enumC2240z == EnumC2240z.LENIENT) {
                            long jLongValue2 = l2.longValue();
                            if (jLongValue2 > 7) {
                                long j2 = jLongValue2 - 1;
                                localDateOf = localDateOf.k0(j2 / 7);
                                j = j2 % 7;
                            } else {
                                if (jLongValue2 < 1) {
                                    localDateOf = localDateOf.k0(Math.subtractExact(jLongValue2, 7L) / 7);
                                    j = (jLongValue2 + 6) % 7;
                                }
                                localDateMo652a = localDateOf.k0(Math.subtractExact(jLongValue, 1L)).mo652a(jLongValue2, enumC2254a);
                            }
                            jLongValue2 = j + 1;
                            localDateMo652a = localDateOf.k0(Math.subtractExact(jLongValue, 1L)).mo652a(jLongValue2, enumC2254a);
                        } else {
                            int iM837a2 = enumC2254a.f830b.m837a(l2.longValue(), enumC2254a);
                            if (jLongValue < 1 || jLongValue > 52) {
                                if (enumC2240z == EnumC2240z.STRICT) {
                                    EnumC2260g.d0(localDateOf).m838b(jLongValue, this);
                                } else {
                                    mo830K().m838b(jLongValue, this);
                                }
                            }
                            localDateMo652a = localDateOf.k0(jLongValue - 1).mo652a(iM837a2, enumC2254a);
                        }
                        map.remove(this);
                        map.remove(interfaceC2269p);
                        map.remove(enumC2254a);
                        return localDateMo652a;
                    }
                    C2148b.m615h("Resolve requires IsoChronology");
                }
                return null;
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: K */
            public final C2272s mo830K() {
                return C2272s.m836g(52L, 53L);
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: S */
            public final long mo831S(InterfaceC2265l interfaceC2265l) {
                if (mo833s(interfaceC2265l)) {
                    return EnumC2260g.a0(LocalDate.m658I(interfaceC2265l));
                }
                throw new C2271r("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: Y */
            public final Temporal mo832Y(Temporal temporal, long j) {
                mo830K().m838b(j, this);
                return temporal.mo653b(Math.subtractExact(j, mo831S(temporal)), ChronoUnit.WEEKS);
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: s */
            public final boolean mo833s(InterfaceC2265l interfaceC2265l) {
                if (!interfaceC2265l.mo531i(EnumC2254a.EPOCH_DAY)) {
                    return false;
                }
                EnumC2260g enumC2260g4 = AbstractC2262i.f837a;
                return InterfaceC2196k.m758r(interfaceC2265l).equals(C2203r.f699c);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = enumC2260g3;
        EnumC2260g enumC2260g4 = new EnumC2260g() { // from class: j$.time.temporal.f
            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: D */
            public final C2272s mo829D(InterfaceC2265l interfaceC2265l) {
                if (mo833s(interfaceC2265l)) {
                    return EnumC2254a.YEAR.f830b;
                }
                throw new C2271r("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: K */
            public final C2272s mo830K() {
                return EnumC2254a.YEAR.f830b;
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: S */
            public final long mo831S(InterfaceC2265l interfaceC2265l) {
                if (mo833s(interfaceC2265l)) {
                    return EnumC2260g.b0(LocalDate.m658I(interfaceC2265l));
                }
                throw new C2271r("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: Y */
            public final Temporal mo832Y(Temporal temporal, long j) {
                if (!mo833s(temporal)) {
                    throw new C2271r("Unsupported field: WeekBasedYear");
                }
                int iM837a = EnumC2254a.YEAR.f830b.m837a(j, EnumC2260g.WEEK_BASED_YEAR);
                LocalDate localDateM658I = LocalDate.m658I(temporal);
                int iMo642g = localDateM658I.mo642g(EnumC2254a.DAY_OF_WEEK);
                int iA0 = EnumC2260g.a0(localDateM658I);
                if (iA0 == 53 && EnumC2260g.c0(iM837a) == 52) {
                    iA0 = 52;
                }
                return temporal.mo677j(LocalDate.of(iM837a, 1, 4).plusDays(((iA0 - 1) * 7) + (iMo642g - r3.mo642g(r6))));
            }

            @Override // j$.time.temporal.InterfaceC2269p
            /* JADX INFO: renamed from: s */
            public final boolean mo833s(InterfaceC2265l interfaceC2265l) {
                if (!interfaceC2265l.mo531i(EnumC2254a.EPOCH_DAY)) {
                    return false;
                }
                EnumC2260g enumC2260g5 = AbstractC2262i.f837a;
                return InterfaceC2196k.m758r(interfaceC2265l).equals(C2203r.f699c);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }
        };
        WEEK_BASED_YEAR = enumC2260g4;
        f833b = new EnumC2260g[]{enumC2260g, enumC2260g2, enumC2260g3, enumC2260g4};
        f832a = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
    }

    public static int a0(LocalDate localDate) {
        int iOrdinal = localDate.m663S().ordinal();
        int iM666Y = localDate.m666Y() - 1;
        int i = (3 - iOrdinal) + iM666Y;
        int i2 = i - ((i / 7) * 7);
        int i3 = i2 - 3;
        if (i3 < -3) {
            i3 = i2 + 4;
        }
        if (iM666Y < i3) {
            if (localDate.m666Y() != 180) {
                localDate = LocalDate.h0(localDate.f611a, 180);
            }
            return (int) d0(localDate.l0(-1L)).f857d;
        }
        int i4 = ((iM666Y - i3) / 7) + 1;
        if (i4 != 53 || i3 == -3 || (i3 == -2 && localDate.c0())) {
            return i4;
        }
        return 1;
    }

    public static int b0(LocalDate localDate) {
        int year = localDate.getYear();
        int iM666Y = localDate.m666Y();
        if (iM666Y <= 3) {
            return iM666Y - localDate.m663S().ordinal() < -2 ? year - 1 : year;
        }
        if (iM666Y >= 363) {
            return ((iM666Y - 363) - (localDate.c0() ? 1 : 0)) - localDate.m663S().ordinal() >= 0 ? year + 1 : year;
        }
        return year;
    }

    public static int c0(int i) {
        LocalDate localDateOf = LocalDate.of(i, 1, 1);
        if (localDateOf.m663S() != DayOfWeek.THURSDAY) {
            return (localDateOf.m663S() == DayOfWeek.WEDNESDAY && localDateOf.c0()) ? 53 : 52;
        }
        return 53;
    }

    public static C2272s d0(LocalDate localDate) {
        return C2272s.m835f(1L, c0(b0(localDate)));
    }

    public static EnumC2260g valueOf(String str) {
        return (EnumC2260g) Enum.valueOf(EnumC2260g.class, str);
    }

    public static EnumC2260g[] values() {
        return (EnumC2260g[]) f833b.clone();
    }

    @Override // j$.time.temporal.InterfaceC2269p
    public final boolean isDateBased() {
        return true;
    }
}
