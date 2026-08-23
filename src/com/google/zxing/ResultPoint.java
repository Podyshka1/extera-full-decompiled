package com.google.zxing;

import com.google.zxing.common.detector.MathUtils;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ResultPoint {

    /* JADX INFO: renamed from: x */
    private final float f593x;

    /* JADX INFO: renamed from: y */
    private final float f594y;

    public ResultPoint(float f, float f2) {
        this.f593x = f;
        this.f594y = f2;
    }

    public final float getX() {
        return this.f593x;
    }

    public final float getY() {
        return this.f594y;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ResultPoint) {
            ResultPoint resultPoint = (ResultPoint) obj;
            if (this.f593x == resultPoint.f593x && this.f594y == resultPoint.f594y) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.f593x) * 31) + Float.floatToIntBits(this.f594y);
    }

    public final String toString() {
        return "(" + this.f593x + ',' + this.f594y + ')';
    }

    public static void orderBestPatterns(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        float fDistance = distance(resultPointArr[0], resultPointArr[1]);
        float fDistance2 = distance(resultPointArr[1], resultPointArr[2]);
        float fDistance3 = distance(resultPointArr[0], resultPointArr[2]);
        if (fDistance2 >= fDistance && fDistance2 >= fDistance3) {
            resultPoint = resultPointArr[0];
            resultPoint2 = resultPointArr[1];
            resultPoint3 = resultPointArr[2];
        } else if (fDistance3 >= fDistance2 && fDistance3 >= fDistance) {
            resultPoint = resultPointArr[1];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[2];
        } else {
            resultPoint = resultPointArr[2];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[1];
        }
        if (crossProductZ(resultPoint2, resultPoint, resultPoint3) < 0.0f) {
            ResultPoint resultPoint4 = resultPoint3;
            resultPoint3 = resultPoint2;
            resultPoint2 = resultPoint4;
        }
        resultPointArr[0] = resultPoint2;
        resultPointArr[1] = resultPoint;
        resultPointArr[2] = resultPoint3;
    }

    public static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.distance(resultPoint.f593x, resultPoint.f594y, resultPoint2.f593x, resultPoint2.f594y);
    }

    private static float crossProductZ(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        float f = resultPoint2.f593x;
        float f2 = resultPoint2.f594y;
        return ((resultPoint3.f593x - f) * (resultPoint.f594y - f2)) - ((resultPoint3.f594y - f2) * (resultPoint.f593x - f));
    }
}
