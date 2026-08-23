package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class RoundedPolygon {
    public static final Companion Companion = new Companion(null);
    private final float centerX;
    private final float centerY;
    private final List cubics;
    private final List features;

    public final float[] calculateBounds(float[] bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        return calculateBounds$default(this, bounds, false, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RoundedPolygon(List features, float f, float f2) {
        List listMutableListOf;
        List listMutableListOf2;
        Cubic cubic;
        List cubics;
        Intrinsics.checkNotNullParameter(features, "features");
        this.features = features;
        this.centerX = f;
        this.centerY = f2;
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        int i = 0;
        Cubic cubic2 = null;
        if (features.size() <= 0 || ((Feature) features.get(0)).getCubics().size() != 3) {
            listMutableListOf = null;
            listMutableListOf2 = null;
        } else {
            Pair pairSplit = ((Cubic) ((Feature) features.get(0)).getCubics().get(1)).split(0.5f);
            Cubic cubic3 = (Cubic) pairSplit.component1();
            Cubic cubic4 = (Cubic) pairSplit.component2();
            listMutableListOf2 = CollectionsKt.mutableListOf(((Feature) features.get(0)).getCubics().get(0), cubic3);
            listMutableListOf = CollectionsKt.mutableListOf(cubic4, ((Feature) features.get(0)).getCubics().get(2));
        }
        int size = features.size();
        if (size >= 0) {
            int i2 = 0;
            Cubic cubic5 = null;
            while (true) {
                if (i2 == 0 && listMutableListOf != null) {
                    cubics = listMutableListOf;
                } else if (i2 != this.features.size()) {
                    cubics = ((Feature) this.features.get(i2)).getCubics();
                } else if (listMutableListOf2 == null) {
                    break;
                } else {
                    cubics = listMutableListOf2;
                }
                int size2 = cubics.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    Cubic cubic6 = (Cubic) cubics.get(i3);
                    if (!cubic6.zeroLength$graphics_shapes_release()) {
                        if (cubic5 != null) {
                            listCreateListBuilder.add(cubic5);
                        }
                        if (cubic2 == null) {
                            cubic2 = cubic6;
                            cubic5 = cubic2;
                        } else {
                            cubic5 = cubic6;
                        }
                    } else if (cubic5 != null) {
                        cubic5.getPoints$graphics_shapes_release()[6] = cubic6.getAnchor1X();
                        cubic5.getPoints$graphics_shapes_release()[7] = cubic6.getAnchor1Y();
                    }
                }
                if (i2 == size) {
                    break;
                } else {
                    i2++;
                }
            }
            cubic = cubic2;
            cubic2 = cubic5;
        } else {
            cubic = null;
        }
        if (cubic2 != null && cubic != null) {
            listCreateListBuilder.add(CubicKt.Cubic(cubic2.getAnchor0X(), cubic2.getAnchor0Y(), cubic2.getControl0X(), cubic2.getControl0Y(), cubic2.getControl1X(), cubic2.getControl1Y(), cubic.getAnchor0X(), cubic.getAnchor0Y()));
        }
        List listBuild = CollectionsKt.build(listCreateListBuilder);
        this.cubics = listBuild;
        Object obj = listBuild.get(listBuild.size() - 1);
        int size3 = listBuild.size();
        while (i < size3) {
            Cubic cubic7 = (Cubic) this.cubics.get(i);
            Cubic cubic8 = (Cubic) obj;
            if (Math.abs(cubic7.getAnchor0X() - cubic8.getAnchor1X()) > 1.0E-4f || Math.abs(cubic7.getAnchor0Y() - cubic8.getAnchor1Y()) > 1.0E-4f) {
                throw new IllegalArgumentException("RoundedPolygon must be contiguous, with the anchor points of all curves matching the anchor points of the preceding and succeeding cubics");
            }
            i++;
            obj = cubic7;
        }
    }

    public final float getCenterX() {
        return this.centerX;
    }

    public final float getCenterY() {
        return this.centerY;
    }

    public final List getFeatures$graphics_shapes_release() {
        return this.features;
    }

    public final List getCubics() {
        return this.cubics;
    }

    public final RoundedPolygon transformed(PointTransformer f) {
        Intrinsics.checkNotNullParameter(f, "f");
        long jM2124transformedso9K2fw = PointKt.m2124transformedso9K2fw(FloatFloatPair.m2042constructorimpl(this.centerX, this.centerY), f);
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        int size = this.features.size();
        for (int i = 0; i < size; i++) {
            listCreateListBuilder.add(((Feature) this.features.get(i)).transformed$graphics_shapes_release(f));
        }
        return new RoundedPolygon(CollectionsKt.build(listCreateListBuilder), PointKt.m2118getXDnnuFBc(jM2124transformedso9K2fw), PointKt.m2119getYDnnuFBc(jM2124transformedso9K2fw));
    }

    public String toString() {
        return "[RoundedPolygon. Cubics = " + CollectionsKt.joinToString$default(this.cubics, null, null, null, 0, null, null, 63, null) + " || Features = " + CollectionsKt.joinToString$default(this.features, null, null, null, 0, null, null, 63, null) + " || Center = (" + this.centerX + ", " + this.centerY + ")]";
    }

    public final float[] calculateMaxBounds(float[] bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        if (bounds.length < 4) {
            throw new IllegalArgumentException("Required bounds size of 4");
        }
        int size = this.cubics.size();
        float fMax = 0.0f;
        for (int i = 0; i < size; i++) {
            Cubic cubic = (Cubic) this.cubics.get(i);
            float fDistanceSquared = Utils.distanceSquared(cubic.getAnchor0X() - this.centerX, cubic.getAnchor0Y() - this.centerY);
            long jM2111pointOnCurveOOQOV4g$graphics_shapes_release = cubic.m2111pointOnCurveOOQOV4g$graphics_shapes_release(0.5f);
            fMax = Math.max(fMax, Math.max(fDistanceSquared, Utils.distanceSquared(PointKt.m2118getXDnnuFBc(jM2111pointOnCurveOOQOV4g$graphics_shapes_release) - this.centerX, PointKt.m2119getYDnnuFBc(jM2111pointOnCurveOOQOV4g$graphics_shapes_release) - this.centerY)));
        }
        float fSqrt = (float) Math.sqrt(fMax);
        float f = this.centerX;
        bounds[0] = f - fSqrt;
        float f2 = this.centerY;
        bounds[1] = f2 - fSqrt;
        bounds[2] = f + fSqrt;
        bounds[3] = f2 + fSqrt;
        return bounds;
    }

    public static /* synthetic */ float[] calculateBounds$default(RoundedPolygon roundedPolygon, float[] fArr, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            fArr = new float[4];
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return roundedPolygon.calculateBounds(fArr, z);
    }

    public final float[] calculateBounds(float[] bounds, boolean z) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        if (bounds.length < 4) {
            throw new IllegalArgumentException("Required bounds size of 4");
        }
        int size = this.cubics.size();
        float fMax = Float.MIN_VALUE;
        float fMin = Float.MAX_VALUE;
        float fMin2 = Float.MAX_VALUE;
        float fMax2 = Float.MIN_VALUE;
        for (int i = 0; i < size; i++) {
            ((Cubic) this.cubics.get(i)).calculateBounds$graphics_shapes_release(bounds, z);
            fMin = Math.min(fMin, bounds[0]);
            fMin2 = Math.min(fMin2, bounds[1]);
            fMax = Math.max(fMax, bounds[2]);
            fMax2 = Math.max(fMax2, bounds[3]);
        }
        bounds[0] = fMin;
        bounds[1] = fMin2;
        bounds[2] = fMax;
        bounds[3] = fMax2;
        return bounds;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RoundedPolygon) {
            return Intrinsics.areEqual(this.features, ((RoundedPolygon) obj).features);
        }
        return false;
    }

    public int hashCode() {
        return this.features.hashCode();
    }
}
