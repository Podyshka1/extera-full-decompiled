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
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2254a implements InterfaceC2269p {
    public static final EnumC2254a ALIGNED_DAY_OF_WEEK_IN_MONTH;
    public static final EnumC2254a ALIGNED_DAY_OF_WEEK_IN_YEAR;
    public static final EnumC2254a ALIGNED_WEEK_OF_MONTH;
    public static final EnumC2254a ALIGNED_WEEK_OF_YEAR;
    public static final EnumC2254a AMPM_OF_DAY;
    public static final EnumC2254a CLOCK_HOUR_OF_AMPM;
    public static final EnumC2254a CLOCK_HOUR_OF_DAY;
    public static final EnumC2254a DAY_OF_MONTH;
    public static final EnumC2254a DAY_OF_WEEK;
    public static final EnumC2254a DAY_OF_YEAR;
    public static final EnumC2254a EPOCH_DAY;
    public static final EnumC2254a ERA;
    public static final EnumC2254a HOUR_OF_AMPM;
    public static final EnumC2254a HOUR_OF_DAY;
    public static final EnumC2254a INSTANT_SECONDS;
    public static final EnumC2254a MICRO_OF_DAY;
    public static final EnumC2254a MICRO_OF_SECOND;
    public static final EnumC2254a MILLI_OF_DAY;
    public static final EnumC2254a MILLI_OF_SECOND;
    public static final EnumC2254a MINUTE_OF_DAY;
    public static final EnumC2254a MINUTE_OF_HOUR;
    public static final EnumC2254a MONTH_OF_YEAR;
    public static final EnumC2254a NANO_OF_DAY;
    public static final EnumC2254a NANO_OF_SECOND;
    public static final EnumC2254a OFFSET_SECONDS;
    public static final EnumC2254a PROLEPTIC_MONTH;
    public static final EnumC2254a SECOND_OF_DAY;
    public static final EnumC2254a SECOND_OF_MINUTE;
    public static final EnumC2254a YEAR;
    public static final EnumC2254a YEAR_OF_ERA;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC2254a[] f828c;

    /* JADX INFO: renamed from: a */
    public final String f829a;

    /* JADX INFO: renamed from: b */
    public final C2272s f830b;

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
        ChronoUnit chronoUnit2 = ChronoUnit.SECONDS;
        EnumC2254a enumC2254a = new EnumC2254a("NANO_OF_SECOND", 0, "NanoOfSecond", chronoUnit, chronoUnit2, C2272s.m835f(0L, 999999999L));
        NANO_OF_SECOND = enumC2254a;
        ChronoUnit chronoUnit3 = ChronoUnit.DAYS;
        EnumC2254a enumC2254a2 = new EnumC2254a("NANO_OF_DAY", 1, "NanoOfDay", chronoUnit, chronoUnit3, C2272s.m835f(0L, 86399999999999L));
        NANO_OF_DAY = enumC2254a2;
        ChronoUnit chronoUnit4 = ChronoUnit.MICROS;
        EnumC2254a enumC2254a3 = new EnumC2254a("MICRO_OF_SECOND", 2, "MicroOfSecond", chronoUnit4, chronoUnit2, C2272s.m835f(0L, 999999L));
        MICRO_OF_SECOND = enumC2254a3;
        EnumC2254a enumC2254a4 = new EnumC2254a("MICRO_OF_DAY", 3, "MicroOfDay", chronoUnit4, chronoUnit3, C2272s.m835f(0L, 86399999999L));
        MICRO_OF_DAY = enumC2254a4;
        ChronoUnit chronoUnit5 = ChronoUnit.MILLIS;
        EnumC2254a enumC2254a5 = new EnumC2254a("MILLI_OF_SECOND", 4, "MilliOfSecond", chronoUnit5, chronoUnit2, C2272s.m835f(0L, 999L));
        MILLI_OF_SECOND = enumC2254a5;
        EnumC2254a enumC2254a6 = new EnumC2254a("MILLI_OF_DAY", 5, "MilliOfDay", chronoUnit5, chronoUnit3, C2272s.m835f(0L, 86399999L));
        MILLI_OF_DAY = enumC2254a6;
        ChronoUnit chronoUnit6 = ChronoUnit.MINUTES;
        EnumC2254a enumC2254a7 = new EnumC2254a("SECOND_OF_MINUTE", 6, "SecondOfMinute", chronoUnit2, chronoUnit6, C2272s.m835f(0L, 59L), 0);
        SECOND_OF_MINUTE = enumC2254a7;
        EnumC2254a enumC2254a8 = new EnumC2254a("SECOND_OF_DAY", 7, "SecondOfDay", chronoUnit2, chronoUnit3, C2272s.m835f(0L, 86399L));
        SECOND_OF_DAY = enumC2254a8;
        ChronoUnit chronoUnit7 = ChronoUnit.HOURS;
        EnumC2254a enumC2254a9 = new EnumC2254a("MINUTE_OF_HOUR", 8, "MinuteOfHour", chronoUnit6, chronoUnit7, C2272s.m835f(0L, 59L), 0);
        MINUTE_OF_HOUR = enumC2254a9;
        EnumC2254a enumC2254a10 = new EnumC2254a("MINUTE_OF_DAY", 9, "MinuteOfDay", chronoUnit6, chronoUnit3, C2272s.m835f(0L, 1439L));
        MINUTE_OF_DAY = enumC2254a10;
        ChronoUnit chronoUnit8 = ChronoUnit.HALF_DAYS;
        EnumC2254a enumC2254a11 = new EnumC2254a("HOUR_OF_AMPM", 10, "HourOfAmPm", chronoUnit7, chronoUnit8, C2272s.m835f(0L, 11L));
        HOUR_OF_AMPM = enumC2254a11;
        EnumC2254a enumC2254a12 = new EnumC2254a("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", chronoUnit7, chronoUnit8, C2272s.m835f(1L, 12L));
        CLOCK_HOUR_OF_AMPM = enumC2254a12;
        EnumC2254a enumC2254a13 = new EnumC2254a("HOUR_OF_DAY", 12, "HourOfDay", chronoUnit7, chronoUnit3, C2272s.m835f(0L, 23L), 0);
        HOUR_OF_DAY = enumC2254a13;
        EnumC2254a enumC2254a14 = new EnumC2254a("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", chronoUnit7, chronoUnit3, C2272s.m835f(1L, 24L));
        CLOCK_HOUR_OF_DAY = enumC2254a14;
        EnumC2254a enumC2254a15 = new EnumC2254a("AMPM_OF_DAY", 14, "AmPmOfDay", chronoUnit8, chronoUnit3, C2272s.m835f(0L, 1L), 0);
        AMPM_OF_DAY = enumC2254a15;
        ChronoUnit chronoUnit9 = ChronoUnit.WEEKS;
        EnumC2254a enumC2254a16 = new EnumC2254a("DAY_OF_WEEK", 15, "DayOfWeek", chronoUnit3, chronoUnit9, C2272s.m835f(1L, 7L), 0);
        DAY_OF_WEEK = enumC2254a16;
        EnumC2254a enumC2254a17 = new EnumC2254a("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", chronoUnit3, chronoUnit9, C2272s.m835f(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_MONTH = enumC2254a17;
        EnumC2254a enumC2254a18 = new EnumC2254a("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", chronoUnit3, chronoUnit9, C2272s.m835f(1L, 7L));
        ALIGNED_DAY_OF_WEEK_IN_YEAR = enumC2254a18;
        ChronoUnit chronoUnit10 = ChronoUnit.MONTHS;
        EnumC2254a enumC2254a19 = new EnumC2254a("DAY_OF_MONTH", 18, "DayOfMonth", chronoUnit3, chronoUnit10, C2272s.m836g(28L, 31L), 0);
        DAY_OF_MONTH = enumC2254a19;
        ChronoUnit chronoUnit11 = ChronoUnit.YEARS;
        EnumC2254a enumC2254a20 = new EnumC2254a("DAY_OF_YEAR", 19, "DayOfYear", chronoUnit3, chronoUnit11, C2272s.m836g(365L, 366L));
        DAY_OF_YEAR = enumC2254a20;
        ChronoUnit chronoUnit12 = ChronoUnit.FOREVER;
        EnumC2254a enumC2254a21 = new EnumC2254a("EPOCH_DAY", 20, "EpochDay", chronoUnit3, chronoUnit12, C2272s.m835f(-365243219162L, 365241780471L));
        EPOCH_DAY = enumC2254a21;
        EnumC2254a enumC2254a22 = new EnumC2254a("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", chronoUnit9, chronoUnit10, C2272s.m836g(4L, 5L));
        ALIGNED_WEEK_OF_MONTH = enumC2254a22;
        EnumC2254a enumC2254a23 = new EnumC2254a("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", chronoUnit9, chronoUnit11, C2272s.m835f(1L, 53L));
        ALIGNED_WEEK_OF_YEAR = enumC2254a23;
        EnumC2254a enumC2254a24 = new EnumC2254a("MONTH_OF_YEAR", 23, "MonthOfYear", chronoUnit10, chronoUnit11, C2272s.m835f(1L, 12L), 0);
        MONTH_OF_YEAR = enumC2254a24;
        EnumC2254a enumC2254a25 = new EnumC2254a("PROLEPTIC_MONTH", 24, "ProlepticMonth", chronoUnit10, chronoUnit12, C2272s.m835f(-11999999988L, 11999999999L));
        PROLEPTIC_MONTH = enumC2254a25;
        EnumC2254a enumC2254a26 = new EnumC2254a("YEAR_OF_ERA", 25, "YearOfEra", chronoUnit11, chronoUnit12, C2272s.m836g(999999999L, 1000000000L));
        YEAR_OF_ERA = enumC2254a26;
        EnumC2254a enumC2254a27 = new EnumC2254a("YEAR", 26, "Year", chronoUnit11, chronoUnit12, C2272s.m835f(-999999999L, 999999999L), 0);
        YEAR = enumC2254a27;
        EnumC2254a enumC2254a28 = new EnumC2254a("ERA", 27, "Era", ChronoUnit.ERAS, chronoUnit12, C2272s.m835f(0L, 1L), 0);
        ERA = enumC2254a28;
        EnumC2254a enumC2254a29 = new EnumC2254a("INSTANT_SECONDS", 28, "InstantSeconds", chronoUnit2, chronoUnit12, C2272s.m835f(Long.MIN_VALUE, LongCompanionObject.MAX_VALUE));
        INSTANT_SECONDS = enumC2254a29;
        EnumC2254a enumC2254a30 = new EnumC2254a("OFFSET_SECONDS", 29, "OffsetSeconds", chronoUnit2, chronoUnit12, C2272s.m835f(-64800L, 64800L));
        OFFSET_SECONDS = enumC2254a30;
        f828c = new EnumC2254a[]{enumC2254a, enumC2254a2, enumC2254a3, enumC2254a4, enumC2254a5, enumC2254a6, enumC2254a7, enumC2254a8, enumC2254a9, enumC2254a10, enumC2254a11, enumC2254a12, enumC2254a13, enumC2254a14, enumC2254a15, enumC2254a16, enumC2254a17, enumC2254a18, enumC2254a19, enumC2254a20, enumC2254a21, enumC2254a22, enumC2254a23, enumC2254a24, enumC2254a25, enumC2254a26, enumC2254a27, enumC2254a28, enumC2254a29, enumC2254a30};
    }

    public EnumC2254a(String str, int i, String str2, ChronoUnit chronoUnit, ChronoUnit chronoUnit2, C2272s c2272s) {
        this.f829a = str2;
        this.f830b = c2272s;
    }

    public static EnumC2254a valueOf(String str) {
        return (EnumC2254a) Enum.valueOf(EnumC2254a.class, str);
    }

    public static EnumC2254a[] values() {
        return (EnumC2254a[]) f828c.clone();
    }

    @Override // j$.time.temporal.InterfaceC2269p
    /* JADX INFO: renamed from: D */
    public final C2272s mo829D(InterfaceC2265l interfaceC2265l) {
        return interfaceC2265l.mo643l(this);
    }

    @Override // j$.time.temporal.InterfaceC2269p
    /* JADX INFO: renamed from: K */
    public final C2272s mo830K() {
        return this.f830b;
    }

    @Override // j$.time.temporal.InterfaceC2269p
    /* JADX INFO: renamed from: S */
    public final long mo831S(InterfaceC2265l interfaceC2265l) {
        return interfaceC2265l.mo532k(this);
    }

    @Override // j$.time.temporal.InterfaceC2269p
    /* JADX INFO: renamed from: Y */
    public final Temporal mo832Y(Temporal temporal, long j) {
        return temporal.mo652a(j, this);
    }

    public final void a0(long j) {
        this.f830b.m838b(j, this);
    }

    public final boolean b0() {
        return ordinal() < DAY_OF_WEEK.ordinal();
    }

    @Override // j$.time.temporal.InterfaceC2269p
    public final boolean isDateBased() {
        return ordinal() >= DAY_OF_WEEK.ordinal() && ordinal() <= ERA.ordinal();
    }

    @Override // j$.time.temporal.InterfaceC2269p
    /* JADX INFO: renamed from: s */
    public final boolean mo833s(InterfaceC2265l interfaceC2265l) {
        return interfaceC2265l.mo531i(this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f829a;
    }

    public EnumC2254a(String str, int i, String str2, ChronoUnit chronoUnit, ChronoUnit chronoUnit2, C2272s c2272s, int i2) {
        this.f829a = str2;
        this.f830b = c2272s;
    }
}
