package org.telegram.p029ui.Components.Paint;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes7.dex */
public class Point {
    public boolean edge;

    /* JADX INFO: renamed from: x */
    public double f1981x;

    /* JADX INFO: renamed from: y */
    public double f1982y;

    /* JADX INFO: renamed from: z */
    public double f1983z;

    public Point(double d, double d2, double d3) {
        this.f1981x = d;
        this.f1982y = d2;
        this.f1983z = d3;
    }

    public Point(double d, double d2, double d3, boolean z) {
        this.f1981x = d;
        this.f1982y = d2;
        this.f1983z = d3;
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
        return this.f1981x == point.f1981x && this.f1982y == point.f1982y && this.f1983z == point.f1983z;
    }

    Point multiplySum(Point point, double d) {
        return new Point((this.f1981x + point.f1981x) * d, (this.f1982y + point.f1982y) * d, (this.f1983z + point.f1983z) * d);
    }

    Point add(Point point) {
        return new Point(this.f1981x + point.f1981x, this.f1982y + point.f1982y, this.f1983z + point.f1983z);
    }

    Point substract(Point point) {
        return new Point(this.f1981x - point.f1981x, this.f1982y - point.f1982y, this.f1983z - point.f1983z);
    }

    Point multiplyByScalar(double d) {
        return new Point(this.f1981x * d, this.f1982y * d, this.f1983z * d);
    }

    float getDistanceTo(Point point) {
        return (float) Math.sqrt(Math.pow(this.f1981x - point.f1981x, 2.0d) + Math.pow(this.f1982y - point.f1982y, 2.0d) + Math.pow(this.f1983z - point.f1983z, 2.0d));
    }

    PointF toPointF() {
        return new PointF((float) this.f1981x, (float) this.f1982y);
    }
}
