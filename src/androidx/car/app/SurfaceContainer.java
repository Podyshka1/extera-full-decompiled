package androidx.car.app;

import android.view.Surface;

/* JADX INFO: loaded from: classes3.dex */
public final class SurfaceContainer {
    private final int mDpi;
    private final int mHeight;
    private final Surface mSurface;
    private final int mWidth;

    public SurfaceContainer(Surface surface, int i, int i2, int i3) {
        this.mSurface = surface;
        this.mWidth = i;
        this.mHeight = i2;
        this.mDpi = i3;
    }

    private SurfaceContainer() {
        this.mSurface = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDpi = 0;
    }

    public Surface getSurface() {
        return this.mSurface;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getDpi() {
        return this.mDpi;
    }

    public String toString() {
        return "[" + this.mSurface + ", " + this.mWidth + "x" + this.mHeight + ", dpi: " + this.mDpi + "]";
    }
}
