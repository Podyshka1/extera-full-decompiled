package com.yandex.mapkit.navigation.automotive;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'TRAFFIC_CONTROLS' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes5.dex */
public final class AnnotatedRoadEvents {
    private static final /* synthetic */ AnnotatedRoadEvents[] $VALUES;
    public static final AnnotatedRoadEvents ACCIDENT;
    public static final AnnotatedRoadEvents CROSS_ROAD_CONTROL;
    public static final AnnotatedRoadEvents CROSS_ROAD_DANGER;
    public static final AnnotatedRoadEvents DANGER;
    public static final AnnotatedRoadEvents EVERYTHING;
    public static final AnnotatedRoadEvents LANE_CONTROL;
    public static final AnnotatedRoadEvents MOBILE_CONTROL;
    public static final AnnotatedRoadEvents OVERTAKING_DANGER;
    public static final AnnotatedRoadEvents PEDESTRIAN_DANGER;
    public static final AnnotatedRoadEvents POLICE_PATROL;
    public static final AnnotatedRoadEvents RECONSTRUCTION;
    public static final AnnotatedRoadEvents ROAD_MARKING_CONTROL;
    public static final AnnotatedRoadEvents SCHOOL;
    public static final AnnotatedRoadEvents SPEED_LIMIT_CONTROL;
    public static final AnnotatedRoadEvents TRAFFIC_CONTROL;
    public static final AnnotatedRoadEvents TRAFFIC_CONTROLS;
    public final int value;

    public static AnnotatedRoadEvents valueOf(String str) {
        return (AnnotatedRoadEvents) Enum.valueOf(AnnotatedRoadEvents.class, str);
    }

    public static AnnotatedRoadEvents[] values() {
        return (AnnotatedRoadEvents[]) $VALUES.clone();
    }

    static {
        AnnotatedRoadEvents annotatedRoadEvents = new AnnotatedRoadEvents("DANGER", 0, 1);
        DANGER = annotatedRoadEvents;
        AnnotatedRoadEvents annotatedRoadEvents2 = new AnnotatedRoadEvents("RECONSTRUCTION", 1, 2);
        RECONSTRUCTION = annotatedRoadEvents2;
        AnnotatedRoadEvents annotatedRoadEvents3 = new AnnotatedRoadEvents("ACCIDENT", 2, 4);
        ACCIDENT = annotatedRoadEvents3;
        AnnotatedRoadEvents annotatedRoadEvents4 = new AnnotatedRoadEvents("SCHOOL", 3, 8);
        SCHOOL = annotatedRoadEvents4;
        AnnotatedRoadEvents annotatedRoadEvents5 = new AnnotatedRoadEvents("OVERTAKING_DANGER", 4, 16);
        OVERTAKING_DANGER = annotatedRoadEvents5;
        AnnotatedRoadEvents annotatedRoadEvents6 = new AnnotatedRoadEvents("PEDESTRIAN_DANGER", 5, 32);
        PEDESTRIAN_DANGER = annotatedRoadEvents6;
        AnnotatedRoadEvents annotatedRoadEvents7 = new AnnotatedRoadEvents("CROSS_ROAD_DANGER", 6, 64);
        CROSS_ROAD_DANGER = annotatedRoadEvents7;
        AnnotatedRoadEvents annotatedRoadEvents8 = new AnnotatedRoadEvents("LANE_CONTROL", 7, 128);
        LANE_CONTROL = annotatedRoadEvents8;
        AnnotatedRoadEvents annotatedRoadEvents9 = new AnnotatedRoadEvents("ROAD_MARKING_CONTROL", 8, 256);
        ROAD_MARKING_CONTROL = annotatedRoadEvents9;
        AnnotatedRoadEvents annotatedRoadEvents10 = new AnnotatedRoadEvents("CROSS_ROAD_CONTROL", 9, 512);
        CROSS_ROAD_CONTROL = annotatedRoadEvents10;
        AnnotatedRoadEvents annotatedRoadEvents11 = new AnnotatedRoadEvents("MOBILE_CONTROL", 10, 1024);
        MOBILE_CONTROL = annotatedRoadEvents11;
        AnnotatedRoadEvents annotatedRoadEvents12 = new AnnotatedRoadEvents("SPEED_LIMIT_CONTROL", 11, 2048);
        SPEED_LIMIT_CONTROL = annotatedRoadEvents12;
        AnnotatedRoadEvents annotatedRoadEvents13 = new AnnotatedRoadEvents("TRAFFIC_CONTROL", 12, 4096);
        TRAFFIC_CONTROL = annotatedRoadEvents13;
        AnnotatedRoadEvents annotatedRoadEvents14 = new AnnotatedRoadEvents("POLICE_PATROL", 13, 8192);
        POLICE_PATROL = annotatedRoadEvents14;
        AnnotatedRoadEvents annotatedRoadEvents15 = new AnnotatedRoadEvents("TRAFFIC_CONTROLS", 14, annotatedRoadEvents8.value | annotatedRoadEvents9.value | annotatedRoadEvents10.value | annotatedRoadEvents11.value | annotatedRoadEvents12.value | annotatedRoadEvents13.value | annotatedRoadEvents14.value);
        TRAFFIC_CONTROLS = annotatedRoadEvents15;
        AnnotatedRoadEvents annotatedRoadEvents16 = new AnnotatedRoadEvents("EVERYTHING", 15, annotatedRoadEvents7.value | annotatedRoadEvents.value | annotatedRoadEvents2.value | annotatedRoadEvents3.value | annotatedRoadEvents4.value | annotatedRoadEvents5.value | annotatedRoadEvents6.value | annotatedRoadEvents15.value);
        EVERYTHING = annotatedRoadEvents16;
        $VALUES = new AnnotatedRoadEvents[]{annotatedRoadEvents, annotatedRoadEvents2, annotatedRoadEvents3, annotatedRoadEvents4, annotatedRoadEvents5, annotatedRoadEvents6, annotatedRoadEvents7, annotatedRoadEvents8, annotatedRoadEvents9, annotatedRoadEvents10, annotatedRoadEvents11, annotatedRoadEvents12, annotatedRoadEvents13, annotatedRoadEvents14, annotatedRoadEvents15, annotatedRoadEvents16};
    }

    private AnnotatedRoadEvents(String str, int i, int i2) {
        this.value = i2;
    }
}
