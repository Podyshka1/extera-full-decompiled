package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
final class RoundedCorner {
    private long center;
    private final float cornerRadius;
    private final float cosAngle;

    /* JADX INFO: renamed from: d1 */
    private final long f58d1;

    /* JADX INFO: renamed from: d2 */
    private final long f59d2;
    private final float expectedRoundCut;

    /* JADX INFO: renamed from: p0 */
    private final long f60p0;

    /* JADX INFO: renamed from: p1 */
    private final long f61p1;

    /* JADX INFO: renamed from: p2 */
    private final long f62p2;
    private final CornerRounding rounding;
    private final float sinAngle;
    private final float smoothing;

    public /* synthetic */ RoundedCorner(long j, long j2, long j3, CornerRounding cornerRounding, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, cornerRounding);
    }

    private RoundedCorner(long j, long j2, long j3, CornerRounding cornerRounding) {
        this.f60p0 = j;
        this.f61p1 = j2;
        this.f62p2 = j3;
        this.rounding = cornerRounding;
        long jM2116getDirectionDnnuFBc = PointKt.m2116getDirectionDnnuFBc(PointKt.m2121minusybeJwSQ(j, j2));
        this.f58d1 = jM2116getDirectionDnnuFBc;
        long jM2116getDirectionDnnuFBc2 = PointKt.m2116getDirectionDnnuFBc(PointKt.m2121minusybeJwSQ(j3, j2));
        this.f59d2 = jM2116getDirectionDnnuFBc2;
        float radius = cornerRounding != null ? cornerRounding.getRadius() : 0.0f;
        this.cornerRadius = radius;
        this.smoothing = cornerRounding != null ? cornerRounding.getSmoothing() : 0.0f;
        float fM2115dotProductybeJwSQ = PointKt.m2115dotProductybeJwSQ(jM2116getDirectionDnnuFBc, jM2116getDirectionDnnuFBc2);
        this.cosAngle = fM2115dotProductybeJwSQ;
        float f = 1;
        float fSqrt = (float) Math.sqrt(f - Utils.square(fM2115dotProductybeJwSQ));
        this.sinAngle = fSqrt;
        this.expectedRoundCut = ((double) fSqrt) > 0.001d ? (radius * (fM2115dotProductybeJwSQ + f)) / fSqrt : 0.0f;
        this.center = FloatFloatPair.m2042constructorimpl(0.0f, 0.0f);
    }

    public final float getExpectedRoundCut() {
        return this.expectedRoundCut;
    }

    public final float getExpectedCut() {
        return (1 + this.smoothing) * this.expectedRoundCut;
    }

    /* JADX INFO: renamed from: getCenter-1ufDz9w, reason: not valid java name */
    public final long m2128getCenter1ufDz9w() {
        return this.center;
    }

    public final List getCubics(float f, float f2) {
        float fMin = Math.min(f, f2);
        float f3 = this.expectedRoundCut;
        if (f3 < 1.0E-4f || fMin < 1.0E-4f || this.cornerRadius < 1.0E-4f) {
            long j = this.f61p1;
            this.center = j;
            return CollectionsKt.listOf(Cubic.Companion.straightLine(PointKt.m2118getXDnnuFBc(j), PointKt.m2119getYDnnuFBc(this.f61p1), PointKt.m2118getXDnnuFBc(this.f61p1), PointKt.m2119getYDnnuFBc(this.f61p1)));
        }
        float fMin2 = Math.min(fMin, f3);
        float fCalculateActualSmoothingValue = calculateActualSmoothingValue(f);
        float fCalculateActualSmoothingValue2 = calculateActualSmoothingValue(f2);
        float f4 = (this.cornerRadius * fMin2) / this.expectedRoundCut;
        this.center = PointKt.m2122plusybeJwSQ(this.f61p1, PointKt.m2123timesso9K2fw(PointKt.m2116getDirectionDnnuFBc(PointKt.m2113divso9K2fw(PointKt.m2122plusybeJwSQ(this.f58d1, this.f59d2), 2.0f)), (float) Math.sqrt(Utils.square(f4) + Utils.square(fMin2))));
        long jM2122plusybeJwSQ = PointKt.m2122plusybeJwSQ(this.f61p1, PointKt.m2123timesso9K2fw(this.f58d1, fMin2));
        long jM2122plusybeJwSQ2 = PointKt.m2122plusybeJwSQ(this.f61p1, PointKt.m2123timesso9K2fw(this.f59d2, fMin2));
        Cubic cubicM2126computeFlankingCurveoAJzIJU = m2126computeFlankingCurveoAJzIJU(fMin2, fCalculateActualSmoothingValue, this.f61p1, this.f60p0, jM2122plusybeJwSQ, jM2122plusybeJwSQ2, this.center, f4);
        Cubic cubicReverse = m2126computeFlankingCurveoAJzIJU(fMin2, fCalculateActualSmoothingValue2, this.f61p1, this.f62p2, jM2122plusybeJwSQ2, jM2122plusybeJwSQ, this.center, f4).reverse();
        return CollectionsKt.listOf((Object[]) new Cubic[]{cubicM2126computeFlankingCurveoAJzIJU, Cubic.Companion.circularArc(PointKt.m2118getXDnnuFBc(this.center), PointKt.m2119getYDnnuFBc(this.center), cubicM2126computeFlankingCurveoAJzIJU.getAnchor1X(), cubicM2126computeFlankingCurveoAJzIJU.getAnchor1Y(), cubicReverse.getAnchor0X(), cubicReverse.getAnchor0Y()), cubicReverse});
    }

    private final float calculateActualSmoothingValue(float f) {
        if (f > getExpectedCut()) {
            return this.smoothing;
        }
        float f2 = this.expectedRoundCut;
        if (f > f2) {
            return (this.smoothing * (f - f2)) / (getExpectedCut() - this.expectedRoundCut);
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: computeFlankingCurve-oAJzIJU, reason: not valid java name */
    private final Cubic m2126computeFlankingCurveoAJzIJU(float f, float f2, long j, long j2, long j3, long j4, long j5, float f3) {
        long jM2116getDirectionDnnuFBc = PointKt.m2116getDirectionDnnuFBc(PointKt.m2121minusybeJwSQ(j2, j));
        long jM2122plusybeJwSQ = PointKt.m2122plusybeJwSQ(j, PointKt.m2123timesso9K2fw(PointKt.m2123timesso9K2fw(jM2116getDirectionDnnuFBc, f), 1 + f2));
        long jM2047unboximpl = j3;
        long jM2120interpolatedLqxh1s = PointKt.m2120interpolatedLqxh1s(jM2047unboximpl, PointKt.m2113divso9K2fw(PointKt.m2122plusybeJwSQ(j3, j4), 2.0f), f2);
        long jM2122plusybeJwSQ2 = PointKt.m2122plusybeJwSQ(j5, PointKt.m2123timesso9K2fw(Utils.directionVector(PointKt.m2118getXDnnuFBc(jM2120interpolatedLqxh1s) - PointKt.m2118getXDnnuFBc(j5), PointKt.m2119getYDnnuFBc(jM2120interpolatedLqxh1s) - PointKt.m2119getYDnnuFBc(j5)), f3));
        FloatFloatPair floatFloatPairM2127lineIntersectionCBFvKDc = m2127lineIntersectionCBFvKDc(j2, jM2116getDirectionDnnuFBc, jM2122plusybeJwSQ2, Utils.m2131rotate90DnnuFBc(PointKt.m2121minusybeJwSQ(jM2122plusybeJwSQ2, j5)));
        if (floatFloatPairM2127lineIntersectionCBFvKDc != null) {
            jM2047unboximpl = floatFloatPairM2127lineIntersectionCBFvKDc.m2047unboximpl();
        }
        return new Cubic(jM2122plusybeJwSQ, PointKt.m2113divso9K2fw(PointKt.m2122plusybeJwSQ(jM2122plusybeJwSQ, PointKt.m2123timesso9K2fw(jM2047unboximpl, 2.0f)), 3.0f), jM2047unboximpl, jM2122plusybeJwSQ2, null);
    }

    /* JADX INFO: renamed from: lineIntersection-CBFvKDc, reason: not valid java name */
    private final FloatFloatPair m2127lineIntersectionCBFvKDc(long j, long j2, long j3, long j4) {
        long jM2131rotate90DnnuFBc = Utils.m2131rotate90DnnuFBc(j4);
        float fM2115dotProductybeJwSQ = PointKt.m2115dotProductybeJwSQ(j2, jM2131rotate90DnnuFBc);
        if (Math.abs(fM2115dotProductybeJwSQ) < 1.0E-4f) {
            return null;
        }
        float fM2115dotProductybeJwSQ2 = PointKt.m2115dotProductybeJwSQ(PointKt.m2121minusybeJwSQ(j3, j), jM2131rotate90DnnuFBc);
        if (Math.abs(fM2115dotProductybeJwSQ) < Math.abs(fM2115dotProductybeJwSQ2) * 1.0E-4f) {
            return null;
        }
        return FloatFloatPair.m2041boximpl(PointKt.m2122plusybeJwSQ(j, PointKt.m2123timesso9K2fw(j2, fM2115dotProductybeJwSQ2 / fM2115dotProductybeJwSQ)));
    }
}
