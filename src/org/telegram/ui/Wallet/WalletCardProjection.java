package org.telegram.ui.Wallet;

import android.opengl.Matrix;

/* JADX INFO: loaded from: classes8.dex */
final class WalletCardProjection {
    private final float[] projectionMatrix = new float[16];
    private final float[] viewMatrix = new float[16];
    private final float[] modelMatrix = new float[16];
    private final float[] viewModelMatrix = new float[16];
    private final float[] mvpMatrix = new float[16];
    private final float[] point = new float[4];
    private final float[] clipPoint = new float[4];

    private static void setProjectionMatrix(float[] fArr, int i, int i2) {
        float f = (i - i2) / 0.3902439f;
        if (f <= 0.0f || f > i) {
            f = i;
        }
        Matrix.perspectiveM(fArr, 0, (float) Math.toDegrees(Math.atan(Math.tan(Math.toRadians(5.199999809265137d)) * ((double) (i2 / Math.max(1.0f, f / 1.64f)))) * 2.0d), i / Math.max(1, i2), 0.1f, 20.0f);
    }

    private static void setViewMatrix(float[] fArr) {
        Matrix.setLookAtM(fArr, 0, 0.0f, 0.0f, 6.7f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
    }

    private static void setModelMatrix(float[] fArr, float f, float f2) {
        Matrix.setIdentityM(fArr, 0);
        Matrix.rotateM(fArr, 0, -f, 1.0f, 0.0f, 0.0f);
        Matrix.rotateM(fArr, 0, -f2, 0.0f, 1.0f, 0.0f);
        Matrix.rotateM(fArr, 0, 90.0f, 0.0f, 1.0f, 0.0f);
        Matrix.translateM(fArr, 0, -0.02f, 0.0f, 0.0f);
        Matrix.scaleM(fArr, 0, 0.965f, 0.965f, 0.965f);
    }

    public void project(int i, int i2, float f, float f2, boolean z, float[] fArr) {
        setProjectionMatrix(this.projectionMatrix, i, i2);
        setViewMatrix(this.viewMatrix);
        setModelMatrix(this.modelMatrix, f, f2);
        Matrix.multiplyMM(this.viewModelMatrix, 0, this.viewMatrix, 0, this.modelMatrix, 0);
        Matrix.multiplyMM(this.mvpMatrix, 0, this.projectionMatrix, 0, this.viewModelMatrix, 0);
        float f3 = z ? 0.0125f : -0.0125f;
        float f4 = z ? 1.0f : -1.0f;
        float f5 = -f4;
        projectPoint(f3, 0.618561f, f4, i, i2, fArr, 0);
        projectPoint(f3, 0.618561f, f5, i, i2, fArr, 2);
        projectPoint(f3, -0.593561f, f5, i, i2, fArr, 4);
        projectPoint(f3, -0.593561f, f4, i, i2, fArr, 6);
    }

    public void projectDepthContour(int i, int i2, float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4) {
        for (int i3 = 0; i3 < fArr.length / 2; i3++) {
            int i4 = i3 * 2;
            float f = (fArr[i4 + 1] * (-1.212122f)) + 0.618561f;
            float f2 = ((fArr[i4] * 2.0f) - 1.0f) * 1.0f;
            fArr4[i3] = (projectPoint(-0.0125f, f, f2, i, i2, fArr2, i4) + projectPoint(0.0125f, f, f2, i, i2, fArr3, i4)) * 0.5f;
        }
    }

    private float projectPoint(float f, float f2, float f3, int i, int i2, float[] fArr, int i3) {
        float[] fArr2 = this.point;
        fArr2[0] = f;
        fArr2[1] = f2;
        fArr2[2] = f3;
        fArr2[3] = 1.0f;
        Matrix.multiplyMV(this.clipPoint, 0, this.mvpMatrix, 0, fArr2, 0);
        float[] fArr3 = this.clipPoint;
        float f4 = 1.0f / fArr3[3];
        fArr[i3] = ((fArr3[0] * f4 * 0.5f) + 0.5f) * i;
        fArr[i3 + 1] = (0.5f - ((fArr3[1] * f4) * 0.5f)) * i2;
        return fArr3[2] * f4;
    }
}
