package ru.noties.jlatexmath.awt.geom;

/* JADX INFO: loaded from: classes7.dex */
public abstract class Rectangle2D {
    public abstract float getHeight();

    public abstract float getWidth();

    public abstract float getX();

    public abstract float getY();

    public static class Float extends Rectangle2D {

        /* JADX INFO: renamed from: h */
        public float f1263h;

        /* JADX INFO: renamed from: w */
        public float f1264w;

        /* JADX INFO: renamed from: x */
        public float f1265x;

        /* JADX INFO: renamed from: y */
        public float f1266y;

        public Float(float f, float f2, float f3, float f4) {
            this.f1265x = f;
            this.f1266y = f2;
            this.f1264w = f3;
            this.f1263h = f4;
        }

        @Override // ru.noties.jlatexmath.awt.geom.Rectangle2D
        public float getY() {
            return this.f1266y;
        }

        @Override // ru.noties.jlatexmath.awt.geom.Rectangle2D
        public float getHeight() {
            return this.f1263h;
        }

        @Override // ru.noties.jlatexmath.awt.geom.Rectangle2D
        public float getWidth() {
            return this.f1264w;
        }

        @Override // ru.noties.jlatexmath.awt.geom.Rectangle2D
        public float getX() {
            return this.f1265x;
        }

        public String toString() {
            return "Float{x=" + this.f1265x + ", y=" + this.f1266y + ", w=" + this.f1264w + ", h=" + this.f1263h + '}';
        }
    }
}
