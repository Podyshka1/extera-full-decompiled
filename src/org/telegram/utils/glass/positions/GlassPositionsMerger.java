package org.telegram.utils.glass.positions;

import android.graphics.RectF;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes6.dex */
public final class GlassPositionsMerger {
    public static final GlassPositionsMerger DEFAULT = new GlassPositionsMerger(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
    private final float epsX;
    private final float epsY;

    private static boolean intersectsOrNear1D(float f, float f2, float f3, float f4, float f5) {
        return f2 < f3 ? f3 - f2 <= f5 : f4 >= f || f - f4 <= f5;
    }

    public GlassPositionsMerger(float f, float f2) {
        if (Float.isNaN(f) || f < 0.0f) {
            f$$ExternalSyntheticBUOutline1.m212m("epsX must be >= 0");
            throw null;
        }
        if (Float.isNaN(f2) || f2 < 0.0f) {
            f$$ExternalSyntheticBUOutline1.m212m("epsY must be >= 0");
            throw null;
        }
        this.epsX = f;
        this.epsY = f2;
    }

    public void merge(GlassPositionsArray glassPositionsArray, GlassPositionsArray glassPositionsArray2) {
        if (glassPositionsArray == glassPositionsArray2) {
            f$$ExternalSyntheticBUOutline1.m212m("positions and output must be different arrays");
            return;
        }
        glassPositionsArray2.clear();
        int size = glassPositionsArray.size();
        for (int i = 0; i < size; i++) {
            RectF rectF = glassPositionsArray.get(i);
            float f = rectF.left;
            float f2 = rectF.top;
            float f3 = rectF.right;
            float f4 = rectF.bottom;
            float f5 = f;
            float f6 = f2;
            float f7 = f3;
            int i2 = 0;
            while (i2 < glassPositionsArray2.size()) {
                RectF rectF2 = glassPositionsArray2.get(i2);
                GlassPositionsMerger glassPositionsMerger = this;
                if (glassPositionsMerger.intersectsOrNear(f5, f6, f7, f4, rectF2)) {
                    float f8 = rectF2.left;
                    if (f8 < f5) {
                        f5 = f8;
                    }
                    float f9 = rectF2.top;
                    if (f9 < f6) {
                        f6 = f9;
                    }
                    float f10 = rectF2.right;
                    if (f10 > f7) {
                        f7 = f10;
                    }
                    float f11 = rectF2.bottom;
                    if (f11 > f4) {
                        f4 = f11;
                    }
                    glassPositionsArray2.removeUnordered(i2);
                    i2 = 0;
                } else {
                    i2++;
                }
                this = glassPositionsMerger;
            }
            glassPositionsArray2.add(f5, f6, f7, f4);
        }
        sort(glassPositionsArray2);
    }

    private boolean intersectsOrNear(float f, float f2, float f3, float f4, RectF rectF) {
        return intersectsOrNear1D(f, f3, rectF.left, rectF.right, this.epsX) && intersectsOrNear1D(f2, f4, rectF.top, rectF.bottom, this.epsY);
    }

    private static void sort(GlassPositionsArray glassPositionsArray) {
        int size = glassPositionsArray.size();
        for (int i = 1; i < size; i++) {
            RectF rectF = glassPositionsArray.get(i);
            float f = rectF.left;
            float f2 = rectF.top;
            float f3 = rectF.right;
            float f4 = rectF.bottom;
            int i2 = i - 1;
            while (i2 >= 0) {
                RectF rectF2 = glassPositionsArray.get(i2);
                if (compare(rectF2.top, rectF2.left, f2, f) <= 0) {
                    break;
                }
                glassPositionsArray.get(i2 + 1).set(rectF2);
                i2--;
            }
            glassPositionsArray.get(i2 + 1).set(f, f2, f3, f4);
        }
    }

    private static int compare(float f, float f2, float f3, float f4) {
        int iCompare = Float.compare(f, f3);
        return iCompare == 0 ? Float.compare(f2, f4) : iCompare;
    }
}
