package ru.noties.jlatexmath.awt;

/* JADX INFO: loaded from: classes7.dex */
public class BasicStroke implements Stroke {
    public static final int CAP_BUTT = 0;
    public static final int JOIN_MITER = 0;
    private final float miterLimit;
    private final float width;

    public BasicStroke(float f, int i, int i2) {
        this(f, i, i2, 10.0f);
    }

    public BasicStroke(float f, int i, int i2, float f2) {
        this.width = f;
        this.miterLimit = f2;
    }

    @Override // ru.noties.jlatexmath.awt.Stroke
    public float width() {
        return this.width;
    }

    @Override // ru.noties.jlatexmath.awt.Stroke
    public float miterLimit() {
        return this.miterLimit;
    }

    public String toString() {
        return "BasicStroke{width=" + this.width + ", miterLimit=" + this.miterLimit + '}';
    }
}
