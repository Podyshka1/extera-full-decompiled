package com.google.common.math;

import java.math.RoundingMode;

/* JADX INFO: loaded from: classes5.dex */
abstract class MathPreconditions {
    public static int checkPositive(String str, int i) {
        if (i > 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " (" + i + ") must be > 0");
    }

    public static long checkNonNegative(String str, long j) {
        if (j >= 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " (" + j + ") must be >= 0");
    }

    public static double checkNonNegative(String str, double d) {
        if (d >= 0.0d) {
            return d;
        }
        throw new IllegalArgumentException(str + " (" + d + ") must be >= 0");
    }

    public static void checkRoundingUnnecessary(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    public static void checkInRangeForRoundingInputs(boolean z, double d, RoundingMode roundingMode) {
        if (z) {
            return;
        }
        throw new ArithmeticException("rounded value is out of range for input " + d + " and rounding mode " + roundingMode);
    }
}
