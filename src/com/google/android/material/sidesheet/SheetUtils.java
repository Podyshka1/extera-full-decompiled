package com.google.android.material.sidesheet;

/* JADX INFO: loaded from: classes5.dex */
final class SheetUtils {
    private SheetUtils() {
    }

    public static boolean isSwipeMostlyHorizontal(float f, float f2) {
        return Math.abs(f) > Math.abs(f2);
    }
}
