package com.yandex.mapkit.geometry;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class Segment implements Serializable {
    private Point endPoint;
    private Point startPoint;

    public Segment(Point point, Point point2) {
        if (point == null) {
            throw new IllegalArgumentException("Required field \"startPoint\" cannot be null");
        }
        if (point2 == null) {
            throw new IllegalArgumentException("Required field \"endPoint\" cannot be null");
        }
        this.startPoint = point;
        this.endPoint = point2;
    }

    public Segment() {
    }

    public Point getStartPoint() {
        return this.startPoint;
    }

    public Point getEndPoint() {
        return this.endPoint;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.startPoint = (Point) archive.add(this.startPoint, false, (Class<Point>) Point.class);
        this.endPoint = (Point) archive.add(this.endPoint, false, (Class<Point>) Point.class);
    }
}
