package ru.noties.jlatexmath.awt.geom;

/* JADX INFO: loaded from: classes7.dex */
public class RoundRectangle2D {

    public static class Float {
        public float archeight;
        public float arcwidth;
        public float height;
        public float width;

        /* JADX INFO: renamed from: x */
        public float f1267x;

        /* JADX INFO: renamed from: y */
        public float f1268y;

        public Float(float f, float f2, float f3, float f4, float f5, float f6) {
            this.f1267x = f;
            this.f1268y = f2;
            this.width = f3;
            this.height = f4;
            this.arcwidth = f5;
            this.archeight = f6;
        }

        public String toString() {
            return "Float{x=" + this.f1267x + ", y=" + this.f1268y + ", width=" + this.width + ", height=" + this.height + ", arcwidth=" + this.arcwidth + ", archeight=" + this.archeight + '}';
        }
    }
}
