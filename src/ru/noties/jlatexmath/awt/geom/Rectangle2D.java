package ru.noties.jlatexmath.awt.geom;

/* JADX INFO: loaded from: classes8.dex */
public abstract class Rectangle2D {
    public abstract float getHeight();

    public abstract float getWidth();

    public abstract float getX();

    public abstract float getY();

    public static class Float extends Rectangle2D {

        /* JADX INFO: renamed from: h */
        public float f1290h;

        /* JADX INFO: renamed from: w */
        public float f1291w;

        /* JADX INFO: renamed from: x */
        public float f1292x;

        /* JADX INFO: renamed from: y */
        public float f1293y;

        public Float(float f, float f2, float f3, float f4) {
            this.f1292x = f;
            this.f1293y = f2;
            this.f1291w = f3;
            this.f1290h = f4;
        }

        @Override // ru.noties.jlatexmath.awt.geom.Rectangle2D
        public float getY() {
            return this.f1293y;
        }

        @Override // ru.noties.jlatexmath.awt.geom.Rectangle2D
        public float getHeight() {
            return this.f1290h;
        }

        @Override // ru.noties.jlatexmath.awt.geom.Rectangle2D
        public float getWidth() {
            return this.f1291w;
        }

        @Override // ru.noties.jlatexmath.awt.geom.Rectangle2D
        public float getX() {
            return this.f1292x;
        }

        public String toString() {
            return "Float{x=" + this.f1292x + ", y=" + this.f1293y + ", w=" + this.f1291w + ", h=" + this.f1290h + '}';
        }
    }
}
