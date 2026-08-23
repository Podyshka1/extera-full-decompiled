package org.scilab.forge.jlatexmath;

/* JADX INFO: loaded from: classes5.dex */
public class Metrics {

    /* JADX INFO: renamed from: d */
    private final float f784d;

    /* JADX INFO: renamed from: h */
    private final float f785h;

    /* JADX INFO: renamed from: i */
    private final float f786i;

    /* JADX INFO: renamed from: s */
    private final float f787s;

    /* JADX INFO: renamed from: w */
    private final float f788w;

    public Metrics(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f788w = f * f5;
        this.f785h = f2 * f5;
        this.f784d = f3 * f5;
        this.f786i = f4 * f5;
        this.f787s = f6;
    }

    public float getWidth() {
        return this.f788w;
    }

    public float getHeight() {
        return this.f785h;
    }

    public float getDepth() {
        return this.f784d;
    }

    public float getItalic() {
        return this.f786i;
    }

    public float getSize() {
        return this.f787s;
    }
}
