package androidx.camera.core.processing.util;

import android.opengl.EGLSurface;

/* JADX INFO: loaded from: classes4.dex */
public abstract class OutputSurface {
    public abstract EGLSurface getEglSurface();

    public abstract int getHeight();

    public abstract int getWidth();

    /* JADX INFO: renamed from: of */
    public static OutputSurface m104of(EGLSurface eGLSurface, int i, int i2) {
        return new AutoValue_OutputSurface(eGLSurface, i, i2);
    }
}
