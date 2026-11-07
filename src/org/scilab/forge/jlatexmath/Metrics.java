package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class Metrics {

    /* JADX INFO: renamed from: d */
    private final float f942d;

    /* JADX INFO: renamed from: h */
    private final float f943h;

    /* JADX INFO: renamed from: i */
    private final float f944i;

    /* JADX INFO: renamed from: s */
    private final float f945s;

    /* JADX INFO: renamed from: w */
    private final float f946w;

    public Metrics(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f946w = f * f5;
        this.f943h = f2 * f5;
        this.f942d = f3 * f5;
        this.f944i = f4 * f5;
        this.f945s = f6;
    }

    public float getWidth() {
        return this.f946w;
    }

    public float getHeight() {
        return this.f943h;
    }

    public float getDepth() {
        return this.f942d;
    }

    public float getItalic() {
        return this.f944i;
    }

    public float getSize() {
        return this.f945s;
    }
}
