package org.telegram.ui.Components.Paint;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes7.dex */
public class Point {
    public boolean edge;

    /* JADX INFO: renamed from: x */
    public double f960x;

    /* JADX INFO: renamed from: y */
    public double f961y;

    /* JADX INFO: renamed from: z */
    public double f962z;

    public Point(double d, double d2, double d3) {
        this.f960x = d;
        this.f961y = d2;
        this.f962z = d3;
    }

    public Point(double d, double d2, double d3, boolean z) {
        this.f960x = d;
        this.f961y = d2;
        this.f962z = d3;
        this.edge = z;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Point)) {
            return false;
        }
        Point point = (Point) obj;
        return this.f960x == point.f960x && this.f961y == point.f961y && this.f962z == point.f962z;
    }

    public Point multiplySum(Point point, double d) {
        return new Point((this.f960x + point.f960x) * d, (this.f961y + point.f961y) * d, (this.f962z + point.f962z) * d);
    }

    public Point add(Point point) {
        return new Point(this.f960x + point.f960x, this.f961y + point.f961y, this.f962z + point.f962z);
    }

    public Point substract(Point point) {
        return new Point(this.f960x - point.f960x, this.f961y - point.f961y, this.f962z - point.f962z);
    }

    public Point multiplyByScalar(double d) {
        return new Point(this.f960x * d, this.f961y * d, this.f962z * d);
    }

    public float getDistanceTo(Point point) {
        return (float) Math.sqrt(Math.pow(this.f960x - point.f960x, 2.0d) + Math.pow(this.f961y - point.f961y, 2.0d) + Math.pow(this.f962z - point.f962z, 2.0d));
    }

    public PointF toPointF() {
        return new PointF((float) this.f960x, (float) this.f961y);
    }
}
