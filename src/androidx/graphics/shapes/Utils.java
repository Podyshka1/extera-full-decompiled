package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class Utils {
    private static final long Zero = FloatFloatPair.m2042constructorimpl(0.0f, 0.0f);
    private static final float FloatPi = 3.1415927f;
    private static final float TwoPi = 6.2831855f;

    public static final float distanceSquared(float f, float f2) {
        return (f * f) + (f2 * f2);
    }

    public static final float interpolate(float f, float f2, float f3) {
        return ((1 - f3) * f) + (f3 * f2);
    }

    public static final float positiveModulo(float f, float f2) {
        return ((f % f2) + f2) % f2;
    }

    public static final float square(float f) {
        return f * f;
    }

    public static final float distance(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    public static final long directionVector(float f, float f2) {
        float fDistance = distance(f, f2);
        if (fDistance <= 0.0f) {
            throw new IllegalArgumentException("Required distance greater than zero");
        }
        return FloatFloatPair.m2042constructorimpl(f / fDistance, f2 / fDistance);
    }

    public static final long directionVector(float f) {
        double d = f;
        return FloatFloatPair.m2042constructorimpl((float) Math.cos(d), (float) Math.sin(d));
    }

    public static final float angle(float f, float f2) {
        float fAtan2 = (float) Math.atan2(f2, f);
        float f3 = TwoPi;
        return (fAtan2 + f3) % f3;
    }

    /* JADX INFO: renamed from: radialToCartesian-L6JJ3z0$default, reason: not valid java name */
    public static /* synthetic */ long m2130radialToCartesianL6JJ3z0$default(float f, float f2, long j, int i, Object obj) {
        if ((i & 4) != 0) {
            j = Zero;
        }
        return m2129radialToCartesianL6JJ3z0(f, f2, j);
    }

    /* JADX INFO: renamed from: radialToCartesian-L6JJ3z0, reason: not valid java name */
    public static final long m2129radialToCartesianL6JJ3z0(float f, float f2, long j) {
        return PointKt.m2122plusybeJwSQ(PointKt.m2123timesso9K2fw(directionVector(f2), f), j);
    }

    /* JADX INFO: renamed from: rotate90-DnnuFBc, reason: not valid java name */
    public static final long m2131rotate90DnnuFBc(long j) {
        return FloatFloatPair.m2042constructorimpl(-PointKt.m2119getYDnnuFBc(j), PointKt.m2118getXDnnuFBc(j));
    }

    public static final float getFloatPi() {
        return FloatPi;
    }

    public static final float getTwoPi() {
        return TwoPi;
    }

    public static final float findMinimum(float f, float f2, float f3, FindMinimumFunction f4) {
        Intrinsics.checkNotNullParameter(f4, "f");
        while (f2 - f > f3) {
            float f5 = 2;
            float f6 = 3;
            float f7 = ((f5 * f) + f2) / f6;
            float f8 = ((f5 * f2) + f) / f6;
            if (f4.invoke(f7) < f4.invoke(f8)) {
                f2 = f8;
            } else {
                f = f7;
            }
        }
        return (f + f2) / 2;
    }
}
