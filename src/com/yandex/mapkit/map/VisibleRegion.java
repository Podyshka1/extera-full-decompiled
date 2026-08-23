package com.yandex.mapkit.map;

import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class VisibleRegion implements Serializable {
    private Point bottomLeft;
    private Point bottomRight;
    private Point topLeft;
    private Point topRight;

    public VisibleRegion(Point point, Point point2, Point point3, Point point4) {
        if (point == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"topLeft\" cannot be null");
            throw null;
        }
        if (point2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"topRight\" cannot be null");
            throw null;
        }
        if (point3 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"bottomLeft\" cannot be null");
            throw null;
        }
        if (point4 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"bottomRight\" cannot be null");
            throw null;
        }
        this.topLeft = point;
        this.topRight = point2;
        this.bottomLeft = point3;
        this.bottomRight = point4;
    }

    public VisibleRegion() {
    }

    public Point getTopLeft() {
        return this.topLeft;
    }

    public Point getTopRight() {
        return this.topRight;
    }

    public Point getBottomLeft() {
        return this.bottomLeft;
    }

    public Point getBottomRight() {
        return this.bottomRight;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.topLeft = (Point) archive.add(this.topLeft, false, (Class<Point>) Point.class);
        this.topRight = (Point) archive.add(this.topRight, false, (Class<Point>) Point.class);
        this.bottomLeft = (Point) archive.add(this.bottomLeft, false, (Class<Point>) Point.class);
        this.bottomRight = (Point) archive.add(this.bottomRight, false, (Class<Point>) Point.class);
    }
}
