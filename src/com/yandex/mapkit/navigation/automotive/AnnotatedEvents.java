package com.yandex.mapkit.navigation.automotive;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'ROUTE_ACTIONS' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes5.dex */
public final class AnnotatedEvents {
    private static final /* synthetic */ AnnotatedEvents[] $VALUES;
    public static final AnnotatedEvents EVERYTHING;
    public static final AnnotatedEvents FASTER_ALTERNATIVE;
    public static final AnnotatedEvents LANES;
    public static final AnnotatedEvents MANOEUVRES;
    public static final AnnotatedEvents PARKING_ROUTES;
    public static final AnnotatedEvents RAILWAY_CROSSINGS;
    public static final AnnotatedEvents ROAD_EVENTS;
    public static final AnnotatedEvents ROUTE_ACTIONS;
    public static final AnnotatedEvents ROUTE_STATUS;
    public static final AnnotatedEvents SPEED_BUMPS;
    public static final AnnotatedEvents SPEED_LIMIT_EXCEEDED;
    public static final AnnotatedEvents STREETS;
    public static final AnnotatedEvents TOLL_ROAD_AHEAD;
    public static final AnnotatedEvents WAY_POINTS;
    public final int value;

    public static AnnotatedEvents valueOf(String str) {
        return (AnnotatedEvents) Enum.valueOf(AnnotatedEvents.class, str);
    }

    public static AnnotatedEvents[] values() {
        return (AnnotatedEvents[]) $VALUES.clone();
    }

    static {
        AnnotatedEvents annotatedEvents = new AnnotatedEvents("MANOEUVRES", 0, 1);
        MANOEUVRES = annotatedEvents;
        AnnotatedEvents annotatedEvents2 = new AnnotatedEvents("FASTER_ALTERNATIVE", 1, 2);
        FASTER_ALTERNATIVE = annotatedEvents2;
        AnnotatedEvents annotatedEvents3 = new AnnotatedEvents("ROAD_EVENTS", 2, 4);
        ROAD_EVENTS = annotatedEvents3;
        AnnotatedEvents annotatedEvents4 = new AnnotatedEvents("TOLL_ROAD_AHEAD", 3, 8);
        TOLL_ROAD_AHEAD = annotatedEvents4;
        AnnotatedEvents annotatedEvents5 = new AnnotatedEvents("SPEED_LIMIT_EXCEEDED", 4, 16);
        SPEED_LIMIT_EXCEEDED = annotatedEvents5;
        AnnotatedEvents annotatedEvents6 = new AnnotatedEvents("PARKING_ROUTES", 5, 32);
        PARKING_ROUTES = annotatedEvents6;
        AnnotatedEvents annotatedEvents7 = new AnnotatedEvents("STREETS", 6, 64);
        STREETS = annotatedEvents7;
        AnnotatedEvents annotatedEvents8 = new AnnotatedEvents("ROUTE_STATUS", 7, 128);
        ROUTE_STATUS = annotatedEvents8;
        AnnotatedEvents annotatedEvents9 = new AnnotatedEvents("WAY_POINTS", 8, 256);
        WAY_POINTS = annotatedEvents9;
        AnnotatedEvents annotatedEvents10 = new AnnotatedEvents("SPEED_BUMPS", 9, 512);
        SPEED_BUMPS = annotatedEvents10;
        AnnotatedEvents annotatedEvents11 = new AnnotatedEvents("RAILWAY_CROSSINGS", 10, 1024);
        RAILWAY_CROSSINGS = annotatedEvents11;
        AnnotatedEvents annotatedEvents12 = new AnnotatedEvents("LANES", 11, 2048);
        LANES = annotatedEvents12;
        AnnotatedEvents annotatedEvents13 = new AnnotatedEvents("ROUTE_ACTIONS", 12, annotatedEvents.value | annotatedEvents8.value | annotatedEvents9.value | annotatedEvents12.value);
        ROUTE_ACTIONS = annotatedEvents13;
        AnnotatedEvents annotatedEvents14 = new AnnotatedEvents("EVERYTHING", 13, annotatedEvents.value | annotatedEvents2.value | annotatedEvents3.value | annotatedEvents4.value | annotatedEvents5.value | annotatedEvents6.value | annotatedEvents7.value | annotatedEvents8.value | annotatedEvents9.value | annotatedEvents10.value | annotatedEvents11.value | annotatedEvents12.value);
        EVERYTHING = annotatedEvents14;
        $VALUES = new AnnotatedEvents[]{annotatedEvents, annotatedEvents2, annotatedEvents3, annotatedEvents4, annotatedEvents5, annotatedEvents6, annotatedEvents7, annotatedEvents8, annotatedEvents9, annotatedEvents10, annotatedEvents11, annotatedEvents12, annotatedEvents13, annotatedEvents14};
    }

    private AnnotatedEvents(String str, int i, int i2) {
        this.value = i2;
    }
}
