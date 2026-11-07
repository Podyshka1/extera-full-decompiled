package org.telegram.ui.Components.Paint;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes7.dex */
public class Point {
    public boolean edge;

    /* JADX INFO: renamed from: x */
    public double f1119x;

    /* JADX INFO: renamed from: y */
    public double f1120y;

    /* JADX INFO: renamed from: z */
    public double f1121z;

    public Point(double d, double d2, double d3) {
        this.f1119x = d;
        this.f1120y = d2;
        this.f1121z = d3;
    }

    public Point(double d, double d2, double d3, boolean z) {
        this.f1119x = d;
        this.f1120y = d2;
        this.f1121z = d3;
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
        return this.f1119x == point.f1119x && this.f1120y == point.f1120y && this.f1121z == point.f1121z;
    }

    public Point multiplySum(Point point, double d) {
        return new Point((this.f1119x + point.f1119x) * d, (this.f1120y + point.f1120y) * d, (this.f1121z + point.f1121z) * d);
    }

    public Point add(Point point) {
        return new Point(this.f1119x + point.f1119x, this.f1120y + point.f1120y, this.f1121z + point.f1121z);
    }

    public Point substract(Point point) {
        return new Point(this.f1119x - point.f1119x, this.f1120y - point.f1120y, this.f1121z - point.f1121z);
    }

    public Point multiplyByScalar(double d) {
        return new Point(this.f1119x * d, this.f1120y * d, this.f1121z * d);
    }

    public float getDistanceTo(Point point) {
        return (float) Math.sqrt(Math.pow(this.f1119x - point.f1119x, 2.0d) + Math.pow(this.f1120y - point.f1120y, 2.0d) + Math.pow(this.f1121z - point.f1121z, 2.0d));
    }

    public PointF toPointF() {
        return new PointF((float) this.f1119x, (float) this.f1120y);
    }
}
