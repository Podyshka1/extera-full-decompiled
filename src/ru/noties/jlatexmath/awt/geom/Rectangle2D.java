package ru.noties.jlatexmath.awt.geom;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Rectangle2D {
    public abstract float getHeight();

    public abstract float getWidth();

    public abstract float getX();

    public abstract float getY();

    public static class Float extends Rectangle2D {

        /* JADX INFO: renamed from: h */
        public float f1104h;

        /* JADX INFO: renamed from: w */
        public float f1105w;

        /* JADX INFO: renamed from: x */
        public float f1106x;

        /* JADX INFO: renamed from: y */
        public float f1107y;

        public Float(float f, float f2, float f3, float f4) {
            this.f1106x = f;
            this.f1107y = f2;
            this.f1105w = f3;
            this.f1104h = f4;
        }

        @Override // ru.noties.jlatexmath.awt.geom.Rectangle2D
        public float getY() {
            return this.f1107y;
        }

        @Override // ru.noties.jlatexmath.awt.geom.Rectangle2D
        public float getHeight() {
            return this.f1104h;
        }

        @Override // ru.noties.jlatexmath.awt.geom.Rectangle2D
        public float getWidth() {
            return this.f1105w;
        }

        @Override // ru.noties.jlatexmath.awt.geom.Rectangle2D
        public float getX() {
            return this.f1106x;
        }

        public String toString() {
            return "Float{x=" + this.f1106x + ", y=" + this.f1107y + ", w=" + this.f1105w + ", h=" + this.f1104h + '}';
        }
    }
}
