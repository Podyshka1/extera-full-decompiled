package j$.time.temporal;

import j$.time.C2159g;
import j$.time.DayOfWeek;
import j$.time.LocalDate;
import j$.time.chrono.C2121r;
import j$.time.chrono.InterfaceC2114k;
import j$.time.format.C2157y;
import j$.time.format.EnumC2158z;
import java.util.Map;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.temporal.g */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class EnumC2179g implements InterfaceC2188p {
    public static final EnumC2179g DAY_OF_QUARTER;
    public static final EnumC2179g QUARTER_OF_YEAR;
    public static final EnumC2179g WEEK_BASED_YEAR;
    public static final EnumC2179g WEEK_OF_WEEK_BASED_YEAR;

    /* JADX INFO: renamed from: a */
    public static final int[] f683a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ EnumC2179g[] f684b;

    static {
        EnumC2179g enumC2179g = new EnumC2179g() { // from class: j$.time.temporal.c
            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: B */
            public final C2192t mo715B(InterfaceC2184l interfaceC2184l) {
                if (!mo721t(interfaceC2184l)) {
                    throw new C2191s("Unsupported field: DayOfQuarter");
                }
                long jMo486k = interfaceC2184l.mo486k(EnumC2179g.QUARTER_OF_YEAR);
                if (jMo486k != 1) {
                    return jMo486k == 2 ? C2192t.m726f(1L, 91L) : (jMo486k == 3 || jMo486k == 4) ? C2192t.m726f(1L, 92L) : mo716I();
                }
                long jMo486k2 = interfaceC2184l.mo486k(EnumC2173a.YEAR);
                C2121r.f543c.getClass();
                return C2121r.m621X(jMo486k2) ? C2192t.m726f(1L, 91L) : C2192t.m726f(1L, 90L);
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: G */
            public final InterfaceC2184l mo722G(Map map, C2157y c2157y, EnumC2158z enumC2158z) {
                LocalDate localDateOf;
                long jSubtractExact;
                EnumC2173a enumC2173a = EnumC2173a.YEAR;
                Long l = (Long) map.get(enumC2173a);
                InterfaceC2188p interfaceC2188p = EnumC2179g.QUARTER_OF_YEAR;
                Long l2 = (Long) map.get(interfaceC2188p);
                if (l != null && l2 != null) {
                    int iM728a = enumC2173a.f681b.m728a(l.longValue(), enumC2173a);
                    long jLongValue = ((Long) map.get(EnumC2179g.DAY_OF_QUARTER)).longValue();
                    EnumC2179g enumC2179g2 = AbstractC2181i.f687a;
                    if (InterfaceC2114k.m611s(c2157y).equals(C2121r.f543c)) {
                        if (enumC2158z == EnumC2158z.LENIENT) {
                            localDateOf = LocalDate.of(iM728a, 1, 1).g0(Math.multiplyExact(Math.subtractExact(l2.longValue(), 1L), 3L));
                            jSubtractExact = Math.subtractExact(jLongValue, 1L);
                        } else {
                            localDateOf = LocalDate.of(iM728a, ((interfaceC2188p.mo716I().m728a(l2.longValue(), interfaceC2188p) - 1) * 3) + 1, 1);
                            if (jLongValue < 1 || jLongValue > 90) {
                                if (enumC2158z == EnumC2158z.STRICT) {
                                    mo715B(localDateOf).m729b(jLongValue, this);
                                } else {
                                    mo716I().m729b(jLongValue, this);
                                }
                            }
                            jSubtractExact = jLongValue - 1;
                        }
                        map.remove(this);
                        map.remove(enumC2173a);
                        map.remove(interfaceC2188p);
                        return localDateOf.plusDays(jSubtractExact);
                    }
                    C2159g.m684a("Resolve requires IsoChronology");
                }
                return null;
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: I */
            public final C2192t mo716I() {
                return C2192t.m727g(90L, 92L);
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: P */
            public final long mo717P(InterfaceC2184l interfaceC2184l) {
                if (!mo721t(interfaceC2184l)) {
                    throw new C2191s("Unsupported field: DayOfQuarter");
                }
                int iMo484g = interfaceC2184l.mo484g(EnumC2173a.DAY_OF_YEAR);
                int iMo484g2 = interfaceC2184l.mo484g(EnumC2173a.MONTH_OF_YEAR);
                long jMo486k = interfaceC2184l.mo486k(EnumC2173a.YEAR);
                int i = (iMo484g2 - 1) / 3;
                C2121r.f543c.getClass();
                return iMo484g - EnumC2179g.f683a[i + (C2121r.m621X(jMo486k) ? 4 : 0)];
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: V */
            public final Temporal mo718V(Temporal temporal, long j) {
                long jMo717P = mo717P(temporal);
                mo716I().m729b(j, this);
                EnumC2173a enumC2173a = EnumC2173a.DAY_OF_YEAR;
                return temporal.mo496a((j - jMo717P) + temporal.mo486k(enumC2173a), enumC2173a);
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: t */
            public final boolean mo721t(InterfaceC2184l interfaceC2184l) {
                if (!interfaceC2184l.mo485i(EnumC2173a.DAY_OF_YEAR) || !interfaceC2184l.mo485i(EnumC2173a.MONTH_OF_YEAR) || !interfaceC2184l.mo485i(EnumC2173a.YEAR)) {
                    return false;
                }
                EnumC2179g enumC2179g2 = AbstractC2181i.f687a;
                return InterfaceC2114k.m611s(interfaceC2184l).equals(C2121r.f543c);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }
        };
        DAY_OF_QUARTER = enumC2179g;
        EnumC2179g enumC2179g2 = new EnumC2179g() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: B */
            public final C2192t mo715B(InterfaceC2184l interfaceC2184l) {
                if (mo721t(interfaceC2184l)) {
                    return mo716I();
                }
                throw new C2191s("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: I */
            public final C2192t mo716I() {
                return C2192t.m726f(1L, 4L);
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: P */
            public final long mo717P(InterfaceC2184l interfaceC2184l) {
                if (mo721t(interfaceC2184l)) {
                    return (interfaceC2184l.mo486k(EnumC2173a.MONTH_OF_YEAR) + 2) / 3;
                }
                throw new C2191s("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: V */
            public final Temporal mo718V(Temporal temporal, long j) {
                long jMo717P = mo717P(temporal);
                mo716I().m729b(j, this);
                EnumC2173a enumC2173a = EnumC2173a.MONTH_OF_YEAR;
                return temporal.mo496a(((j - jMo717P) * 3) + temporal.mo486k(enumC2173a), enumC2173a);
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: t */
            public final boolean mo721t(InterfaceC2184l interfaceC2184l) {
                if (!interfaceC2184l.mo485i(EnumC2173a.MONTH_OF_YEAR)) {
                    return false;
                }
                EnumC2179g enumC2179g3 = AbstractC2181i.f687a;
                return InterfaceC2114k.m611s(interfaceC2184l).equals(C2121r.f543c);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }
        };
        QUARTER_OF_YEAR = enumC2179g2;
        EnumC2179g enumC2179g3 = new EnumC2179g() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: B */
            public final C2192t mo715B(InterfaceC2184l interfaceC2184l) {
                if (mo721t(interfaceC2184l)) {
                    return EnumC2179g.a0(LocalDate.m502G(interfaceC2184l));
                }
                throw new C2191s("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: G */
            public final InterfaceC2184l mo722G(Map map, C2157y c2157y, EnumC2158z enumC2158z) {
                LocalDate localDateMo496a;
                long j;
                InterfaceC2188p interfaceC2188p = EnumC2179g.WEEK_BASED_YEAR;
                Long l = (Long) map.get(interfaceC2188p);
                EnumC2173a enumC2173a = EnumC2173a.DAY_OF_WEEK;
                Long l2 = (Long) map.get(enumC2173a);
                if (l != null && l2 != null) {
                    int iM728a = interfaceC2188p.mo716I().m728a(l.longValue(), interfaceC2188p);
                    long jLongValue = ((Long) map.get(EnumC2179g.WEEK_OF_WEEK_BASED_YEAR)).longValue();
                    EnumC2179g enumC2179g4 = AbstractC2181i.f687a;
                    if (InterfaceC2114k.m611s(c2157y).equals(C2121r.f543c)) {
                        LocalDate localDateOf = LocalDate.of(iM728a, 1, 4);
                        if (enumC2158z == EnumC2158z.LENIENT) {
                            long jLongValue2 = l2.longValue();
                            if (jLongValue2 > 7) {
                                long j2 = jLongValue2 - 1;
                                localDateOf = localDateOf.h0(j2 / 7);
                                j = j2 % 7;
                            } else {
                                if (jLongValue2 < 1) {
                                    localDateOf = localDateOf.h0(Math.subtractExact(jLongValue2, 7L) / 7);
                                    j = (jLongValue2 + 6) % 7;
                                }
                                localDateMo496a = localDateOf.h0(Math.subtractExact(jLongValue, 1L)).mo496a(jLongValue2, enumC2173a);
                            }
                            jLongValue2 = j + 1;
                            localDateMo496a = localDateOf.h0(Math.subtractExact(jLongValue, 1L)).mo496a(jLongValue2, enumC2173a);
                        } else {
                            int iM728a2 = enumC2173a.f681b.m728a(l2.longValue(), enumC2173a);
                            if (jLongValue < 1 || jLongValue > 52) {
                                if (enumC2158z == EnumC2158z.STRICT) {
                                    EnumC2179g.a0(localDateOf).m729b(jLongValue, this);
                                } else {
                                    mo716I().m729b(jLongValue, this);
                                }
                            }
                            localDateMo496a = localDateOf.h0(jLongValue - 1).mo496a(iM728a2, enumC2173a);
                        }
                        map.remove(this);
                        map.remove(interfaceC2188p);
                        map.remove(enumC2173a);
                        return localDateMo496a;
                    }
                    C2159g.m684a("Resolve requires IsoChronology");
                }
                return null;
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: I */
            public final C2192t mo716I() {
                return C2192t.m727g(52L, 53L);
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: P */
            public final long mo717P(InterfaceC2184l interfaceC2184l) {
                if (mo721t(interfaceC2184l)) {
                    return EnumC2179g.m723X(LocalDate.m502G(interfaceC2184l));
                }
                throw new C2191s("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: V */
            public final Temporal mo718V(Temporal temporal, long j) {
                mo716I().m729b(j, this);
                return temporal.mo497b(Math.subtractExact(j, mo717P(temporal)), ChronoUnit.WEEKS);
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: t */
            public final boolean mo721t(InterfaceC2184l interfaceC2184l) {
                if (!interfaceC2184l.mo485i(EnumC2173a.EPOCH_DAY)) {
                    return false;
                }
                EnumC2179g enumC2179g4 = AbstractC2181i.f687a;
                return InterfaceC2114k.m611s(interfaceC2184l).equals(C2121r.f543c);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = enumC2179g3;
        EnumC2179g enumC2179g4 = new EnumC2179g() { // from class: j$.time.temporal.f
            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: B */
            public final C2192t mo715B(InterfaceC2184l interfaceC2184l) {
                if (mo721t(interfaceC2184l)) {
                    return EnumC2173a.YEAR.f681b;
                }
                throw new C2191s("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: I */
            public final C2192t mo716I() {
                return EnumC2173a.YEAR.f681b;
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: P */
            public final long mo717P(InterfaceC2184l interfaceC2184l) {
                if (mo721t(interfaceC2184l)) {
                    return EnumC2179g.m724Y(LocalDate.m502G(interfaceC2184l));
                }
                throw new C2191s("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: V */
            public final Temporal mo718V(Temporal temporal, long j) {
                if (!mo721t(temporal)) {
                    throw new C2191s("Unsupported field: WeekBasedYear");
                }
                int iM728a = EnumC2173a.YEAR.f681b.m728a(j, EnumC2179g.WEEK_BASED_YEAR);
                LocalDate localDateM502G = LocalDate.m502G(temporal);
                int iMo484g = localDateM502G.mo484g(EnumC2173a.DAY_OF_WEEK);
                int iM723X = EnumC2179g.m723X(localDateM502G);
                if (iM723X == 53 && EnumC2179g.m725Z(iM728a) == 52) {
                    iM723X = 52;
                }
                return temporal.mo515j(LocalDate.of(iM728a, 1, 4).plusDays(((iM723X - 1) * 7) + (iMo484g - r3.mo484g(r6))));
            }

            @Override // j$.time.temporal.InterfaceC2188p
            /* JADX INFO: renamed from: t */
            public final boolean mo721t(InterfaceC2184l interfaceC2184l) {
                if (!interfaceC2184l.mo485i(EnumC2173a.EPOCH_DAY)) {
                    return false;
                }
                EnumC2179g enumC2179g5 = AbstractC2181i.f687a;
                return InterfaceC2114k.m611s(interfaceC2184l).equals(C2121r.f543c);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }
        };
        WEEK_BASED_YEAR = enumC2179g4;
        f684b = new EnumC2179g[]{enumC2179g, enumC2179g2, enumC2179g3, enumC2179g4};
        f683a = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
    }

    /* JADX INFO: renamed from: X */
    public static int m723X(LocalDate localDate) {
        int iOrdinal = localDate.m507P().ordinal();
        int iM510V = localDate.m510V() - 1;
        int i = (3 - iOrdinal) + iM510V;
        int i2 = i - ((i / 7) * 7);
        int i3 = i2 - 3;
        if (i3 < -3) {
            i3 = i2 + 4;
        }
        if (iM510V < i3) {
            if (localDate.m510V() != 180) {
                localDate = LocalDate.e0(localDate.f471a, 180);
            }
            return (int) a0(localDate.i0(-1L)).f707d;
        }
        int i4 = ((iM510V - i3) / 7) + 1;
        if (i4 != 53 || i3 == -3 || (i3 == -2 && localDate.m513Z())) {
            return i4;
        }
        return 1;
    }

    /* JADX INFO: renamed from: Y */
    public static int m724Y(LocalDate localDate) {
        int year = localDate.getYear();
        int iM510V = localDate.m510V();
        if (iM510V <= 3) {
            return iM510V - localDate.m507P().ordinal() < -2 ? year - 1 : year;
        }
        if (iM510V >= 363) {
            return ((iM510V - 363) - (localDate.m513Z() ? 1 : 0)) - localDate.m507P().ordinal() >= 0 ? year + 1 : year;
        }
        return year;
    }

    /* JADX INFO: renamed from: Z */
    public static int m725Z(int i) {
        LocalDate localDateOf = LocalDate.of(i, 1, 1);
        if (localDateOf.m507P() != DayOfWeek.THURSDAY) {
            return (localDateOf.m507P() == DayOfWeek.WEDNESDAY && localDateOf.m513Z()) ? 53 : 52;
        }
        return 53;
    }

    public static C2192t a0(LocalDate localDate) {
        return C2192t.m726f(1L, m725Z(m724Y(localDate)));
    }

    public static EnumC2179g valueOf(String str) {
        return (EnumC2179g) Enum.valueOf(EnumC2179g.class, str);
    }

    public static EnumC2179g[] values() {
        return (EnumC2179g[]) f684b.clone();
    }

    @Override // j$.time.temporal.InterfaceC2188p
    public final boolean isDateBased() {
        return true;
    }
}
