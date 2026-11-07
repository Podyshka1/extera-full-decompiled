package com.google.android.play.integrity.internal;

import com.android.dx.util.IntList$$ExternalSyntheticBUOutline0;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class al {
    /* JADX INFO: renamed from: a */
    public static int m417a(int i, int i2, String str) {
        String strM421a;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strM421a = am.m421a("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                CharCodeKt$$ExternalSyntheticBUOutline0.m860m("negative size: ", i2);
                return 0;
            }
            strM421a = am.m421a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strM421a);
    }

    /* JADX INFO: renamed from: b */
    public static int m418b(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        IntList$$ExternalSyntheticBUOutline0.m228m(m420d(i, i2, "index"));
        return 0;
    }

    /* JADX INFO: renamed from: c */
    public static void m419c(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? m420d(i, i3, "start index") : (i2 < 0 || i2 > i3) ? m420d(i2, i3, "end index") : am.m421a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    /* JADX INFO: renamed from: d */
    private static String m420d(int i, int i2, String str) {
        if (i < 0) {
            return am.m421a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return am.m421a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m860m("negative size: ", i2);
        return null;
    }
}
