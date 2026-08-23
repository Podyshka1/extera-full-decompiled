package org.telegram.ui.Components.Paint;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes7.dex */
public class Point {
    public boolean edge;

    /* JADX INFO: renamed from: x */
    public double f1440x;

    /* JADX INFO: renamed from: y */
    public double f1441y;

    /* JADX INFO: renamed from: z */
    public double f1442z;

    public Point(double d, double d2, double d3) {
        this.f1440x = d;
        this.f1441y = d2;
        this.f1442z = d3;
    }

    public Point(double d, double d2, double d3, boolean z) {
        this.f1440x = d;
        this.f1441y = d2;
        this.f1442z = d3;
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
        return this.f1440x == point.f1440x && this.f1441y == point.f1441y && this.f1442z == point.f1442z;
    }

    Point multiplySum(Point point, double d) {
        return new Point((this.f1440x + point.f1440x) * d, (this.f1441y + point.f1441y) * d, (this.f1442z + point.f1442z) * d);
    }

    Point add(Point point) {
        return new Point(this.f1440x + point.f1440x, this.f1441y + point.f1441y, this.f1442z + point.f1442z);
    }

    Point substract(Point point) {
        return new Point(this.f1440x - point.f1440x, this.f1441y - point.f1441y, this.f1442z - point.f1442z);
    }

    Point multiplyByScalar(double d) {
        return new Point(this.f1440x * d, this.f1441y * d, this.f1442z * d);
    }

    float getDistanceTo(Point point) {
        return (float) Math.sqrt(Math.pow(this.f1440x - point.f1440x, 2.0d) + Math.pow(this.f1441y - point.f1441y, 2.0d) + Math.pow(this.f1442z - point.f1442z, 2.0d));
    }

    PointF toPointF() {
        return new PointF((float) this.f1440x, (float) this.f1441y);
    }
}
