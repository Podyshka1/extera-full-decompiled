package androidx.graphics.shapes;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AngleMeasurer implements Measurer {
    private final float centerX;
    private final float centerY;

    public AngleMeasurer(float f, float f2) {
        this.centerX = f;
        this.centerY = f2;
    }

    @Override // androidx.graphics.shapes.Measurer
    public float measureCubic(Cubic c) {
        Intrinsics.checkNotNullParameter(c, "c");
        float fPositiveModulo = Utils.positiveModulo(Utils.angle(c.getAnchor1X() - this.centerX, c.getAnchor1Y() - this.centerY) - Utils.angle(c.getAnchor0X() - this.centerX, c.getAnchor0Y() - this.centerY), Utils.getTwoPi());
        if (fPositiveModulo > Utils.getTwoPi() - 1.0E-4f) {
            return 0.0f;
        }
        return fPositiveModulo;
    }

    @Override // androidx.graphics.shapes.Measurer
    public float findCubicCutPoint(final Cubic c, final float f) {
        Intrinsics.checkNotNullParameter(c, "c");
        final float fAngle = Utils.angle(c.getAnchor0X() - this.centerX, c.getAnchor0Y() - this.centerY);
        return Utils.findMinimum(0.0f, 1.0f, 1.0E-5f, new FindMinimumFunction() { // from class: androidx.graphics.shapes.AngleMeasurer$$ExternalSyntheticLambda0
            @Override // androidx.graphics.shapes.FindMinimumFunction
            public final float invoke(float f2) {
                return AngleMeasurer.findCubicCutPoint$lambda$1(c, this, fAngle, f, f2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float findCubicCutPoint$lambda$1(Cubic c, AngleMeasurer this$0, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(c, "$c");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        long jM2111pointOnCurveOOQOV4g$graphics_shapes_release = c.m2111pointOnCurveOOQOV4g$graphics_shapes_release(f3);
        return Math.abs(Utils.positiveModulo(Utils.angle(PointKt.m2118getXDnnuFBc(jM2111pointOnCurveOOQOV4g$graphics_shapes_release) - this$0.centerX, PointKt.m2119getYDnnuFBc(jM2111pointOnCurveOOQOV4g$graphics_shapes_release) - this$0.centerY) - f, Utils.getTwoPi()) - f2);
    }
}
