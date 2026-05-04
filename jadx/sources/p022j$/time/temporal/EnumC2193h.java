package p022j$.time.temporal;

import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.DayOfWeek;
import p022j$.time.LocalDate;
import p022j$.time.chrono.C2136r;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.temporal.h */
/* JADX INFO: loaded from: classes2.dex */
public abstract class EnumC2193h implements InterfaceC2202q {
    public static final EnumC2193h DAY_OF_QUARTER;
    public static final EnumC2193h QUARTER_OF_YEAR;
    public static final EnumC2193h WEEK_BASED_YEAR;
    public static final EnumC2193h WEEK_OF_WEEK_BASED_YEAR;

    /* JADX INFO: renamed from: a */
    public static final int[] f831a;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ EnumC2193h[] f832b;

    @Override // p022j$.time.temporal.InterfaceC2202q
    public final boolean isDateBased() {
        return true;
    }

    public static EnumC2193h valueOf(String str) {
        return (EnumC2193h) Enum.valueOf(EnumC2193h.class, str);
    }

    public static EnumC2193h[] values() {
        return (EnumC2193h[]) f832b.clone();
    }

    static {
        EnumC2193h enumC2193h = new EnumC2193h() { // from class: j$.time.temporal.d
            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: j */
            public final C2206u mo771j() {
                return C2206u.m785f(90L, 92L);
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: h */
            public final boolean mo769h(InterfaceC2199n interfaceC2199n) {
                if (!interfaceC2199n.mo575e(EnumC2186a.DAY_OF_YEAR) || !interfaceC2199n.mo575e(EnumC2186a.MONTH_OF_YEAR) || !interfaceC2199n.mo575e(EnumC2186a.YEAR)) {
                    return false;
                }
                EnumC2193h enumC2193h2 = AbstractC2195j.f835a;
                return AbstractC2104a.m528N(interfaceC2199n).equals(C2136r.f714c);
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: i */
            public final C2206u mo770i(InterfaceC2199n interfaceC2199n) {
                if (!mo769h(interfaceC2199n)) {
                    throw new C2205t("Unsupported field: DayOfQuarter");
                }
                long jMo580w = interfaceC2199n.mo580w(EnumC2193h.QUARTER_OF_YEAR);
                if (jMo580w == 1) {
                    long jMo580w2 = interfaceC2199n.mo580w(EnumC2186a.YEAR);
                    C2136r.f714c.getClass();
                    return C2136r.m706i(jMo580w2) ? C2206u.m784e(1L, 91L) : C2206u.m784e(1L, 90L);
                }
                if (jMo580w == 2) {
                    return C2206u.m784e(1L, 91L);
                }
                if (jMo580w == 3 || jMo580w == 4) {
                    return C2206u.m784e(1L, 92L);
                }
                return mo771j();
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: k */
            public final long mo772k(InterfaceC2199n interfaceC2199n) {
                if (!mo769h(interfaceC2199n)) {
                    throw new C2205t("Unsupported field: DayOfQuarter");
                }
                int iMo576h = interfaceC2199n.mo576h(EnumC2186a.DAY_OF_YEAR);
                int iMo576h2 = interfaceC2199n.mo576h(EnumC2186a.MONTH_OF_YEAR);
                long jMo580w = interfaceC2199n.mo580w(EnumC2186a.YEAR);
                int i = (iMo576h2 - 1) / 3;
                C2136r.f714c.getClass();
                return iMo576h - EnumC2193h.f831a[i + (C2136r.m706i(jMo580w) ? 4 : 0)];
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: n */
            public final InterfaceC2198m mo773n(InterfaceC2198m interfaceC2198m, long j) {
                long jMo772k = mo772k(interfaceC2198m);
                mo771j().m787b(j, this);
                EnumC2186a enumC2186a = EnumC2186a.DAY_OF_YEAR;
                return interfaceC2198m.mo588c((j - jMo772k) + interfaceC2198m.mo580w(enumC2186a), enumC2186a);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }
        };
        DAY_OF_QUARTER = enumC2193h;
        EnumC2193h enumC2193h2 = new EnumC2193h() { // from class: j$.time.temporal.e
            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: j */
            public final C2206u mo771j() {
                return C2206u.m784e(1L, 4L);
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: h */
            public final boolean mo769h(InterfaceC2199n interfaceC2199n) {
                if (!interfaceC2199n.mo575e(EnumC2186a.MONTH_OF_YEAR)) {
                    return false;
                }
                EnumC2193h enumC2193h3 = AbstractC2195j.f835a;
                return AbstractC2104a.m528N(interfaceC2199n).equals(C2136r.f714c);
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: k */
            public final long mo772k(InterfaceC2199n interfaceC2199n) {
                if (!mo769h(interfaceC2199n)) {
                    throw new C2205t("Unsupported field: QuarterOfYear");
                }
                return (interfaceC2199n.mo580w(EnumC2186a.MONTH_OF_YEAR) + 2) / 3;
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: i */
            public final C2206u mo770i(InterfaceC2199n interfaceC2199n) {
                if (!mo769h(interfaceC2199n)) {
                    throw new C2205t("Unsupported field: QuarterOfYear");
                }
                return mo771j();
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: n */
            public final InterfaceC2198m mo773n(InterfaceC2198m interfaceC2198m, long j) {
                long jMo772k = mo772k(interfaceC2198m);
                mo771j().m787b(j, this);
                EnumC2186a enumC2186a = EnumC2186a.MONTH_OF_YEAR;
                return interfaceC2198m.mo588c(((j - jMo772k) * 3) + interfaceC2198m.mo580w(enumC2186a), enumC2186a);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }
        };
        QUARTER_OF_YEAR = enumC2193h2;
        EnumC2193h enumC2193h3 = new EnumC2193h() { // from class: j$.time.temporal.f
            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: j */
            public final C2206u mo771j() {
                return C2206u.m785f(52L, 53L);
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: h */
            public final boolean mo769h(InterfaceC2199n interfaceC2199n) {
                if (!interfaceC2199n.mo575e(EnumC2186a.EPOCH_DAY)) {
                    return false;
                }
                EnumC2193h enumC2193h4 = AbstractC2195j.f835a;
                return AbstractC2104a.m528N(interfaceC2199n).equals(C2136r.f714c);
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: i */
            public final C2206u mo770i(InterfaceC2199n interfaceC2199n) {
                if (!mo769h(interfaceC2199n)) {
                    throw new C2205t("Unsupported field: WeekOfWeekBasedYear");
                }
                return C2206u.m784e(1L, EnumC2193h.m779w(EnumC2193h.m778v(LocalDate.m593D(interfaceC2199n))));
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: k */
            public final long mo772k(InterfaceC2199n interfaceC2199n) {
                if (!mo769h(interfaceC2199n)) {
                    throw new C2205t("Unsupported field: WeekOfWeekBasedYear");
                }
                return EnumC2193h.m777r(LocalDate.m593D(interfaceC2199n));
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: n */
            public final InterfaceC2198m mo773n(InterfaceC2198m interfaceC2198m, long j) {
                mo771j().m787b(j, this);
                return interfaceC2198m.mo589d(AbstractC2104a.m535U(j, mo772k(interfaceC2198m)), EnumC2187b.WEEKS);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = enumC2193h3;
        EnumC2193h enumC2193h4 = new EnumC2193h() { // from class: j$.time.temporal.g
            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: j */
            public final C2206u mo771j() {
                return EnumC2186a.YEAR.f827b;
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: h */
            public final boolean mo769h(InterfaceC2199n interfaceC2199n) {
                if (!interfaceC2199n.mo575e(EnumC2186a.EPOCH_DAY)) {
                    return false;
                }
                EnumC2193h enumC2193h5 = AbstractC2195j.f835a;
                return AbstractC2104a.m528N(interfaceC2199n).equals(C2136r.f714c);
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: k */
            public final long mo772k(InterfaceC2199n interfaceC2199n) {
                if (mo769h(interfaceC2199n)) {
                    return EnumC2193h.m778v(LocalDate.m593D(interfaceC2199n));
                }
                throw new C2205t("Unsupported field: WeekBasedYear");
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: i */
            public final C2206u mo770i(InterfaceC2199n interfaceC2199n) {
                if (!mo769h(interfaceC2199n)) {
                    throw new C2205t("Unsupported field: WeekBasedYear");
                }
                return mo771j();
            }

            @Override // p022j$.time.temporal.InterfaceC2202q
            /* JADX INFO: renamed from: n */
            public final InterfaceC2198m mo773n(InterfaceC2198m interfaceC2198m, long j) {
                if (!mo769h(interfaceC2198m)) {
                    throw new C2205t("Unsupported field: WeekBasedYear");
                }
                int iM786a = EnumC2186a.YEAR.f827b.m786a(j, EnumC2193h.WEEK_BASED_YEAR);
                LocalDate localDateM593D = LocalDate.m593D(interfaceC2198m);
                int iMo576h = localDateM593D.mo576h(EnumC2186a.DAY_OF_WEEK);
                int iM777r = EnumC2193h.m777r(localDateM593D);
                if (iM777r == 53 && EnumC2193h.m779w(iM786a) == 52) {
                    iM777r = 52;
                }
                return interfaceC2198m.mo590i(LocalDate.m596of(iM786a, 1, 4).plusDays(((iM777r - 1) * 7) + (iMo576h - r6.mo576h(r0))));
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }
        };
        WEEK_BASED_YEAR = enumC2193h4;
        f832b = new EnumC2193h[]{enumC2193h, enumC2193h2, enumC2193h3, enumC2193h4};
        f831a = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
    }

    /* JADX INFO: renamed from: w */
    public static int m779w(int i) {
        LocalDate localDateM596of = LocalDate.m596of(i, 1, 1);
        if (localDateM596of.m599F() != DayOfWeek.THURSDAY) {
            return (localDateM596of.m599F() == DayOfWeek.WEDNESDAY && localDateM596of.m602I()) ? 53 : 52;
        }
        return 53;
    }

    /* JADX INFO: renamed from: r */
    public static int m777r(LocalDate localDate) {
        int iOrdinal = localDate.m599F().ordinal();
        int iM600G = localDate.m600G() - 1;
        int i = (3 - iOrdinal) + iM600G;
        int i2 = i - ((i / 7) * 7);
        int i3 = i2 - 3;
        if (i3 < -3) {
            i3 = i2 + 4;
        }
        if (iM600G < i3) {
            return (int) C2206u.m784e(1L, m779w(m778v(localDate.m608Q(180).m606N(-1L)))).f855d;
        }
        int i4 = ((iM600G - i3) / 7) + 1;
        if (i4 != 53 || i3 == -3 || (i3 == -2 && localDate.m602I())) {
            return i4;
        }
        return 1;
    }

    /* JADX INFO: renamed from: v */
    public static int m778v(LocalDate localDate) {
        int year = localDate.getYear();
        int iM600G = localDate.m600G();
        if (iM600G <= 3) {
            return iM600G - localDate.m599F().ordinal() < -2 ? year - 1 : year;
        }
        if (iM600G >= 363) {
            return ((iM600G - 363) - (localDate.m602I() ? 1 : 0)) - localDate.m599F().ordinal() >= 0 ? year + 1 : year;
        }
        return year;
    }
}
