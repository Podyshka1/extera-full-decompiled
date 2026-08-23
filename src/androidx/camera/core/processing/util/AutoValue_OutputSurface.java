package androidx.camera.core.processing.util;

import android.opengl.EGLSurface;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_OutputSurface extends OutputSurface {
    private final EGLSurface eglSurface;
    private final int height;
    private final int width;

    AutoValue_OutputSurface(EGLSurface eGLSurface, int i, int i2) {
        if (eGLSurface == null) {
            throw new NullPointerException("Null eglSurface");
        }
        this.eglSurface = eGLSurface;
        this.width = i;
        this.height = i2;
    }

    @Override // androidx.camera.core.processing.util.OutputSurface
    public EGLSurface getEglSurface() {
        return this.eglSurface;
    }

    @Override // androidx.camera.core.processing.util.OutputSurface
    public int getWidth() {
        return this.width;
    }

    @Override // androidx.camera.core.processing.util.OutputSurface
    public int getHeight() {
        return this.height;
    }

    public String toString() {
        return "OutputSurface{eglSurface=" + this.eglSurface + ", width=" + this.width + ", height=" + this.height + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof OutputSurface) {
            OutputSurface outputSurface = (OutputSurface) obj;
            if (this.eglSurface.equals(outputSurface.getEglSurface()) && this.width == outputSurface.getWidth() && this.height == outputSurface.getHeight()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.eglSurface.hashCode() ^ 1000003) * 1000003) ^ this.width) * 1000003) ^ this.height;
    }
}
