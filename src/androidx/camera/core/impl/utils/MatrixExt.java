package androidx.camera.core.impl.utils;

import android.opengl.Matrix;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MatrixExt {
    private static final float[] sTemp = new float[16];

    public static void preRotate(float[] fArr, float f, float f2, float f3) {
        normalize(fArr, f2, f3);
        Matrix.rotateM(fArr, 0, f, 0.0f, 0.0f, 1.0f);
        denormalize(fArr, f2, f3);
    }

    public static void preVerticalFlip(float[] fArr, float f) {
        normalize(fArr, 0.0f, f);
        Matrix.scaleM(fArr, 0, 1.0f, -1.0f, 1.0f);
        denormalize(fArr, 0.0f, f);
    }

    private static void normalize(float[] fArr, float f, float f2) {
        Matrix.translateM(fArr, 0, f, f2, 0.0f);
    }

    private static void denormalize(float[] fArr, float f, float f2) {
        Matrix.translateM(fArr, 0, -f, -f2, 0.0f);
    }
}
