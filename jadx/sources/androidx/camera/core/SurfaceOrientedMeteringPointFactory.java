package androidx.camera.core;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes3.dex */
public class SurfaceOrientedMeteringPointFactory extends MeteringPointFactory {
    private final float mHeight;
    private final float mWidth;

    public SurfaceOrientedMeteringPointFactory(float f, float f2) {
        this.mWidth = f;
        this.mHeight = f2;
    }

    @Override // androidx.camera.core.MeteringPointFactory
    protected PointF convertPoint(float f, float f2) {
        return new PointF(f / this.mWidth, f2 / this.mHeight);
    }
}
