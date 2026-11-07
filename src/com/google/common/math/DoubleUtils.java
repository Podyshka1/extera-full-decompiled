package com.google.common.math;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes5.dex */
abstract class DoubleUtils {
    public static long getSignificand(double d) {
        Preconditions.checkArgument(isFinite(d), "not a normal value");
        int exponent = Math.getExponent(d);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d) & 4503599627370495L;
        return exponent == -1023 ? jDoubleToRawLongBits << 1 : jDoubleToRawLongBits | 4503599627370496L;
    }

    public static boolean isFinite(double d) {
        return Math.getExponent(d) <= 1023;
    }

    public static boolean isNormal(double d) {
        return Math.getExponent(d) >= -1022;
    }

    public static double scaleNormalize(double d) {
        return Double.longBitsToDouble((Double.doubleToRawLongBits(d) & 4503599627370495L) | 4607182418800017408L);
    }
}
