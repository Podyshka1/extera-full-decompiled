package j$.time.temporal;

import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: renamed from: j$.time.temporal.a */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2173a implements InterfaceC2188p {
    NANO_OF_SECOND("NanoOfSecond", C2192t.m726f(0, 999999999)),
    NANO_OF_DAY("NanoOfDay", C2192t.m726f(0, 86399999999999L)),
    MICRO_OF_SECOND("MicroOfSecond", C2192t.m726f(0, 999999)),
    MICRO_OF_DAY("MicroOfDay", C2192t.m726f(0, 86399999999L)),
    MILLI_OF_SECOND("MilliOfSecond", C2192t.m726f(0, 999)),
    MILLI_OF_DAY("MilliOfDay", C2192t.m726f(0, 86399999)),
    SECOND_OF_MINUTE("SecondOfMinute", C2192t.m726f(0, 59), 0),
    SECOND_OF_DAY("SecondOfDay", C2192t.m726f(0, 86399)),
    MINUTE_OF_HOUR("MinuteOfHour", C2192t.m726f(0, 59), 0),
    MINUTE_OF_DAY("MinuteOfDay", C2192t.m726f(0, 1439)),
    HOUR_OF_AMPM("HourOfAmPm", C2192t.m726f(0, 11)),
    CLOCK_HOUR_OF_AMPM("ClockHourOfAmPm", C2192t.m726f(1, 12)),
    HOUR_OF_DAY("HourOfDay", C2192t.m726f(0, 23), 0),
    CLOCK_HOUR_OF_DAY("ClockHourOfDay", C2192t.m726f(1, 24)),
    AMPM_OF_DAY("AmPmOfDay", C2192t.m726f(0, 1), 0),
    DAY_OF_WEEK("DayOfWeek", C2192t.m726f(1, 7), 0),
    ALIGNED_DAY_OF_WEEK_IN_MONTH("AlignedDayOfWeekInMonth", C2192t.m726f(1, 7)),
    ALIGNED_DAY_OF_WEEK_IN_YEAR("AlignedDayOfWeekInYear", C2192t.m726f(1, 7)),
    DAY_OF_MONTH("DayOfMonth", C2192t.m727g(28, 31), 0),
    DAY_OF_YEAR("DayOfYear", C2192t.m727g(365, 366)),
    EPOCH_DAY("EpochDay", C2192t.m726f(-365243219162L, 365241780471L)),
    ALIGNED_WEEK_OF_MONTH("AlignedWeekOfMonth", C2192t.m727g(4, 5)),
    ALIGNED_WEEK_OF_YEAR("AlignedWeekOfYear", C2192t.m726f(1, 53)),
    MONTH_OF_YEAR("MonthOfYear", C2192t.m726f(1, 12), 0),
    PROLEPTIC_MONTH("ProlepticMonth", C2192t.m726f(-11999999988L, 11999999999L)),
    YEAR_OF_ERA("YearOfEra", C2192t.m727g(999999999, 1000000000)),
    YEAR("Year", C2192t.m726f(-999999999, 999999999), 0),
    ERA("Era", C2192t.m726f(0, 1), 0),
    INSTANT_SECONDS("InstantSeconds", C2192t.m726f(Long.MIN_VALUE, LongCompanionObject.MAX_VALUE)),
    OFFSET_SECONDS("OffsetSeconds", C2192t.m726f(-64800, 64800));


    /* JADX INFO: renamed from: a */
    public final String f680a;

    /* JADX INFO: renamed from: b */
    public final C2192t f681b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
    }

    EnumC2173a(String str, C2192t c2192t) {
        this.f680a = str;
        this.f681b = c2192t;
    }

    @Override // j$.time.temporal.InterfaceC2188p
    /* JADX INFO: renamed from: B */
    public final C2192t mo715B(InterfaceC2184l interfaceC2184l) {
        return interfaceC2184l.mo487m(this);
    }

    @Override // j$.time.temporal.InterfaceC2188p
    /* JADX INFO: renamed from: I */
    public final C2192t mo716I() {
        return this.f681b;
    }

    @Override // j$.time.temporal.InterfaceC2188p
    /* JADX INFO: renamed from: P */
    public final long mo717P(InterfaceC2184l interfaceC2184l) {
        return interfaceC2184l.mo486k(this);
    }

    @Override // j$.time.temporal.InterfaceC2188p
    /* JADX INFO: renamed from: V */
    public final Temporal mo718V(Temporal temporal, long j) {
        return temporal.mo496a(j, this);
    }

    /* JADX INFO: renamed from: X */
    public final void m719X(long j) {
        this.f681b.m729b(j, this);
    }

    /* JADX INFO: renamed from: Y */
    public final boolean m720Y() {
        return ordinal() < DAY_OF_WEEK.ordinal();
    }

    @Override // j$.time.temporal.InterfaceC2188p
    public final boolean isDateBased() {
        return ordinal() >= DAY_OF_WEEK.ordinal() && ordinal() <= ERA.ordinal();
    }

    @Override // j$.time.temporal.InterfaceC2188p
    /* JADX INFO: renamed from: t */
    public final boolean mo721t(InterfaceC2184l interfaceC2184l) {
        return interfaceC2184l.mo485i(this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f680a;
    }

    EnumC2173a(String str, C2192t c2192t, int i) {
        this.f680a = str;
        this.f681b = c2192t;
    }
}
