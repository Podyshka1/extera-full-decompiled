package ru.noties.jlatexmath.awt.geom;

/* JADX INFO: loaded from: classes4.dex */
public class RoundRectangle2D {

    public static class Float {
        public float archeight;
        public float arcwidth;
        public float height;
        public float width;

        /* JADX INFO: renamed from: x */
        public float f1108x;

        /* JADX INFO: renamed from: y */
        public float f1109y;

        public Float(float f, float f2, float f3, float f4, float f5, float f6) {
            this.f1108x = f;
            this.f1109y = f2;
            this.width = f3;
            this.height = f4;
            this.arcwidth = f5;
            this.archeight = f6;
        }

        public String toString() {
            return "Float{x=" + this.f1108x + ", y=" + this.f1109y + ", width=" + this.width + ", height=" + this.height + ", arcwidth=" + this.arcwidth + ", archeight=" + this.archeight + '}';
        }
    }
}
