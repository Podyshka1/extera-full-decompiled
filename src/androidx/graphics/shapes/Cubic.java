package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import java.util.Arrays;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class Cubic {
    public static final Companion Companion = new Companion(null);
    private final float[] points;

    public /* synthetic */ Cubic(long j, long j2, long j3, long j4, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4);
    }

    public Cubic(float[] points) {
        Intrinsics.checkNotNullParameter(points, "points");
        this.points = points;
        if (points.length != 8) {
            throw new IllegalArgumentException("Points array size should be 8");
        }
    }

    public /* synthetic */ Cubic(float[] fArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new float[8] : fArr);
    }

    public final float[] getPoints$graphics_shapes_release() {
        return this.points;
    }

    public final float getAnchor0X() {
        return this.points[0];
    }

    public final float getAnchor0Y() {
        return this.points[1];
    }

    public final float getControl0X() {
        return this.points[2];
    }

    public final float getControl0Y() {
        return this.points[3];
    }

    public final float getControl1X() {
        return this.points[4];
    }

    public final float getControl1Y() {
        return this.points[5];
    }

    public final float getAnchor1X() {
        return this.points[6];
    }

    public final float getAnchor1Y() {
        return this.points[7];
    }

    private Cubic(long j, long j2, long j3, long j4) {
        this(new float[]{PointKt.m2118getXDnnuFBc(j), PointKt.m2119getYDnnuFBc(j), PointKt.m2118getXDnnuFBc(j2), PointKt.m2119getYDnnuFBc(j2), PointKt.m2118getXDnnuFBc(j3), PointKt.m2119getYDnnuFBc(j3), PointKt.m2118getXDnnuFBc(j4), PointKt.m2119getYDnnuFBc(j4)});
    }

    /* JADX INFO: renamed from: pointOnCurve-OOQOV4g$graphics_shapes_release, reason: not valid java name */
    public final long m2111pointOnCurveOOQOV4g$graphics_shapes_release(float f) {
        float f2 = 1 - f;
        float f3 = f2 * f2 * f2;
        float f4 = 3 * f;
        float f5 = f4 * f2 * f2;
        float f6 = f4 * f * f2;
        float f7 = f * f * f;
        return FloatFloatPair.m2042constructorimpl((getAnchor0X() * f3) + (getControl0X() * f5) + (getControl1X() * f6) + (getAnchor1X() * f7), (getAnchor0Y() * f3) + (getControl0Y() * f5) + (getControl1Y() * f6) + (getAnchor1Y() * f7));
    }

    public final boolean zeroLength$graphics_shapes_release() {
        return Math.abs(getAnchor0X() - getAnchor1X()) < 1.0E-4f && Math.abs(getAnchor0Y() - getAnchor1Y()) < 1.0E-4f;
    }

    private final boolean zeroIsh(float f) {
        return Math.abs(f) < 1.0E-4f;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01c9 A[PHI: r3 r7
  0x01c9: PHI (r3v15 float) = (r3v12 float), (r3v21 float) binds: [B:85:0x0218, B:62:0x01c7] A[DONT_GENERATE, DONT_INLINE]
  0x01c9: PHI (r7v14 float) = (r7v10 float), (r7v16 float) binds: [B:85:0x0218, B:62:0x01c7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x021b A[PHI: r9 r15
  0x021b: PHI (r9v5 float) = (r9v2 float), (r9v3 float), (r9v3 float), (r9v2 float), (r9v2 float), (r9v2 float) binds: [B:65:0x01d2, B:77:0x0201, B:79:0x0205, B:51:0x01a6, B:54:0x01b0, B:56:0x01b4] A[DONT_GENERATE, DONT_INLINE]
  0x021b: PHI (r15v13 float) = (r15v9 float), (r15v10 float), (r15v10 float), (r15v9 float), (r15v9 float), (r15v9 float) binds: [B:65:0x01d2, B:77:0x0201, B:79:0x0205, B:51:0x01a6, B:54:0x01b0, B:56:0x01b4] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void calculateBounds$graphics_shapes_release(float[] bounds, boolean z) {
        char c;
        char c2;
        char c3;
        float f;
        float control0Y;
        float fM2119getYDnnuFBc;
        float f2;
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        if (zeroLength$graphics_shapes_release()) {
            bounds[0] = getAnchor0X();
            bounds[1] = getAnchor0Y();
            bounds[2] = getAnchor0X();
            bounds[3] = getAnchor0Y();
            return;
        }
        float fMin = Math.min(getAnchor0X(), getAnchor1X());
        float fMin2 = Math.min(getAnchor0Y(), getAnchor1Y());
        float fMax = Math.max(getAnchor0X(), getAnchor1X());
        float fMax2 = Math.max(getAnchor0Y(), getAnchor1Y());
        if (z) {
            bounds[0] = Math.min(fMin, Math.min(getControl0X(), getControl1X()));
            bounds[1] = Math.min(fMin2, Math.min(getControl0Y(), getControl1Y()));
            bounds[2] = Math.max(fMax, Math.max(getControl0X(), getControl1X()));
            bounds[3] = Math.max(fMax2, Math.max(getControl0Y(), getControl1Y()));
            return;
        }
        float f3 = 3;
        float control0X = (((-getAnchor0X()) + (getControl0X() * f3)) - (getControl1X() * f3)) + getAnchor1X();
        float f4 = 2;
        float f5 = 4;
        float anchor0X = ((getAnchor0X() * f4) - (getControl0X() * f5)) + (getControl1X() * f4);
        float control0X2 = (-getAnchor0X()) + getControl0X();
        if (!zeroIsh(control0X)) {
            float f6 = (anchor0X * anchor0X) - ((f5 * control0X) * control0X2);
            if (f6 >= 0.0f) {
                float f7 = -anchor0X;
                c = 0;
                c2 = 3;
                double d = f6;
                c3 = 2;
                f = fMin2;
                float f8 = control0X * f4;
                float fSqrt = (((float) Math.sqrt(d)) + f7) / f8;
                if (0.0f <= fSqrt && fSqrt <= 1.0f) {
                    float fM2118getXDnnuFBc = PointKt.m2118getXDnnuFBc(m2111pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt));
                    if (fM2118getXDnnuFBc < fMin) {
                        fMin = fM2118getXDnnuFBc;
                    }
                    if (fM2118getXDnnuFBc > fMax) {
                        fMax = fM2118getXDnnuFBc;
                    }
                }
                float fSqrt2 = (f7 - ((float) Math.sqrt(d))) / f8;
                if (0.0f <= fSqrt2 && fSqrt2 <= 1.0f) {
                    float fM2118getXDnnuFBc2 = PointKt.m2118getXDnnuFBc(m2111pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt2));
                    if (fM2118getXDnnuFBc2 < fMin) {
                        fMin = fM2118getXDnnuFBc2;
                    }
                    if (fM2118getXDnnuFBc2 > fMax) {
                        fMax = fM2118getXDnnuFBc2;
                    }
                }
            }
            control0Y = (((-getAnchor0Y()) + (getControl0Y() * f3)) - (f3 * getControl1Y())) + getAnchor1Y();
            float anchor0Y = ((getAnchor0Y() * f4) - (getControl0Y() * f5)) + (getControl1Y() * f4);
            float control0Y2 = (-getAnchor0Y()) + getControl0Y();
            if (zeroIsh(control0Y)) {
                float f9 = (anchor0Y * anchor0Y) - ((f5 * control0Y) * control0Y2);
                if (f9 >= 0.0f) {
                    float f10 = -anchor0Y;
                    double d2 = f9;
                    float f11 = f4 * control0Y;
                    float fSqrt3 = (((float) Math.sqrt(d2)) + f10) / f11;
                    if (0.0f <= fSqrt3 && fSqrt3 <= 1.0f) {
                        float fM2119getYDnnuFBc2 = PointKt.m2119getYDnnuFBc(m2111pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt3));
                        if (fM2119getYDnnuFBc2 < f) {
                            f = fM2119getYDnnuFBc2;
                        }
                        if (fM2119getYDnnuFBc2 > fMax2) {
                            fMax2 = fM2119getYDnnuFBc2;
                        }
                    }
                    float fSqrt4 = (f10 - ((float) Math.sqrt(d2))) / f11;
                    if (0.0f <= fSqrt4 && fSqrt4 <= 1.0f) {
                        fM2119getYDnnuFBc = PointKt.m2119getYDnnuFBc(m2111pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt4));
                        f2 = fM2119getYDnnuFBc < f ? fM2119getYDnnuFBc : f;
                        if (fM2119getYDnnuFBc > fMax2) {
                        }
                    }
                }
            } else if (anchor0Y == 0.0f) {
                f2 = f;
            } else {
                float f12 = (f4 * control0Y2) / ((-2) * anchor0Y);
                if (0.0f <= f12 && f12 <= 1.0f) {
                    fM2119getYDnnuFBc = PointKt.m2119getYDnnuFBc(m2111pointOnCurveOOQOV4g$graphics_shapes_release(f12));
                    f2 = fM2119getYDnnuFBc < f ? fM2119getYDnnuFBc : f;
                    if (fM2119getYDnnuFBc > fMax2) {
                        fMax2 = fM2119getYDnnuFBc;
                    }
                }
            }
            bounds[c] = fMin;
            bounds[1] = f2;
            bounds[c3] = fMax;
            bounds[c2] = fMax2;
        }
        if (anchor0X != 0.0f) {
            float f13 = (control0X2 * f4) / ((-2) * anchor0X);
            if (0.0f <= f13 && f13 <= 1.0f) {
                float fM2118getXDnnuFBc3 = PointKt.m2118getXDnnuFBc(m2111pointOnCurveOOQOV4g$graphics_shapes_release(f13));
                if (fM2118getXDnnuFBc3 < fMin) {
                    fMin = fM2118getXDnnuFBc3;
                }
                if (fM2118getXDnnuFBc3 > fMax) {
                    fMax = fM2118getXDnnuFBc3;
                }
            }
        }
        c = 0;
        c2 = 3;
        c3 = 2;
        f = fMin2;
        control0Y = (((-getAnchor0Y()) + (getControl0Y() * f3)) - (f3 * getControl1Y())) + getAnchor1Y();
        float anchor0Y2 = ((getAnchor0Y() * f4) - (getControl0Y() * f5)) + (getControl1Y() * f4);
        float control0Y22 = (-getAnchor0Y()) + getControl0Y();
        if (zeroIsh(control0Y)) {
        }
        bounds[c] = fMin;
        bounds[1] = f2;
        bounds[c3] = fMax;
        bounds[c2] = fMax2;
    }

    public final Pair split(float f) {
        float f2 = 1 - f;
        long jM2111pointOnCurveOOQOV4g$graphics_shapes_release = m2111pointOnCurveOOQOV4g$graphics_shapes_release(f);
        float f3 = f2 * f2;
        float f4 = 2 * f2 * f;
        float f5 = f * f;
        return TuplesKt.m1081to(CubicKt.Cubic(getAnchor0X(), getAnchor0Y(), (getAnchor0X() * f2) + (getControl0X() * f), (getAnchor0Y() * f2) + (getControl0Y() * f), (getAnchor0X() * f3) + (getControl0X() * f4) + (getControl1X() * f5), (getAnchor0Y() * f3) + (getControl0Y() * f4) + (getControl1Y() * f5), PointKt.m2118getXDnnuFBc(jM2111pointOnCurveOOQOV4g$graphics_shapes_release), PointKt.m2119getYDnnuFBc(jM2111pointOnCurveOOQOV4g$graphics_shapes_release)), CubicKt.Cubic(PointKt.m2118getXDnnuFBc(jM2111pointOnCurveOOQOV4g$graphics_shapes_release), PointKt.m2119getYDnnuFBc(jM2111pointOnCurveOOQOV4g$graphics_shapes_release), (getControl0X() * f3) + (getControl1X() * f4) + (getAnchor1X() * f5), (getControl0Y() * f3) + (getControl1Y() * f4) + (getAnchor1Y() * f5), (getControl1X() * f2) + (getAnchor1X() * f), (getControl1Y() * f2) + (getAnchor1Y() * f), getAnchor1X(), getAnchor1Y()));
    }

    public final Cubic reverse() {
        return CubicKt.Cubic(getAnchor1X(), getAnchor1Y(), getControl1X(), getControl1Y(), getControl0X(), getControl0Y(), getAnchor0X(), getAnchor0Y());
    }

    public String toString() {
        return "anchor0: (" + getAnchor0X() + ", " + getAnchor0Y() + ") control0: (" + getControl0X() + ", " + getControl0Y() + "), control1: (" + getControl1X() + ", " + getControl1Y() + "), anchor1: (" + getAnchor1X() + ", " + getAnchor1Y() + ')';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Cubic) {
            return Arrays.equals(this.points, ((Cubic) obj).points);
        }
        return false;
    }

    public final Cubic transformed(PointTransformer f) {
        Intrinsics.checkNotNullParameter(f, "f");
        MutableCubic mutableCubic = new MutableCubic();
        ArraysKt.copyInto$default(this.points, mutableCubic.getPoints$graphics_shapes_release(), 0, 0, 0, 14, (Object) null);
        mutableCubic.transform(f);
        return mutableCubic;
    }

    public int hashCode() {
        return Arrays.hashCode(this.points);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Cubic straightLine(float f, float f2, float f3, float f4) {
            return CubicKt.Cubic(f, f2, Utils.interpolate(f, f3, 0.33333334f), Utils.interpolate(f2, f4, 0.33333334f), Utils.interpolate(f, f3, 0.6666667f), Utils.interpolate(f2, f4, 0.6666667f), f3, f4);
        }

        public final Cubic circularArc(float f, float f2, float f3, float f4, float f5, float f6) {
            float f7 = f3 - f;
            float f8 = f4 - f2;
            long jDirectionVector = Utils.directionVector(f7, f8);
            float f9 = f5 - f;
            float f10 = f6 - f2;
            long jDirectionVector2 = Utils.directionVector(f9, f10);
            long jM2131rotate90DnnuFBc = Utils.m2131rotate90DnnuFBc(jDirectionVector);
            long jM2131rotate90DnnuFBc2 = Utils.m2131rotate90DnnuFBc(jDirectionVector2);
            boolean z = PointKt.m2114dotProduct5P9i7ZU(jM2131rotate90DnnuFBc, f9, f10) >= 0.0f;
            float fM2115dotProductybeJwSQ = PointKt.m2115dotProductybeJwSQ(jDirectionVector, jDirectionVector2);
            if (fM2115dotProductybeJwSQ > 0.999f) {
                return straightLine(f3, f4, f5, f6);
            }
            float fDistance = ((((Utils.distance(f7, f8) * 4.0f) / 3.0f) * (((float) Math.sqrt(2 * r9)) - ((float) Math.sqrt(r5 - (fM2115dotProductybeJwSQ * fM2115dotProductybeJwSQ))))) / (1 - fM2115dotProductybeJwSQ)) * (z ? 1.0f : -1.0f);
            return CubicKt.Cubic(f3, f4, f3 + (PointKt.m2118getXDnnuFBc(jM2131rotate90DnnuFBc) * fDistance), f4 + (PointKt.m2119getYDnnuFBc(jM2131rotate90DnnuFBc) * fDistance), f5 - (PointKt.m2118getXDnnuFBc(jM2131rotate90DnnuFBc2) * fDistance), f6 - (PointKt.m2119getYDnnuFBc(jM2131rotate90DnnuFBc2) * fDistance), f5, f6);
        }
    }
}
