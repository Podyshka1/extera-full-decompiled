package org.telegram.ui.Components.Paint;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes7.dex */
public class Point {
    public boolean edge;

    /* JADX INFO: renamed from: x */
    public double f1121x;

    /* JADX INFO: renamed from: y */
    public double f1122y;

    /* JADX INFO: renamed from: z */
    public double f1123z;

    public Point(double d, double d2, double d3) {
        this.f1121x = d;
        this.f1122y = d2;
        this.f1123z = d3;
    }

    public Point(double d, double d2, double d3, boolean z) {
        this.f1121x = d;
        this.f1122y = d2;
        this.f1123z = d3;
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
        return this.f1121x == point.f1121x && this.f1122y == point.f1122y && this.f1123z == point.f1123z;
    }

    public Point multiplySum(Point point, double d) {
        return new Point((this.f1121x + point.f1121x) * d, (this.f1122y + point.f1122y) * d, (this.f1123z + point.f1123z) * d);
    }

    public Point add(Point point) {
        return new Point(this.f1121x + point.f1121x, this.f1122y + point.f1122y, this.f1123z + point.f1123z);
    }

    public Point substract(Point point) {
        return new Point(this.f1121x - point.f1121x, this.f1122y - point.f1122y, this.f1123z - point.f1123z);
    }

    public Point multiplyByScalar(double d) {
        return new Point(this.f1121x * d, this.f1122y * d, this.f1123z * d);
    }

    public float getDistanceTo(Point point) {
        return (float) Math.sqrt(Math.pow(this.f1121x - point.f1121x, 2.0d) + Math.pow(this.f1122y - point.f1122y, 2.0d) + Math.pow(this.f1123z - point.f1123z, 2.0d));
    }

    public PointF toPointF() {
        return new PointF((float) this.f1121x, (float) this.f1122y);
    }
}
