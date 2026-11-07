package com.google.common.base;

import com.android.dx.util.IntList$$ExternalSyntheticBUOutline0;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public abstract class Preconditions {
    public static void checkArgument(boolean z) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline0.m972m();
    }

    public static void checkArgument(boolean z, Object obj) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m(Platform.stringValueOf(obj));
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m(Platform.lenientFormat(str, objArr));
    }

    public static void checkArgument(boolean z, String str, char c2) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m(Strings.lenientFormat(str, Character.valueOf(c2)));
    }

    public static void checkArgument(boolean z, String str, int i) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m(Strings.lenientFormat(str, Integer.valueOf(i)));
    }

    public static void checkArgument(boolean z, String str, long j) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m(Strings.lenientFormat(str, Long.valueOf(j)));
    }

    public static void checkArgument(boolean z, String str, Object obj) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m(Platform.lenientFormat(str, obj));
    }

    public static void checkArgument(boolean z, String str, int i, int i2) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m(Strings.lenientFormat(str, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    public static void checkArgument(boolean z, String str, long j, long j2) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m(Strings.lenientFormat(str, Long.valueOf(j), Long.valueOf(j2)));
    }

    public static void checkArgument(boolean z, String str, Object obj, Object obj2) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m(Platform.lenientFormat(str, obj, obj2));
    }

    public static void checkState(boolean z) {
        if (z) {
            return;
        }
        MethodWriter$$ExternalSyntheticBUOutline0.m1007m();
    }

    public static void checkState(boolean z, Object obj) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m(Platform.stringValueOf(obj));
    }

    public static void checkState(boolean z, String str, int i) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m(Strings.lenientFormat(str, Integer.valueOf(i)));
    }

    public static void checkState(boolean z, String str, Object obj) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m(Platform.lenientFormat(str, obj));
    }

    public static void checkState(boolean z, String str, char c2, char c3) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m(Strings.lenientFormat(str, Character.valueOf(c2), Character.valueOf(c3)));
    }

    public static void checkState(boolean z, String str, long j, long j2) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m(Strings.lenientFormat(str, Long.valueOf(j), Long.valueOf(j2)));
    }

    public static void checkState(boolean z, String str, Object obj, Object obj2) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m(Platform.lenientFormat(str, obj, obj2));
    }

    public static <T> T checkNotNull(T t) {
        t.getClass();
        return t;
    }

    public static <T> T checkNotNull(T t, Object obj) {
        if (t != null) {
            return t;
        }
        f$$ExternalSyntheticBUOutline2.m216m(Platform.stringValueOf(obj));
        return null;
    }

    public static <T> T checkNotNull(T t, String str, Object obj) {
        if (t != null) {
            return t;
        }
        f$$ExternalSyntheticBUOutline2.m216m(Platform.lenientFormat(str, obj));
        return null;
    }

    public static int checkElementIndex(int i, int i2) {
        return checkElementIndex(i, i2, "index");
    }

    public static int checkElementIndex(int i, int i2, String str) {
        if (i >= 0 && i < i2) {
            return i;
        }
        IntList$$ExternalSyntheticBUOutline0.m231m(badElementIndex(i, i2, str));
        return 0;
    }

    private static String badElementIndex(int i, int i2, String str) {
        if (i < 0) {
            return Strings.lenientFormat("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 < 0) {
            CharCodeKt$$ExternalSyntheticBUOutline0.m908m("negative size: ", i2);
            return null;
        }
        return Strings.lenientFormat("%s (%s) must be less than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static int checkPositionIndex(int i, int i2) {
        return checkPositionIndex(i, i2, "index");
    }

    public static int checkPositionIndex(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        IntList$$ExternalSyntheticBUOutline0.m231m(badPositionIndex(i, i2, str));
        return 0;
    }

    private static String badPositionIndex(int i, int i2, String str) {
        if (i < 0) {
            return Strings.lenientFormat("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 < 0) {
            CharCodeKt$$ExternalSyntheticBUOutline0.m908m("negative size: ", i2);
            return null;
        }
        return Strings.lenientFormat("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static void checkPositionIndexes(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            IntList$$ExternalSyntheticBUOutline0.m231m(badPositionIndexes(i, i2, i3));
        }
    }

    private static String badPositionIndexes(int i, int i2, int i3) {
        if (i < 0 || i > i3) {
            return badPositionIndex(i, i3, "start index");
        }
        if (i2 < 0 || i2 > i3) {
            return badPositionIndex(i2, i3, "end index");
        }
        return Strings.lenientFormat("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
    }
}
