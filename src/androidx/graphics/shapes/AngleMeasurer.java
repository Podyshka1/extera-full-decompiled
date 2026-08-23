package androidx.graphics.shapes;

import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\f\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u000e\u001a\u0004\b\u0011\u0010\u0010¨\u0006\u0012"}, d2 = {"Landroidx/graphics/shapes/AngleMeasurer;", "Landroidx/graphics/shapes/Measurer;", _UrlKt.FRAGMENT_ENCODE_SET, "centerX", "centerY", "<init>", "(FF)V", "Landroidx/graphics/shapes/Cubic;", "c", "measureCubic", "(Landroidx/graphics/shapes/Cubic;)F", "m", "findCubicCutPoint", "(Landroidx/graphics/shapes/Cubic;F)F", "F", "getCenterX", "()F", "getCenterY", "graphics-shapes_release"}, m754k = 1, mv = {1, 8, 0}, xi = 48)
public final class AngleMeasurer implements Measurer {
    private final float centerX;
    private final float centerY;

    public AngleMeasurer(float f, float f2) {
        this.centerX = f;
        this.centerY = f2;
    }

    @Override // androidx.graphics.shapes.Measurer
    public float measureCubic(Cubic c2) {
        float fPositiveModulo = Utils.positiveModulo(Utils.angle(c2.getAnchor1X() - this.centerX, c2.getAnchor1Y() - this.centerY) - Utils.angle(c2.getAnchor0X() - this.centerX, c2.getAnchor0Y() - this.centerY), Utils.getTwoPi());
        if (fPositiveModulo > Utils.getTwoPi() - 1.0E-4f) {
            return 0.0f;
        }
        return fPositiveModulo;
    }

    @Override // androidx.graphics.shapes.Measurer
    public float findCubicCutPoint(final Cubic c2, final float m) {
        final float fAngle = Utils.angle(c2.getAnchor0X() - this.centerX, c2.getAnchor0Y() - this.centerY);
        return Utils.findMinimum(0.0f, 1.0f, 1.0E-5f, new FindMinimumFunction() { // from class: androidx.graphics.shapes.AngleMeasurer$$ExternalSyntheticLambda0
            @Override // androidx.graphics.shapes.FindMinimumFunction
            public final float invoke(float f) {
                return AngleMeasurer.m1699$r8$lambda$Bzv6ODwqQqmceGWRzm_cGw1Ksw(c2, this, fAngle, m, f);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$Bzv6ODwqQqmceGWR-zm_cGw1Ksw, reason: not valid java name */
    public static float m1699$r8$lambda$Bzv6ODwqQqmceGWRzm_cGw1Ksw(Cubic cubic, AngleMeasurer angleMeasurer, float f, float f2, float f3) {
        long jM1700pointOnCurveOOQOV4g$graphics_shapes_release = cubic.m1700pointOnCurveOOQOV4g$graphics_shapes_release(f3);
        return Math.abs(Utils.positiveModulo(Utils.angle(PointKt.m1707getXDnnuFBc(jM1700pointOnCurveOOQOV4g$graphics_shapes_release) - angleMeasurer.centerX, PointKt.m1708getYDnnuFBc(jM1700pointOnCurveOOQOV4g$graphics_shapes_release) - angleMeasurer.centerY) - f, Utils.getTwoPi()) - f2);
    }
}
