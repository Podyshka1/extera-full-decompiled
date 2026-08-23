package j$.time.temporal;

/* JADX INFO: renamed from: j$.time.temporal.a */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2047a implements InterfaceC2063q {
    NANO_OF_SECOND("NanoOfSecond", C2067u.m659e(0, 999999999)),
    NANO_OF_DAY("NanoOfDay", C2067u.m659e(0, 86399999999999L)),
    MICRO_OF_SECOND("MicroOfSecond", C2067u.m659e(0, 999999)),
    MICRO_OF_DAY("MicroOfDay", C2067u.m659e(0, 86399999999L)),
    MILLI_OF_SECOND("MilliOfSecond", C2067u.m659e(0, 999)),
    MILLI_OF_DAY("MilliOfDay", C2067u.m659e(0, 86399999)),
    SECOND_OF_MINUTE("SecondOfMinute", C2067u.m659e(0, 59), 0),
    SECOND_OF_DAY("SecondOfDay", C2067u.m659e(0, 86399)),
    MINUTE_OF_HOUR("MinuteOfHour", C2067u.m659e(0, 59), 0),
    MINUTE_OF_DAY("MinuteOfDay", C2067u.m659e(0, 1439)),
    HOUR_OF_AMPM("HourOfAmPm", C2067u.m659e(0, 11)),
    CLOCK_HOUR_OF_AMPM("ClockHourOfAmPm", C2067u.m659e(1, 12)),
    HOUR_OF_DAY("HourOfDay", C2067u.m659e(0, 23), 0),
    CLOCK_HOUR_OF_DAY("ClockHourOfDay", C2067u.m659e(1, 24)),
    AMPM_OF_DAY("AmPmOfDay", C2067u.m659e(0, 1), 0),
    DAY_OF_WEEK("DayOfWeek", C2067u.m659e(1, 7), 0),
    ALIGNED_DAY_OF_WEEK_IN_MONTH("AlignedDayOfWeekInMonth", C2067u.m659e(1, 7)),
    ALIGNED_DAY_OF_WEEK_IN_YEAR("AlignedDayOfWeekInYear", C2067u.m659e(1, 7)),
    DAY_OF_MONTH("DayOfMonth", C2067u.m660f(28, 31), 0),
    DAY_OF_YEAR("DayOfYear", C2067u.m660f(365, 366)),
    EPOCH_DAY("EpochDay", C2067u.m659e(-365243219162L, 365241780471L)),
    ALIGNED_WEEK_OF_MONTH("AlignedWeekOfMonth", C2067u.m660f(4, 5)),
    ALIGNED_WEEK_OF_YEAR("AlignedWeekOfYear", C2067u.m659e(1, 53)),
    MONTH_OF_YEAR("MonthOfYear", C2067u.m659e(1, 12), 0),
    PROLEPTIC_MONTH("ProlepticMonth", C2067u.m659e(-11999999988L, 11999999999L)),
    YEAR_OF_ERA("YearOfEra", C2067u.m660f(999999999, 1000000000)),
    YEAR("Year", C2067u.m659e(-999999999, 999999999), 0),
    ERA("Era", C2067u.m659e(0, 1), 0),
    INSTANT_SECONDS("InstantSeconds", C2067u.m659e(Long.MIN_VALUE, Long.MAX_VALUE)),
    OFFSET_SECONDS("OffsetSeconds", C2067u.m659e(-64800, 64800));


    /* JADX INFO: renamed from: a */
    public final String f591a;

    /* JADX INFO: renamed from: b */
    public final C2067u f592b;

    static {
        EnumC2048b enumC2048b = EnumC2048b.NANOS;
    }

    EnumC2047a(String str, C2067u c2067u) {
        this.f591a = str;
        this.f592b = c2067u;
    }

    EnumC2047a(String str, C2067u c2067u, int i) {
        this.f591a = str;
        this.f592b = c2067u;
    }

    @Override // j$.time.temporal.InterfaceC2063q
    /* JADX INFO: renamed from: j */
    public final C2067u mo646j() {
        return this.f592b;
    }

    /* JADX INFO: renamed from: r */
    public final void m649r(long j) {
        this.f592b.m662b(j, this);
    }

    @Override // j$.time.temporal.InterfaceC2063q
    public final boolean isDateBased() {
        return ordinal() >= DAY_OF_WEEK.ordinal() && ordinal() <= ERA.ordinal();
    }

    /* JADX INFO: renamed from: v */
    public final boolean m650v() {
        return ordinal() < DAY_OF_WEEK.ordinal();
    }

    @Override // j$.time.temporal.InterfaceC2063q
    /* JADX INFO: renamed from: h */
    public final boolean mo644h(InterfaceC2060n interfaceC2060n) {
        return interfaceC2060n.mo455e(this);
    }

    @Override // j$.time.temporal.InterfaceC2063q
    /* JADX INFO: renamed from: i */
    public final C2067u mo645i(InterfaceC2060n interfaceC2060n) {
        return interfaceC2060n.mo457j(this);
    }

    @Override // j$.time.temporal.InterfaceC2063q
    /* JADX INFO: renamed from: k */
    public final long mo647k(InterfaceC2060n interfaceC2060n) {
        return interfaceC2060n.mo460w(this);
    }

    @Override // j$.time.temporal.InterfaceC2063q
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo648n(InterfaceC2059m interfaceC2059m, long j) {
        return interfaceC2059m.mo468c(j, this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f591a;
    }
}
