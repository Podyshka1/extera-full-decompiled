package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0018\b\u0016\u0018\u0000 E2\u00020\u0001:\u0001EB\u0013\b\u0000\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B9\b\u0010\u0012\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007\u0012\n\u0010\t\u001a\u00060\u0006j\u0002`\u0007\u0012\n\u0010\n\u001a\u00060\u0006j\u0002`\u0007\u0012\n\u0010\u000b\u001a\u00060\u0006j\u0002`\u0007¢\u0006\u0004\b\u0004\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0015\u001a\u00060\u0006j\u0002`\u00072\u0006\u0010\u0012\u001a\u00020\rH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0018\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0016\u0010\u0017J#\u0010\u001e\u001a\u00020\u001b2\b\b\u0002\u0010\u0019\u001a\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00000\u001f2\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b \u0010!J\r\u0010\"\u001a\u00020\u0000¢\u0006\u0004\b\"\u0010#J\u000f\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b%\u0010&J\u001a\u0010(\u001a\u00020\u000f2\b\u0010'\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b(\u0010)J\u0015\u0010,\u001a\u00020\u00002\u0006\u0010+\u001a\u00020*¢\u0006\u0004\b,\u0010-J\u000f\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u00101\u001a\u0004\b2\u00103R\u0011\u00106\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b4\u00105R\u0011\u00108\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b7\u00105R\u0011\u0010:\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b9\u00105R\u0011\u0010<\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b;\u00105R\u0011\u0010>\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b=\u00105R\u0011\u0010@\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b?\u00105R\u0011\u0010B\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\bA\u00105R\u0011\u0010D\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\bC\u00105\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006F"}, d2 = {"Landroidx/graphics/shapes/Cubic;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "points", "<init>", "([F)V", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/Point;", "anchor0", "control0", "control1", "anchor1", "(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "value", _UrlKt.FRAGMENT_ENCODE_SET, "zeroIsh", "(F)Z", "t", "pointOnCurve-OOQOV4g$graphics_shapes_release", "(F)J", "pointOnCurve", "zeroLength$graphics_shapes_release", "()Z", "zeroLength", "bounds", "approximate", _UrlKt.FRAGMENT_ENCODE_SET, "calculateBounds$graphics_shapes_release", "([FZ)V", "calculateBounds", "Lkotlin/Pair;", "split", "(F)Lkotlin/Pair;", "reverse", "()Landroidx/graphics/shapes/Cubic;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "other", "equals", "(Ljava/lang/Object;)Z", "Landroidx/graphics/shapes/PointTransformer;", "f", "transformed", "(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/Cubic;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "[F", "getPoints$graphics_shapes_release", "()[F", "getAnchor0X", "()F", "anchor0X", "getAnchor0Y", "anchor0Y", "getControl0X", "control0X", "getControl0Y", "control0Y", "getControl1X", "control1X", "getControl1Y", "control1Y", "getAnchor1X", "anchor1X", "getAnchor1Y", "anchor1Y", "Companion", "graphics-shapes_release"}, m862k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCubic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cubic.kt\nandroidx/graphics/shapes/Cubic\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,448:1\n1#2:449\n*E\n"})
public class Cubic {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final float[] points;

