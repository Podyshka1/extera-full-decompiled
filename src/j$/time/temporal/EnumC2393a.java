package j$.time.temporal;

import kotlin.jvm.internal.LongCompanionObject;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'NANO_OF_SECOND' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: renamed from: j$.time.temporal.a */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2393a implements InterfaceC2408p {
    public static final EnumC2393a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2393a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2393a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2393a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2393a AMPM_OF_DAY;
    public static final EnumC2393a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2393a CLOCK_HOUR_OF_DAY;
    public static final EnumC2393a DAY_OF_MONTH;
    public static final EnumC2393a DAY_OF_WEEK;
    public static final EnumC2393a DAY_OF_YEAR;
    public static final EnumC2393a EPOCH_DAY;
    public static final EnumC2393a ERA;
    public static final EnumC2393a HOUR_OF_AMPM;
    public static final EnumC2393a HOUR_OF_DAY;
    public static final EnumC2393a INSTANT_SECONDS;
    public static final EnumC2393a MICRO_OF_DAY;
    public static final EnumC2393a MICRO_OF_SECOND;
    public static final EnumC2393a MILLI_OF_DAY;
    public static final EnumC2393a MILLI_OF_SECOND;
    public static final EnumC2393a MINUTE_OF_DAY;
    public static final EnumC2393a MINUTE_OF_HOUR;
    public static final EnumC2393a MONTH_OF_YEAR;
    public static final EnumC2393a NANO_OF_DAY;
    public static final EnumC2393a NANO_OF_SECOND;
    public static final EnumC2393a OFFSET_SECONDS;
    public static final EnumC2393a PROLEPTIC_MONTH;
    public static final EnumC2393a SECOND_OF_DAY;
    public static final EnumC2393a SECOND_OF_MINUTE;
    public static final EnumC2393a YEAR;
    public static final EnumC2393a YEAR_OF_ERA;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC2393a[] f830c;

    /* JADX INFO: renamed from: a */
    public final String f831a;

    /* JADX INFO: renamed from: b */
    public final C2411s f832b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2393a enumC2393a = new EnumC2393a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2411s.m883f(0L, 999999999L));
        NANO_OF_SECOND = enumC2393a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2393a enumC2393a2 = new EnumC2393a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2411s.m883f(0L, 86399999999999L));
        NANO_OF_DAY = enumC2393a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2393a enumC2393a3 = new EnumC2393a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2411s.m883f(0L, 999999L));
        MICRO_OF_SECOND = enumC2393a3;
        EnumC2393a enumC2393a4 = new EnumC2393a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2411s.m883f(0L, 86399999999L));
        MICRO_OF_DAY = enumC2393a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2393a enumC2393a5 = new EnumC2393a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2411s.m883f(0L, 999L));
        MILLI_OF_SECOND = enumC2393a5;
        EnumC2393a enumC2393a6 = new EnumC2393a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2411s.m883f(0L, 86399999L));
        MILLI_OF_DAY = enumC2393a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2393a enumC2393a7 = new EnumC2393a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2411s.m883f(0L, 59L), 0);
        SECOND_OF_MINUTE = enumC2393a7;
        EnumC2393a enumC2393a8 = new EnumC2393a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2411s.m883f(0L, 86399L));
        SECOND_OF_DAY = enumC2393a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2393a enumC2393a9 = new EnumC2393a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2411s.m883f(0L, 59L), 0);
        MINUTE_OF_HOUR = enumC2393a9;
        EnumC2393a enumC2393a10 = new EnumC2393a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2411s.m883f(0L, 1439L));
        MINUTE_OF_DAY = enumC2393a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2393a enumC2393a11 = new EnumC2393a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2411s.m883f(0L, 11L));
        HOUR_OF_AMPM = enumC2393a11;
        EnumC2393a enumC2393a12 = new EnumC2393a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2411s.m883f(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2393a12;
        EnumC2393a enumC2393a13 = new EnumC2393a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2411s.m883f(0L, 23L), 0);
        HOUR_OF_DAY = enumC2393a13;
        EnumC2393a enumC2393a14 = new EnumC2393a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2411s.m883f(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2393a14;
        EnumC2393a enumC2393a15 = new EnumC2393a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2411s.m883f(0L, 1L), 0);
        AMPM_OF_DAY = enumC2393a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2393a enumC2393a16 = new EnumC2393a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2411s.m883f(1L, 7L), 0);
        DAY_OF_WEEK = enumC2393a16;
        EnumC2393a enumC2393a17 = new EnumC2393a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2411s.m883f(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2393a17;
        EnumC2393a enumC2393a18 = new EnumC2393a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2411s.m883f(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2393a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2393a enumC2393a19 = new EnumC2393a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2411s.m884g(28L, 31L), 0);
        DAY_OF_MONTH = enumC2393a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2393a enumC2393a20 = new EnumC2393a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2411s.m884g(365L, 366L));
        DAY_OF_YEAR = enumC2393a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2393a enumC2393a21 = new EnumC2393a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2411s.m883f(-365243219162L, 365241780471L));
        EPOCH_DAY = enumC2393a21;
        EnumC2393a enumC2393a22 = new EnumC2393a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2411s.m884g(4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2393a22;
        EnumC2393a enumC2393a23 = new EnumC2393a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2411s.m883f(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2393a23;
        EnumC2393a enumC2393a24 = new EnumC2393a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2411s.m883f(1L, 12L), 0);
        MONTH_OF_YEAR = enumC2393a24;
        EnumC2393a enumC2393a25 = new EnumC2393a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2411s.m883f(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2393a25;
        EnumC2393a enumC2393a26 = new EnumC2393a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2411s.m884g(999999999L, 1000000000L));
        YEAR_OF_ERA = enumC2393a26;
        EnumC2393a enumC2393a27 = new EnumC2393a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2411s.m883f(-999999999L, 999999999L), 0);
        YEAR = enumC2393a27;
        EnumC2393a enumC2393a28 = new EnumC2393a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2411s.m883f(0L, 1L), 0);
        ERA = enumC2393a28;
        EnumC2393a enumC2393a29 = new EnumC2393a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2411s.m883f(Long.MIN_VALUE, LongCompanionObject.MAX_VALUE));
        INSTANT_SECONDS = enumC2393a29;
        EnumC2393a enumC2393a30 = new EnumC2393a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2411s.m883f(-64800L, 64800L));
        OFFSET_SECONDS = enumC2393a30;
        f830c = new EnumC2393a[]{enumC2393a, enumC2393a2, enumC2393a3, enumC2393a4, enumC2393a5, enumC2393a6, enumC2393a7, enumC2393a8, enumC2393a9, enumC2393a10, enumC2393a11, enumC2393a12, enumC2393a13, enumC2393a14, enumC2393a15, enumC2393a16, enumC2393a17, enumC2393a18, enumC2393a19, enumC2393a20, enumC2393a21, enumC2393a22, enumC2393a23, enumC2393a24, enumC2393a25, enumC2393a26, enumC2393a27, enumC2393a28, enumC2393a29, enumC2393a30};
    }

    public EnumC2393a(String str, int i, String str2, ChronoUnit chronoUnit, ChronoUnit chronoUnit2, C2411s c2411s) {
        this.f831a = str2;
        this.f832b = c2411s;
    }

    public static EnumC2393a valueOf(String str) {
        return (EnumC2393a) Enum.valueOf(EnumC2393a.class, str);
    }

    public static EnumC2393a[] values() {
        return (EnumC2393a[]) f830c.clone();
    }

    @Override // j$.time.temporal.InterfaceC2408p
    /* JADX INFO: renamed from: D */
    public final C2411s mo873D(InterfaceC2404l interfaceC2404l) {
        return interfaceC2404l.mo667l(this);
    }

    @Override // j$.time.temporal.InterfaceC2408p
    /* JADX INFO: renamed from: K */
    public final C2411s mo874K() {
        return this.f832b;
    }

    @Override // j$.time.temporal.InterfaceC2408p
    /* JADX INFO: renamed from: R */
    public final long mo875R(InterfaceC2404l interfaceC2404l) {
        return interfaceC2404l.mo556k(this);
    }

    @Override // j$.time.temporal.InterfaceC2408p
    /* JADX INFO: renamed from: X */
    public final Temporal mo876X(Temporal temporal, long j) {
        return temporal.mo676a(j, this);
    }

    /* JADX INFO: renamed from: Y */
    public final void m877Y(long j) {
        this.f832b.m886b(j, this);
    }

    /* JADX INFO: renamed from: Z */
    public final boolean m878Z() {
        return ordinal() < DAY_OF_WEEK.ordinal();
    }

    @Override // j$.time.temporal.InterfaceC2408p
    public final boolean isDateBased() {
        return ordinal() >= DAY_OF_WEEK.ordinal() && ordinal() <= ERA.ordinal();
    }

    @Override // j$.time.temporal.InterfaceC2408p
    /* JADX INFO: renamed from: s */
    public final boolean mo879s(InterfaceC2404l interfaceC2404l) {
        return interfaceC2404l.mo555i(this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f831a;
    }

    public EnumC2393a(String str, int i, String str2, ChronoUnit chronoUnit, ChronoUnit chronoUnit2, C2411s c2411s, int i2) {
        this.f831a = str2;
        this.f832b = c2411s;
    }
}
