package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class PointKt {
    /* JADX INFO: renamed from: getX-DnnuFBc, reason: not valid java name */
    public static final float m2118getXDnnuFBc(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* JADX INFO: renamed from: getY-DnnuFBc, reason: not valid java name */
    public static final float m2119getYDnnuFBc(long j) {
        return Float.intBitsToFloat((int) (j & 4294967295L));
    }

    /* JADX INFO: renamed from: getDistance-DnnuFBc, reason: not valid java name */
    public static final float m2117getDistanceDnnuFBc(long j) {
        return (float) Math.sqrt((m2118getXDnnuFBc(j) * m2118getXDnnuFBc(j)) + (m2119getYDnnuFBc(j) * m2119getYDnnuFBc(j)));
    }

    /* JADX INFO: renamed from: dotProduct-ybeJwSQ, reason: not valid java name */
    public static final float m2115dotProductybeJwSQ(long j, long j2) {
        return (m2118getXDnnuFBc(j) * m2118getXDnnuFBc(j2)) + (m2119getYDnnuFBc(j) * m2119getYDnnuFBc(j2));
    }

    /* JADX INFO: renamed from: dotProduct-5P9i7ZU, reason: not valid java name */
    public static final float m2114dotProduct5P9i7ZU(long j, float f, float f2) {
        return (m2118getXDnnuFBc(j) * f) + (m2119getYDnnuFBc(j) * f2);
    }

    /* JADX INFO: renamed from: clockwise-ybeJwSQ, reason: not valid java name */
    public static final boolean m2112clockwiseybeJwSQ(long j, long j2) {
        return (m2118getXDnnuFBc(j) * m2119getYDnnuFBc(j2)) - (m2119getYDnnuFBc(j) * m2118getXDnnuFBc(j2)) > 0.0f;
    }

    /* JADX INFO: renamed from: getDirection-DnnuFBc, reason: not valid java name */
    public static final long m2116getDirectionDnnuFBc(long j) {
        float fM2117getDistanceDnnuFBc = m2117getDistanceDnnuFBc(j);
        if (fM2117getDistanceDnnuFBc <= 0.0f) {
            throw new IllegalArgumentException("Can't get the direction of a 0-length vector");
        }
        return m2113divso9K2fw(j, fM2117getDistanceDnnuFBc);
    }

    /* JADX INFO: renamed from: minus-ybeJwSQ, reason: not valid java name */
    public static final long m2121minusybeJwSQ(long j, long j2) {
        return FloatFloatPair.m2042constructorimpl(m2118getXDnnuFBc(j) - m2118getXDnnuFBc(j2), m2119getYDnnuFBc(j) - m2119getYDnnuFBc(j2));
    }

    /* JADX INFO: renamed from: plus-ybeJwSQ, reason: not valid java name */
    public static final long m2122plusybeJwSQ(long j, long j2) {
        return FloatFloatPair.m2042constructorimpl(m2118getXDnnuFBc(j) + m2118getXDnnuFBc(j2), m2119getYDnnuFBc(j) + m2119getYDnnuFBc(j2));
    }

    /* JADX INFO: renamed from: times-so9K2fw, reason: not valid java name */
    public static final long m2123timesso9K2fw(long j, float f) {
        return FloatFloatPair.m2042constructorimpl(m2118getXDnnuFBc(j) * f, m2119getYDnnuFBc(j) * f);
    }

    /* JADX INFO: renamed from: div-so9K2fw, reason: not valid java name */
    public static final long m2113divso9K2fw(long j, float f) {
        return FloatFloatPair.m2042constructorimpl(m2118getXDnnuFBc(j) / f, m2119getYDnnuFBc(j) / f);
    }

    /* JADX INFO: renamed from: interpolate-dLqxh1s, reason: not valid java name */
    public static final long m2120interpolatedLqxh1s(long j, long j2, float f) {
        return FloatFloatPair.m2042constructorimpl(Utils.interpolate(m2118getXDnnuFBc(j), m2118getXDnnuFBc(j2), f), Utils.interpolate(m2119getYDnnuFBc(j), m2119getYDnnuFBc(j2), f));
    }

    /* JADX INFO: renamed from: transformed-so9K2fw, reason: not valid java name */
    public static final long m2124transformedso9K2fw(long j, PointTransformer f) {
        Intrinsics.checkNotNullParameter(f, "f");
        long jMo2125transformXgqJiTY = f.mo2125transformXgqJiTY(m2118getXDnnuFBc(j), m2119getYDnnuFBc(j));
        return FloatFloatPair.m2042constructorimpl(Float.intBitsToFloat((int) (jMo2125transformXgqJiTY >> 32)), Float.intBitsToFloat((int) (jMo2125transformXgqJiTY & 4294967295L)));
    }
}