    public /* synthetic */ Cubic(long j, long j2, long j3, long j4, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4);
    }

    public Cubic(float[] fArr) {
        this.points = fArr;
        if (fArr.length == 8) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m212m("Points array size should be 8");
        throw null;
    }

    public /* synthetic */ Cubic(float[] fArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new float[8] : fArr);
    }

    /* JADX INFO: renamed from: getPoints$graphics_shapes_release, reason: from getter */
    public final float[] getPoints() {
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
        this(new float[]{PointKt.m1804getXDnnuFBc(j), PointKt.m1805getYDnnuFBc(j), PointKt.m1804getXDnnuFBc(j2), PointKt.m1805getYDnnuFBc(j2), PointKt.m1804getXDnnuFBc(j3), PointKt.m1805getYDnnuFBc(j3), PointKt.m1804getXDnnuFBc(j4), PointKt.m1805getYDnnuFBc(j4)});
    }

    /* JADX INFO: renamed from: pointOnCurve-OOQOV4g$graphics_shapes_release, reason: not valid java name */
    public final long m1797pointOnCurveOOQOV4g$graphics_shapes_release(float t) {
        float f = 1.0f - t;
        float f2 = f * f * f;
        float f3 = 3.0f * t;
        float f4 = f3 * f * f;
        float f5 = f3 * t * f;
        float f6 = t * t * t;
        return FloatFloatPair.m1728constructorimpl((getAnchor0X() * f2) + (getControl0X() * f4) + (getControl1X() * f5) + (getAnchor1X() * f6), (getAnchor0Y() * f2) + (getControl0Y() * f4) + (getControl1Y() * f5) + (getAnchor1Y() * f6));
    }

    public final boolean zeroLength$graphics_shapes_release() {
        return Math.abs(getAnchor0X() - getAnchor1X()) < 1.0E-4f && Math.abs(getAnchor0Y() - getAnchor1Y()) < 1.0E-4f;
    }

    private final boolean zeroIsh(float value) {
        return Math.abs(value) < 1.0E-4f;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01bf A[PHI: r0 r6
  0x01bf: PHI (r0v2 float) = (r0v1 float), (r0v3 float) binds: [B:83:0x020c, B:61:0x01bd] A[DONT_GENERATE, DONT_INLINE]
  0x01bf: PHI (r6v9 float) = (r6v4 float), (r6v10 float) binds: [B:83:0x020c, B:61:0x01bd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void calculateBounds$graphics_shapes_release(float[] bounds, boolean approximate) {
        char c2;
        char c3;
        char c4;
        char c5;
        float control0Y;
        float fM1805getYDnnuFBc;
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
        if (approximate) {
            bounds[0] = Math.min(fMin, Math.min(getControl0X(), getControl1X()));
            bounds[1] = Math.min(fMin2, Math.min(getControl0Y(), getControl1Y()));
            bounds[2] = Math.max(fMax, Math.max(getControl0X(), getControl1X()));
            bounds[3] = Math.max(fMax2, Math.max(getControl0Y(), getControl1Y()));
            return;
        }
        float control0X = (((-getAnchor0X()) + (getControl0X() * 3.0f)) - (getControl1X() * 3.0f)) + getAnchor1X();
        float anchor0X = ((getAnchor0X() * 2.0f) - (getControl0X() * 4.0f)) + (getControl1X() * 2.0f);
        float control0X2 = (-getAnchor0X()) + getControl0X();
        if (!zeroIsh(control0X)) {
            float f = (anchor0X * anchor0X) - ((4.0f * control0X) * control0X2);
            if (f >= 0.0f) {
                float f2 = -anchor0X;
                c2 = 3;
                c3 = 2;
                double d = f;
                c4 = 1;
                c5 = 0;
                float f3 = control0X * 2.0f;
                float fSqrt = (((float) Math.sqrt(d)) + f2) / f3;
                if (0.0f <= fSqrt && fSqrt <= 1.0f) {
                    float fM1804getXDnnuFBc = PointKt.m1804getXDnnuFBc(m1797pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt));
                    if (fM1804getXDnnuFBc < fMin) {
                        fMin = fM1804getXDnnuFBc;
                    }
                    if (fM1804getXDnnuFBc > fMax) {
                        fMax = fM1804getXDnnuFBc;
                    }
                }
                float fSqrt2 = (f2 - ((float) Math.sqrt(d))) / f3;
                if (0.0f <= fSqrt2 && fSqrt2 <= 1.0f) {
                    float fM1804getXDnnuFBc2 = PointKt.m1804getXDnnuFBc(m1797pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt2));
                    if (fM1804getXDnnuFBc2 < fMin) {
                        fMin = fM1804getXDnnuFBc2;
                    }
                    if (fM1804getXDnnuFBc2 > fMax) {
                        fMax = fM1804getXDnnuFBc2;
                    }
                }
            }
            control0Y = (((-getAnchor0Y()) + (getControl0Y() * 3.0f)) - (3.0f * getControl1Y())) + getAnchor1Y();
            float anchor0Y = ((getAnchor0Y() * 2.0f) - (getControl0Y() * 4.0f)) + (getControl1Y() * 2.0f);
            float control0Y2 = (-getAnchor0Y()) + getControl0Y();
            if (zeroIsh(control0Y)) {
                float f4 = (anchor0Y * anchor0Y) - ((4.0f * control0Y) * control0Y2);
                if (f4 >= 0.0f) {
                    float f5 = -anchor0Y;
                    double d2 = f4;
                    float f6 = 2.0f * control0Y;
                    float fSqrt3 = (((float) Math.sqrt(d2)) + f5) / f6;
                    if (0.0f <= fSqrt3 && fSqrt3 <= 1.0f) {
                        float fM1805getYDnnuFBc2 = PointKt.m1805getYDnnuFBc(m1797pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt3));
                        if (fM1805getYDnnuFBc2 < fMin2) {
                            fMin2 = fM1805getYDnnuFBc2;
                        }
                        if (fM1805getYDnnuFBc2 > fMax2) {
                            fMax2 = fM1805getYDnnuFBc2;
                        }
                    }
                    float fSqrt4 = (f5 - ((float) Math.sqrt(d2))) / f6;
                    if (0.0f <= fSqrt4 && fSqrt4 <= 1.0f) {
                        fM1805getYDnnuFBc = PointKt.m1805getYDnnuFBc(m1797pointOnCurveOOQOV4g$graphics_shapes_release(fSqrt4));
                        if (fM1805getYDnnuFBc < fMin2) {
                            fMin2 = fM1805getYDnnuFBc;
                        }
                        if (fM1805getYDnnuFBc > fMax2) {
                        }
                    }
                }
            } else if (anchor0Y != 0.0f) {
                float f7 = (2.0f * control0Y2) / ((-2.0f) * anchor0Y);
                if (0.0f <= f7 && f7 <= 1.0f) {
                    fM1805getYDnnuFBc = PointKt.m1805getYDnnuFBc(m1797pointOnCurveOOQOV4g$graphics_shapes_release(f7));
                    if (fM1805getYDnnuFBc < fMin2) {
                        fMin2 = fM1805getYDnnuFBc;
                    }
                    if (fM1805getYDnnuFBc > fMax2) {
                        fMax2 = fM1805getYDnnuFBc;
                    }
                }
            }
            bounds[c5] = fMin;
            bounds[c4] = fMin2;
            bounds[c3] = fMax;
            bounds[c2] = fMax2;
        }
        if (anchor0X != 0.0f) {
            float f8 = (control0X2 * 2.0f) / (anchor0X * (-2.0f));
            if (0.0f <= f8 && f8 <= 1.0f) {
                float fM1804getXDnnuFBc3 = PointKt.m1804getXDnnuFBc(m1797pointOnCurveOOQOV4g$graphics_shapes_release(f8));
                if (fM1804getXDnnuFBc3 < fMin) {
                    fMin = fM1804getXDnnuFBc3;
                }
                if (fM1804getXDnnuFBc3 > fMax) {
                    fMax = fM1804getXDnnuFBc3;
                }
            }
        }
        c2 = 3;
        c3 = 2;
        c4 = 1;
        c5 = 0;
        control0Y = (((-getAnchor0Y()) + (getControl0Y() * 3.0f)) - (3.0f * getControl1Y())) + getAnchor1Y();
        float anchor0Y2 = ((getAnchor0Y() * 2.0f) - (getControl0Y() * 4.0f)) + (getControl1Y() * 2.0f);
        float control0Y22 = (-getAnchor0Y()) + getControl0Y();
        if (zeroIsh(control0Y)) {
        }
        bounds[c5] = fMin;
        bounds[c4] = fMin2;
        bounds[c3] = fMax;
        bounds[c2] = fMax2;
    }

    public final Pair<Cubic, Cubic> split(float t) {
        float f = 1.0f - t;
        long jM1797pointOnCurveOOQOV4g$graphics_shapes_release = m1797pointOnCurveOOQOV4g$graphics_shapes_release(t);
        float f2 = f * f;
        float f3 = 2.0f * f * t;
        float f4 = t * t;
        return TuplesKt.to(CubicKt.Cubic(getAnchor0X(), getAnchor0Y(), (getAnchor0X() * f) + (getControl0X() * t), (getAnchor0Y() * f) + (getControl0Y() * t), (getAnchor0X() * f2) + (getControl0X() * f3) + (getControl1X() * f4), (getAnchor0Y() * f2) + (getControl0Y() * f3) + (getControl1Y() * f4), PointKt.m1804getXDnnuFBc(jM1797pointOnCurveOOQOV4g$graphics_shapes_release), PointKt.m1805getYDnnuFBc(jM1797pointOnCurveOOQOV4g$graphics_shapes_release)), CubicKt.Cubic(PointKt.m1804getXDnnuFBc(jM1797pointOnCurveOOQOV4g$graphics_shapes_release), PointKt.m1805getYDnnuFBc(jM1797pointOnCurveOOQOV4g$graphics_shapes_release), (getControl0X() * f2) + (getControl1X() * f3) + (getAnchor1X() * f4), (getControl0Y() * f2) + (getControl1Y() * f3) + (getAnchor1Y() * f4), (getControl1X() * f) + (getAnchor1X() * t), (getControl1Y() * f) + (getAnchor1Y() * t), getAnchor1X(), getAnchor1Y()));
    }

    public final Cubic reverse() {
        return CubicKt.Cubic(getAnchor1X(), getAnchor1Y(), getControl1X(), getControl1Y(), getControl0X(), getControl0Y(), getAnchor0X(), getAnchor0Y());
    }

    public String toString() {
        return "anchor0: (" + getAnchor0X() + ", " + getAnchor0Y() + ") control0: (" + getControl0X() + ", " + getControl0Y() + "), control1: (" + getControl1X() + ", " + getControl1Y() + "), anchor1: (" + getAnchor1X() + ", " + getAnchor1Y() + ')';
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof Cubic) {
            return Arrays.equals(this.points, ((Cubic) other).points);
        }
        return false;
    }

    public final Cubic transformed(PointTransformer f) {
        MutableCubic mutableCubic = new MutableCubic();
        ArraysKt.copyInto$default(this.points, mutableCubic.getPoints(), 0, 0, 0, 14, (Object) null);
        mutableCubic.transform(f);
        return mutableCubic;
    }

    public int hashCode() {
        return Arrays.hashCode(this.points);
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0007J(\u0010\f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0007¨\u0006\r"}, d2 = {"Landroidx/graphics/shapes/Cubic$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "()V", "circularArc", "Landroidx/graphics/shapes/Cubic;", "centerX", _UrlKt.FRAGMENT_ENCODE_SET, "centerY", "x0", "y0", "x1", "y1", "straightLine", "graphics-shapes_release"}, m862k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Cubic straightLine(float x0, float y0, float x1, float y1) {
            return CubicKt.Cubic(x0, y0, Utils.interpolate(x0, x1, 0.33333334f), Utils.interpolate(y0, y1, 0.33333334f), Utils.interpolate(x0, x1, 0.6666667f), Utils.interpolate(y0, y1, 0.6666667f), x1, y1);
        }

        @JvmStatic
        public final Cubic circularArc(float centerX, float centerY, float x0, float y0, float x1, float y1) {
            float f = x0 - centerX;
            float f2 = y0 - centerY;
            long jDirectionVector = Utils.directionVector(f, f2);
            float f3 = x1 - centerX;
            float f4 = y1 - centerY;
            long jDirectionVector2 = Utils.directionVector(f3, f4);
            long jM1817rotate90DnnuFBc = Utils.m1817rotate90DnnuFBc(jDirectionVector);
            long jM1817rotate90DnnuFBc2 = Utils.m1817rotate90DnnuFBc(jDirectionVector2);
            boolean z = PointKt.m1800dotProduct5P9i7ZU(jM1817rotate90DnnuFBc, f3, f4) >= 0.0f;
            float fM1801dotProductybeJwSQ = PointKt.m1801dotProductybeJwSQ(jDirectionVector, jDirectionVector2);
            if (fM1801dotProductybeJwSQ > 0.999f) {
                return straightLine(x0, y0, x1, y1);
            }
            float fDistance = ((((Utils.distance(f, f2) * 4.0f) / 3.0f) * (((float) Math.sqrt(2.0f * r5)) - ((float) Math.sqrt(1.0f - (fM1801dotProductybeJwSQ * fM1801dotProductybeJwSQ))))) / (1.0f - fM1801dotProductybeJwSQ)) * (z ? 1.0f : -1.0f);
            return CubicKt.Cubic(x0, y0, (PointKt.m1804getXDnnuFBc(jM1817rotate90DnnuFBc) * fDistance) + x0, (PointKt.m1805getYDnnuFBc(jM1817rotate90DnnuFBc) * fDistance) + y0, x1 - (PointKt.m1804getXDnnuFBc(jM1817rotate90DnnuFBc2) * fDistance), y1 - (PointKt.m1805getYDnnuFBc(jM1817rotate90DnnuFBc2) * fDistance), x1, y1);
        }
    }
}
