package com.yandex.mapkit.search;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'WEEKDAYS' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes5.dex */
public final class DayGroup {
    private static final /* synthetic */ DayGroup[] $VALUES;
    public static final DayGroup EVERYDAY;
    public static final DayGroup FRIDAY;
    public static final DayGroup MONDAY;
    public static final DayGroup NONE;
    public static final DayGroup SATURDAY;
    public static final DayGroup SUNDAY;
    public static final DayGroup THURSDAY;
    public static final DayGroup TUESDAY;
    public static final DayGroup WEDNESDAY;
    public static final DayGroup WEEKDAYS;
    public static final DayGroup WEEKEND;
    public final int value;

    public static DayGroup valueOf(String str) {
        return (DayGroup) Enum.valueOf(DayGroup.class, str);
    }

    public static DayGroup[] values() {
        return (DayGroup[]) $VALUES.clone();
    }

    static {
        DayGroup dayGroup = new DayGroup("NONE", 0, 0);
        NONE = dayGroup;
        DayGroup dayGroup2 = new DayGroup("SUNDAY", 1, 1);
        SUNDAY = dayGroup2;
        DayGroup dayGroup3 = new DayGroup("MONDAY", 2, 2);
        MONDAY = dayGroup3;
        DayGroup dayGroup4 = new DayGroup("TUESDAY", 3, 4);
        TUESDAY = dayGroup4;
        DayGroup dayGroup5 = new DayGroup("WEDNESDAY", 4, 8);
        WEDNESDAY = dayGroup5;
        DayGroup dayGroup6 = new DayGroup("THURSDAY", 5, 16);
        THURSDAY = dayGroup6;
        DayGroup dayGroup7 = new DayGroup("FRIDAY", 6, 32);
        FRIDAY = dayGroup7;
        DayGroup dayGroup8 = new DayGroup("SATURDAY", 7, 64);
        SATURDAY = dayGroup8;
        DayGroup dayGroup9 = new DayGroup("WEEKDAYS", 8, dayGroup3.value | dayGroup4.value | dayGroup5.value | dayGroup6.value | dayGroup7.value);
        WEEKDAYS = dayGroup9;
        DayGroup dayGroup10 = new DayGroup("WEEKEND", 9, dayGroup8.value | dayGroup2.value);
        WEEKEND = dayGroup10;
        DayGroup dayGroup11 = new DayGroup("EVERYDAY", 10, dayGroup9.value | dayGroup10.value);
        EVERYDAY = dayGroup11;
        $VALUES = new DayGroup[]{dayGroup, dayGroup2, dayGroup3, dayGroup4, dayGroup5, dayGroup6, dayGroup7, dayGroup8, dayGroup9, dayGroup10, dayGroup11};
    }

    private DayGroup(String str, int i, int i2) {
        this.value = i2;
    }
}
