package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class Metrics {

    /* JADX INFO: renamed from: d */
    private final float f940d;

    /* JADX INFO: renamed from: h */
    private final float f941h;

    /* JADX INFO: renamed from: i */
    private final float f942i;

    /* JADX INFO: renamed from: s */
    private final float f943s;

    /* JADX INFO: renamed from: w */
    private final float f944w;

    public Metrics(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f944w = f * f5;
        this.f941h = f2 * f5;
        this.f940d = f3 * f5;
        this.f942i = f4 * f5;
        this.f943s = f6;
    }

    public float getWidth() {
        return this.f944w;
    }

    public float getHeight() {
        return this.f941h;
    }

    public float getDepth() {
        return this.f940d;
    }

    public float getItalic() {
        return this.f942i;
    }

    public float getSize() {
        return this.f943s;
    }
}
