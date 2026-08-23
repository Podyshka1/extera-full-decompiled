package p022j$.time.temporal;

/* JADX INFO: renamed from: j$.time.temporal.a */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2186a implements InterfaceC2202q {
    NANO_OF_SECOND("NanoOfSecond", C2206u.m784e(0, 999999999)),
    NANO_OF_DAY("NanoOfDay", C2206u.m784e(0, 86399999999999L)),
    MICRO_OF_SECOND("MicroOfSecond", C2206u.m784e(0, 999999)),
    MICRO_OF_DAY("MicroOfDay", C2206u.m784e(0, 86399999999L)),
    MILLI_OF_SECOND("MilliOfSecond", C2206u.m784e(0, 999)),
    MILLI_OF_DAY("MilliOfDay", C2206u.m784e(0, 86399999)),
    SECOND_OF_MINUTE("SecondOfMinute", C2206u.m784e(0, 59), 0),
    SECOND_OF_DAY("SecondOfDay", C2206u.m784e(0, 86399)),
    MINUTE_OF_HOUR("MinuteOfHour", C2206u.m784e(0, 59), 0),
    MINUTE_OF_DAY("MinuteOfDay", C2206u.m784e(0, 1439)),
    HOUR_OF_AMPM("HourOfAmPm", C2206u.m784e(0, 11)),
    CLOCK_HOUR_OF_AMPM("ClockHourOfAmPm", C2206u.m784e(1, 12)),
    HOUR_OF_DAY("HourOfDay", C2206u.m784e(0, 23), 0),
    CLOCK_HOUR_OF_DAY("ClockHourOfDay", C2206u.m784e(1, 24)),
    AMPM_OF_DAY("AmPmOfDay", C2206u.m784e(0, 1), 0),
    DAY_OF_WEEK("DayOfWeek", C2206u.m784e(1, 7), 0),
    ALIGNED_DAY_OF_WEEK_IN_MONTH("AlignedDayOfWeekInMonth", C2206u.m784e(1, 7)),
    ALIGNED_DAY_OF_WEEK_IN_YEAR("AlignedDayOfWeekInYear", C2206u.m784e(1, 7)),
    DAY_OF_MONTH("DayOfMonth", C2206u.m785f(28, 31), 0),
    DAY_OF_YEAR("DayOfYear", C2206u.m785f(365, 366)),
    EPOCH_DAY("EpochDay", C2206u.m784e(-365243219162L, 365241780471L)),
    ALIGNED_WEEK_OF_MONTH("AlignedWeekOfMonth", C2206u.m785f(4, 5)),
    ALIGNED_WEEK_OF_YEAR("AlignedWeekOfYear", C2206u.m784e(1, 53)),
    MONTH_OF_YEAR("MonthOfYear", C2206u.m784e(1, 12), 0),
    PROLEPTIC_MONTH("ProlepticMonth", C2206u.m784e(-11999999988L, 11999999999L)),
    YEAR_OF_ERA("YearOfEra", C2206u.m785f(999999999, 1000000000)),
    YEAR("Year", C2206u.m784e(-999999999, 999999999), 0),
    ERA("Era", C2206u.m784e(0, 1), 0),
    INSTANT_SECONDS("InstantSeconds", C2206u.m784e(Long.MIN_VALUE, Long.MAX_VALUE)),
    OFFSET_SECONDS("OffsetSeconds", C2206u.m784e(-64800, 64800));


    /* JADX INFO: renamed from: a */
    public final String f826a;

    /* JADX INFO: renamed from: b */
    public final C2206u f827b;

    static {
        EnumC2187b enumC2187b = EnumC2187b.NANOS;
    }

    EnumC2186a(String str, C2206u c2206u) {
        this.f826a = str;
        this.f827b = c2206u;
    }

    EnumC2186a(String str, C2206u c2206u, int i) {
        this.f826a = str;
        this.f827b = c2206u;
    }

    @Override // p022j$.time.temporal.InterfaceC2202q
    /* JADX INFO: renamed from: j */
    public final C2206u mo771j() {
        return this.f827b;
    }

    /* JADX INFO: renamed from: r */
    public final void m774r(long j) {
        this.f827b.m787b(j, this);
    }

    @Override // p022j$.time.temporal.InterfaceC2202q
    public final boolean isDateBased() {
        return ordinal() >= DAY_OF_WEEK.ordinal() && ordinal() <= ERA.ordinal();
    }

    /* JADX INFO: renamed from: v */
    public final boolean m775v() {
        return ordinal() < DAY_OF_WEEK.ordinal();
    }

    @Override // p022j$.time.temporal.InterfaceC2202q
    /* JADX INFO: renamed from: h */
    public final boolean mo769h(InterfaceC2199n interfaceC2199n) {
        return interfaceC2199n.mo575e(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2202q
    /* JADX INFO: renamed from: i */
    public final C2206u mo770i(InterfaceC2199n interfaceC2199n) {
        return interfaceC2199n.mo577j(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2202q
    /* JADX INFO: renamed from: k */
    public final long mo772k(InterfaceC2199n interfaceC2199n) {
        return interfaceC2199n.mo580w(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2202q
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo773n(InterfaceC2198m interfaceC2198m, long j) {
        return interfaceC2198m.mo588c(j, this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f826a;
    }
}
