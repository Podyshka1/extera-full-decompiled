package j$.time.temporal;

import j$.nio.file.C2288b;
import j$.time.DayOfWeek;
import j$.time.LocalDate;
import j$.time.chrono.C2343r;
import j$.time.chrono.InterfaceC2336k;
import j$.time.format.C2379y;
import j$.time.format.EnumC2380z;
import java.util.Map;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.temporal.g */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class EnumC2399g implements InterfaceC2408p {
    public static final EnumC2399g DAY_OF_QUARTER;
    public static final EnumC2399g QUARTER_OF_YEAR;
    public static final EnumC2399g WEEK_BASED_YEAR;
    public static final EnumC2399g WEEK_OF_WEEK_BASED_YEAR;

    /* JADX INFO: renamed from: a */
    public static final int[] f834a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ EnumC2399g[] f835b;

    static {
        EnumC2399g enumC2399g = new EnumC2399g() { // from class: j$.time.temporal.c
            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: D */
            public final C2411s mo873D(InterfaceC2404l interfaceC2404l) {
                if (!mo879s(interfaceC2404l)) {
                    throw new C2410r("Unsupported field: DayOfQuarter");
                }
                long jMo556k = interfaceC2404l.mo556k(EnumC2399g.QUARTER_OF_YEAR);
                if (jMo556k != 1) {
                    return jMo556k == 2 ? C2411s.m883f(1L, 91L) : (jMo556k == 3 || jMo556k == 4) ? C2411s.m883f(1L, 92L) : mo874K();
                }
                long jMo556k2 = interfaceC2404l.mo556k(EnumC2393a.YEAR);
                C2343r.f701c.getClass();
                return C2343r.m803Y(jMo556k2) ? C2411s.m883f(1L, 91L) : C2411s.m883f(1L, 90L);
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: I */
            public final InterfaceC2404l mo880I(Map map, C2379y c2379y, EnumC2380z enumC2380z) {
                LocalDate localDateOf;
                long jSubtractExact;
                EnumC2393a enumC2393a = EnumC2393a.YEAR;
                Long l = (Long) map.get(enumC2393a);
                InterfaceC2408p interfaceC2408p = EnumC2399g.QUARTER_OF_YEAR;
                Long l2 = (Long) map.get(interfaceC2408p);
                if (l != null && l2 != null) {
                    int iM885a = enumC2393a.f832b.m885a(l.longValue(), enumC2393a);
                    long jLongValue = ((Long) map.get(EnumC2399g.DAY_OF_QUARTER)).longValue();
                    EnumC2399g enumC2399g2 = AbstractC2401i.f839a;
                    if (InterfaceC2336k.m795r(c2379y).equals(C2343r.f701c)) {
                        if (enumC2380z == EnumC2380z.LENIENT) {
                            localDateOf = LocalDate.of(iM885a, 1, 1).h0(Math.multiplyExact(Math.subtractExact(l2.longValue(), 1L), 3L));
                            jSubtractExact = Math.subtractExact(jLongValue, 1L);
                        } else {
                            localDateOf = LocalDate.of(iM885a, ((interfaceC2408p.mo874K().m885a(l2.longValue(), interfaceC2408p) - 1) * 3) + 1, 1);
                            if (jLongValue < 1 || jLongValue > 90) {
                                if (enumC2380z == EnumC2380z.STRICT) {
                                    mo873D(localDateOf).m886b(jLongValue, this);
                                } else {
                                    mo874K().m886b(jLongValue, this);
                                }
                            }
                            jSubtractExact = jLongValue - 1;
                        }
                        map.remove(this);
                        map.remove(enumC2393a);
                        map.remove(interfaceC2408p);
                        return localDateOf.plusDays(jSubtractExact);
                    }
                    C2288b.m639h("Resolve requires IsoChronology");
                }
                return null;
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: K */
            public final C2411s mo874K() {
                return C2411s.m884g(90L, 92L);
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: R */
            public final long mo875R(InterfaceC2404l interfaceC2404l) {
                if (!mo879s(interfaceC2404l)) {
                    throw new C2410r("Unsupported field: DayOfQuarter");
                }
                int iMo666g = interfaceC2404l.mo666g(EnumC2393a.DAY_OF_YEAR);
                int iMo666g2 = interfaceC2404l.mo666g(EnumC2393a.MONTH_OF_YEAR);
                long jMo556k = interfaceC2404l.mo556k(EnumC2393a.YEAR);
                int i = (iMo666g2 - 1) / 3;
                C2343r.f701c.getClass();
                return iMo666g - EnumC2399g.f834a[i + (C2343r.m803Y(jMo556k) ? 4 : 0)];
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: X */
            public final Temporal mo876X(Temporal temporal, long j) {
                long jMo875R = mo875R(temporal);
                mo874K().m886b(j, this);
                EnumC2393a enumC2393a = EnumC2393a.DAY_OF_YEAR;
                return temporal.mo676a((j - jMo875R) + temporal.mo556k(enumC2393a), enumC2393a);
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: s */
            public final boolean mo879s(InterfaceC2404l interfaceC2404l) {
                if (!interfaceC2404l.mo555i(EnumC2393a.DAY_OF_YEAR) || !interfaceC2404l.mo555i(EnumC2393a.MONTH_OF_YEAR) || !interfaceC2404l.mo555i(EnumC2393a.YEAR)) {
                    return false;
                }
                EnumC2399g enumC2399g2 = AbstractC2401i.f839a;
                return InterfaceC2336k.m795r(interfaceC2404l).equals(C2343r.f701c);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }
        };
        DAY_OF_QUARTER = enumC2399g;
        EnumC2399g enumC2399g2 = new EnumC2399g() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: D */
            public final C2411s mo873D(InterfaceC2404l interfaceC2404l) {
                if (mo879s(interfaceC2404l)) {
                    return mo874K();
                }
                throw new C2410r("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: K */
            public final C2411s mo874K() {
                return C2411s.m883f(1L, 4L);
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: R */
            public final long mo875R(InterfaceC2404l interfaceC2404l) {
                if (mo879s(interfaceC2404l)) {
                    return (interfaceC2404l.mo556k(EnumC2393a.MONTH_OF_YEAR) + 2) / 3;
                }
                throw new C2410r("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: X */
            public final Temporal mo876X(Temporal temporal, long j) {
                long jMo875R = mo875R(temporal);
                mo874K().m886b(j, this);
                EnumC2393a enumC2393a = EnumC2393a.MONTH_OF_YEAR;
                return temporal.mo676a(((j - jMo875R) * 3) + temporal.mo556k(enumC2393a), enumC2393a);
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: s */
            public final boolean mo879s(InterfaceC2404l interfaceC2404l) {
                if (!interfaceC2404l.mo555i(EnumC2393a.MONTH_OF_YEAR)) {
                    return false;
                }
                EnumC2399g enumC2399g3 = AbstractC2401i.f839a;
                return InterfaceC2336k.m795r(interfaceC2404l).equals(C2343r.f701c);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }
        };
        QUARTER_OF_YEAR = enumC2399g2;
        EnumC2399g enumC2399g3 = new EnumC2399g() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: D */
            public final C2411s mo873D(InterfaceC2404l interfaceC2404l) {
                if (mo879s(interfaceC2404l)) {
                    return EnumC2399g.b0(LocalDate.m682I(interfaceC2404l));
                }
                throw new C2410r("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: I */
            public final InterfaceC2404l mo880I(Map map, C2379y c2379y, EnumC2380z enumC2380z) {
                LocalDate localDateMo676a;
                long j;
                InterfaceC2408p interfaceC2408p = EnumC2399g.WEEK_BASED_YEAR;
                Long l = (Long) map.get(interfaceC2408p);
                EnumC2393a enumC2393a = EnumC2393a.DAY_OF_WEEK;
                Long l2 = (Long) map.get(enumC2393a);
                if (l != null && l2 != null) {
                    int iM885a = interfaceC2408p.mo874K().m885a(l.longValue(), interfaceC2408p);
                    long jLongValue = ((Long) map.get(EnumC2399g.WEEK_OF_WEEK_BASED_YEAR)).longValue();
                    EnumC2399g enumC2399g4 = AbstractC2401i.f839a;
                    if (InterfaceC2336k.m795r(c2379y).equals(C2343r.f701c)) {
                        LocalDate localDateOf = LocalDate.of(iM885a, 1, 4);
                        if (enumC2380z == EnumC2380z.LENIENT) {
                            long jLongValue2 = l2.longValue();
                            if (jLongValue2 > 7) {
                                long j2 = jLongValue2 - 1;
                                localDateOf = localDateOf.i0(j2 / 7);
                                j = j2 % 7;
                            } else {
                                if (jLongValue2 < 1) {
                                    localDateOf = localDateOf.i0(Math.subtractExact(jLongValue2, 7L) / 7);
                                    j = (jLongValue2 + 6) % 7;
                                }
                                localDateMo676a = localDateOf.i0(Math.subtractExact(jLongValue, 1L)).mo676a(jLongValue2, enumC2393a);
                            }
                            jLongValue2 = j + 1;
                            localDateMo676a = localDateOf.i0(Math.subtractExact(jLongValue, 1L)).mo676a(jLongValue2, enumC2393a);
                        } else {
                            int iM885a2 = enumC2393a.f832b.m885a(l2.longValue(), enumC2393a);
                            if (jLongValue < 1 || jLongValue > 52) {
                                if (enumC2380z == EnumC2380z.STRICT) {
                                    EnumC2399g.b0(localDateOf).m886b(jLongValue, this);
                                } else {
                                    mo874K().m886b(jLongValue, this);
                                }
                            }
                            localDateMo676a = localDateOf.i0(jLongValue - 1).mo676a(iM885a2, enumC2393a);
                        }
                        map.remove(this);
                        map.remove(interfaceC2408p);
                        map.remove(enumC2393a);
                        return localDateMo676a;
                    }
                    C2288b.m639h("Resolve requires IsoChronology");
                }
                return null;
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: K */
            public final C2411s mo874K() {
                return C2411s.m884g(52L, 53L);
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: R */
            public final long mo875R(InterfaceC2404l interfaceC2404l) {
                if (mo879s(interfaceC2404l)) {
                    return EnumC2399g.m881Y(LocalDate.m682I(interfaceC2404l));
                }
                throw new C2410r("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: X */
            public final Temporal mo876X(Temporal temporal, long j) {
                mo874K().m886b(j, this);
                return temporal.mo677b(Math.subtractExact(j, mo875R(temporal)), ChronoUnit.WEEKS);
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: s */
            public final boolean mo879s(InterfaceC2404l interfaceC2404l) {
                if (!interfaceC2404l.mo555i(EnumC2393a.EPOCH_DAY)) {
                    return false;
                }
                EnumC2399g enumC2399g4 = AbstractC2401i.f839a;
                return InterfaceC2336k.m795r(interfaceC2404l).equals(C2343r.f701c);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = enumC2399g3;
        EnumC2399g enumC2399g4 = new EnumC2399g() { // from class: j$.time.temporal.f
            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: D */
            public final C2411s mo873D(InterfaceC2404l interfaceC2404l) {
                if (mo879s(interfaceC2404l)) {
                    return EnumC2393a.YEAR.f832b;
                }
                throw new C2410r("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: K */
            public final C2411s mo874K() {
                return EnumC2393a.YEAR.f832b;
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: R */
            public final long mo875R(InterfaceC2404l interfaceC2404l) {
                if (mo879s(interfaceC2404l)) {
                    return EnumC2399g.m882Z(LocalDate.m682I(interfaceC2404l));
                }
                throw new C2410r("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: X */
            public final Temporal mo876X(Temporal temporal, long j) {
                if (!mo879s(temporal)) {
                    throw new C2410r("Unsupported field: WeekBasedYear");
                }
                int iM885a = EnumC2393a.YEAR.f832b.m885a(j, EnumC2399g.WEEK_BASED_YEAR);
                LocalDate localDateM682I = LocalDate.m682I(temporal);
                int iMo666g = localDateM682I.mo666g(EnumC2393a.DAY_OF_WEEK);
                int iM881Y = EnumC2399g.m881Y(localDateM682I);
                if (iM881Y == 53 && EnumC2399g.a0(iM885a) == 52) {
                    iM881Y = 52;
                }
                return temporal.mo750j(LocalDate.of(iM885a, 1, 4).plusDays(((iM881Y - 1) * 7) + (iMo666g - r3.mo666g(r6))));
            }

            @Override // j$.time.temporal.InterfaceC2408p
            /* JADX INFO: renamed from: s */
            public final boolean mo879s(InterfaceC2404l interfaceC2404l) {
                if (!interfaceC2404l.mo555i(EnumC2393a.EPOCH_DAY)) {
                    return false;
                }
                EnumC2399g enumC2399g5 = AbstractC2401i.f839a;
                return InterfaceC2336k.m795r(interfaceC2404l).equals(C2343r.f701c);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }
        };
        WEEK_BASED_YEAR = enumC2399g4;
        f835b = new EnumC2399g[]{enumC2399g, enumC2399g2, enumC2399g3, enumC2399g4};
        f834a = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
    }

    /* JADX INFO: renamed from: Y */
    public static int m881Y(LocalDate localDate) {
        int iOrdinal = localDate.m686R().ordinal();
        int iM689X = localDate.m689X() - 1;
        int i = (3 - iOrdinal) + iM689X;
        int i2 = i - ((i / 7) * 7);
        int i3 = i2 - 3;
        if (i3 < -3) {
            i3 = i2 + 4;
        }
        if (iM689X < i3) {
            if (localDate.m689X() != 180) {
                localDate = LocalDate.f0(localDate.f612a, 180);
            }
            return (int) b0(localDate.j0(-1L)).f859d;
        }
        int i4 = ((iM689X - i3) / 7) + 1;
        if (i4 != 53 || i3 == -3 || (i3 == -2 && localDate.a0())) {
            return i4;
        }
        return 1;
    }

    /* JADX INFO: renamed from: Z */
    public static int m882Z(LocalDate localDate) {
        int year = localDate.getYear();
        int iM689X = localDate.m689X();
        if (iM689X <= 3) {
            return iM689X - localDate.m686R().ordinal() < -2 ? year - 1 : year;
        }
        if (iM689X >= 363) {
            return ((iM689X - 363) - (localDate.a0() ? 1 : 0)) - localDate.m686R().ordinal() >= 0 ? year + 1 : year;
        }
        return year;
    }

    public static int a0(int i) {
        LocalDate localDateOf = LocalDate.of(i, 1, 1);
        if (localDateOf.m686R() != DayOfWeek.THURSDAY) {
            return (localDateOf.m686R() == DayOfWeek.WEDNESDAY && localDateOf.a0()) ? 53 : 52;
        }
        return 53;
    }

    public static C2411s b0(LocalDate localDate) {
        return C2411s.m883f(1L, a0(m882Z(localDate)));
    }

    public static EnumC2399g valueOf(String str) {
        return (EnumC2399g) Enum.valueOf(EnumC2399g.class, str);
    }

    public static EnumC2399g[] values() {
        return (EnumC2399g[]) f835b.clone();
    }

    @Override // j$.time.temporal.InterfaceC2408p
    public final boolean isDateBased() {
        return true;
    }
}
