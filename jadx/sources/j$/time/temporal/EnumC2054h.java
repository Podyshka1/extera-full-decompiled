package j$.time.temporal;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.DayOfWeek;
import j$.time.LocalDate;
import j$.time.chrono.C1997r;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.temporal.h */
/* JADX INFO: loaded from: classes2.dex */
public abstract class EnumC2054h implements InterfaceC2063q {
    public static final EnumC2054h DAY_OF_QUARTER;
    public static final EnumC2054h QUARTER_OF_YEAR;
    public static final EnumC2054h WEEK_BASED_YEAR;
    public static final EnumC2054h WEEK_OF_WEEK_BASED_YEAR;

    /* JADX INFO: renamed from: a */
    public static final int[] f596a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ EnumC2054h[] f597b;

    @Override // j$.time.temporal.InterfaceC2063q
    public final boolean isDateBased() {
        return true;
    }

    public static EnumC2054h valueOf(String str) {
        return (EnumC2054h) Enum.valueOf(EnumC2054h.class, str);
    }

    public static EnumC2054h[] values() {
        return (EnumC2054h[]) f597b.clone();
    }

    static {
        EnumC2054h enumC2054h = new EnumC2054h() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: j */
            public final C2067u mo646j() {
                return C2067u.m660f(90L, 92L);
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: h */
            public final boolean mo644h(InterfaceC2060n interfaceC2060n) {
                if (!interfaceC2060n.mo455e(EnumC2047a.DAY_OF_YEAR) || !interfaceC2060n.mo455e(EnumC2047a.MONTH_OF_YEAR) || !interfaceC2060n.mo455e(EnumC2047a.YEAR)) {
                    return false;
                }
                EnumC2054h enumC2054h2 = AbstractC2056j.f600a;
                return AbstractC1965a.m408N(interfaceC2060n).equals(C1997r.f480c);
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: i */
            public final C2067u mo645i(InterfaceC2060n interfaceC2060n) {
                if (!mo644h(interfaceC2060n)) {
                    throw new C2066t("Unsupported field: DayOfQuarter");
                }
                long jMo460w = interfaceC2060n.mo460w(EnumC2054h.QUARTER_OF_YEAR);
                if (jMo460w == 1) {
                    long jMo460w2 = interfaceC2060n.mo460w(EnumC2047a.YEAR);
                    C1997r.f480c.getClass();
                    return C1997r.m583i(jMo460w2) ? C2067u.m659e(1L, 91L) : C2067u.m659e(1L, 90L);
                }
                if (jMo460w == 2) {
                    return C2067u.m659e(1L, 91L);
                }
                if (jMo460w == 3 || jMo460w == 4) {
                    return C2067u.m659e(1L, 92L);
                }
                return mo646j();
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: k */
            public final long mo647k(InterfaceC2060n interfaceC2060n) {
                if (!mo644h(interfaceC2060n)) {
                    throw new C2066t("Unsupported field: DayOfQuarter");
                }
                int iMo456h = interfaceC2060n.mo456h(EnumC2047a.DAY_OF_YEAR);
                int iMo456h2 = interfaceC2060n.mo456h(EnumC2047a.MONTH_OF_YEAR);
                long jMo460w = interfaceC2060n.mo460w(EnumC2047a.YEAR);
                int i = (iMo456h2 - 1) / 3;
                C1997r.f480c.getClass();
                return iMo456h - EnumC2054h.f596a[i + (C1997r.m583i(jMo460w) ? 4 : 0)];
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: n */
            public final InterfaceC2059m mo648n(InterfaceC2059m interfaceC2059m, long j) {
                long jMo647k = mo647k(interfaceC2059m);
                mo646j().m662b(j, this);
                EnumC2047a enumC2047a = EnumC2047a.DAY_OF_YEAR;
                return interfaceC2059m.mo468c((j - jMo647k) + interfaceC2059m.mo460w(enumC2047a), enumC2047a);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }
        };
        DAY_OF_QUARTER = enumC2054h;
        EnumC2054h enumC2054h2 = new EnumC2054h() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: j */
            public final C2067u mo646j() {
                return C2067u.m659e(1L, 4L);
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: h */
            public final boolean mo644h(InterfaceC2060n interfaceC2060n) {
                if (!interfaceC2060n.mo455e(EnumC2047a.MONTH_OF_YEAR)) {
                    return false;
                }
                EnumC2054h enumC2054h3 = AbstractC2056j.f600a;
                return AbstractC1965a.m408N(interfaceC2060n).equals(C1997r.f480c);
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: k */
            public final long mo647k(InterfaceC2060n interfaceC2060n) {
                if (!mo644h(interfaceC2060n)) {
                    throw new C2066t("Unsupported field: QuarterOfYear");
                }
                return (interfaceC2060n.mo460w(EnumC2047a.MONTH_OF_YEAR) + 2) / 3;
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: i */
            public final C2067u mo645i(InterfaceC2060n interfaceC2060n) {
                if (!mo644h(interfaceC2060n)) {
                    throw new C2066t("Unsupported field: QuarterOfYear");
                }
                return mo646j();
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: n */
            public final InterfaceC2059m mo648n(InterfaceC2059m interfaceC2059m, long j) {
                long jMo647k = mo647k(interfaceC2059m);
                mo646j().m662b(j, this);
                EnumC2047a enumC2047a = EnumC2047a.MONTH_OF_YEAR;
                return interfaceC2059m.mo468c(((j - jMo647k) * 3) + interfaceC2059m.mo460w(enumC2047a), enumC2047a);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }
        };
        QUARTER_OF_YEAR = enumC2054h2;
        EnumC2054h enumC2054h3 = new EnumC2054h() { // from class: j$.time.temporal.f
            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: j */
            public final C2067u mo646j() {
                return C2067u.m660f(52L, 53L);
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: h */
            public final boolean mo644h(InterfaceC2060n interfaceC2060n) {
                if (!interfaceC2060n.mo455e(EnumC2047a.EPOCH_DAY)) {
                    return false;
                }
                EnumC2054h enumC2054h4 = AbstractC2056j.f600a;
                return AbstractC1965a.m408N(interfaceC2060n).equals(C1997r.f480c);
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: i */
            public final C2067u mo645i(InterfaceC2060n interfaceC2060n) {
                if (!mo644h(interfaceC2060n)) {
                    throw new C2066t("Unsupported field: WeekOfWeekBasedYear");
                }
                return C2067u.m659e(1L, EnumC2054h.m654w(EnumC2054h.m653v(LocalDate.m473D(interfaceC2060n))));
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: k */
            public final long mo647k(InterfaceC2060n interfaceC2060n) {
                if (!mo644h(interfaceC2060n)) {
                    throw new C2066t("Unsupported field: WeekOfWeekBasedYear");
                }
                return EnumC2054h.m652r(LocalDate.m473D(interfaceC2060n));
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: n */
            public final InterfaceC2059m mo648n(InterfaceC2059m interfaceC2059m, long j) {
                mo646j().m662b(j, this);
                return interfaceC2059m.mo469d(AbstractC1965a.m415U(j, mo647k(interfaceC2059m)), EnumC2048b.WEEKS);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = enumC2054h3;
        EnumC2054h enumC2054h4 = new EnumC2054h() { // from class: j$.time.temporal.g
            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: j */
            public final C2067u mo646j() {
                return EnumC2047a.YEAR.f592b;
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: h */
            public final boolean mo644h(InterfaceC2060n interfaceC2060n) {
                if (!interfaceC2060n.mo455e(EnumC2047a.EPOCH_DAY)) {
                    return false;
                }
                EnumC2054h enumC2054h5 = AbstractC2056j.f600a;
                return AbstractC1965a.m408N(interfaceC2060n).equals(C1997r.f480c);
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: k */
            public final long mo647k(InterfaceC2060n interfaceC2060n) {
                if (mo644h(interfaceC2060n)) {
                    return EnumC2054h.m653v(LocalDate.m473D(interfaceC2060n));
                }
                throw new C2066t("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: i */
            public final C2067u mo645i(InterfaceC2060n interfaceC2060n) {
                if (!mo644h(interfaceC2060n)) {
                    throw new C2066t("Unsupported field: WeekBasedYear");
                }
                return mo646j();
            }

            @Override // j$.time.temporal.InterfaceC2063q
            /* JADX INFO: renamed from: n */
            public final InterfaceC2059m mo648n(InterfaceC2059m interfaceC2059m, long j) {
                if (!mo644h(interfaceC2059m)) {
                    throw new C2066t("Unsupported field: WeekBasedYear");
                }
                int iM661a = EnumC2047a.YEAR.f592b.m661a(j, EnumC2054h.WEEK_BASED_YEAR);
                LocalDate localDateM473D = LocalDate.m473D(interfaceC2059m);
                int iMo456h = localDateM473D.mo456h(EnumC2047a.DAY_OF_WEEK);
                int iM652r = EnumC2054h.m652r(localDateM473D);
                if (iM652r == 53 && EnumC2054h.m654w(iM661a) == 52) {
                    iM652r = 52;
                }
                return interfaceC2059m.mo470i(LocalDate.of(iM661a, 1, 4).plusDays(((iM652r - 1) * 7) + (iMo456h - r6.mo456h(r0))));
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }
        };
        WEEK_BASED_YEAR = enumC2054h4;
        f597b = new EnumC2054h[]{enumC2054h, enumC2054h2, enumC2054h3, enumC2054h4};
        f596a = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
    }

    /* JADX INFO: renamed from: w */
    public static int m654w(int i) {
        LocalDate localDateOf = LocalDate.of(i, 1, 1);
        if (localDateOf.m478F() != DayOfWeek.THURSDAY) {
            return (localDateOf.m478F() == DayOfWeek.WEDNESDAY && localDateOf.m481I()) ? 53 : 52;
        }
        return 53;
    }

    /* JADX INFO: renamed from: r */
    public static int m652r(LocalDate localDate) {
        int iOrdinal = localDate.m478F().ordinal();
        int iM479G = localDate.m479G() - 1;
        int i = (3 - iOrdinal) + iM479G;
        int i2 = i - ((i / 7) * 7);
        int i3 = i2 - 3;
        if (i3 < -3) {
            i3 = i2 + 4;
        }
        if (iM479G < i3) {
            return (int) C2067u.m659e(1L, m654w(m653v(localDate.m487Q(180).m485N(-1L)))).f620d;
        }
        int i4 = ((iM479G - i3) / 7) + 1;
        if (i4 != 53 || i3 == -3 || (i3 == -2 && localDate.m481I())) {
            return i4;
        }
        return 1;
    }

    /* JADX INFO: renamed from: v */
    public static int m653v(LocalDate localDate) {
        int year = localDate.getYear();
        int iM479G = localDate.m479G();
        if (iM479G <= 3) {
            return iM479G - localDate.m478F().ordinal() < -2 ? year - 1 : year;
        }
        if (iM479G >= 363) {
            return ((iM479G - 363) - (localDate.m481I() ? 1 : 0)) - localDate.m478F().ordinal() >= 0 ? year + 1 : year;
        }
        return year;
    }
}
