package com.yandex.mapkit.geometry;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class BoundingBox implements Serializable {
    private Point northEast;
    private Point southWest;

    public BoundingBox(Point point, Point point2) {
        if (point == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"southWest\" cannot be null");
            throw null;
        }
        if (point2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"northEast\" cannot be null");
            throw null;
        }
        this.southWest = point;
        this.northEast = point2;
    }

    public BoundingBox() {
    }

    public Point getSouthWest() {
        return this.southWest;
    }

    public Point getNorthEast() {
        return this.northEast;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.southWest = (Point) archive.add(this.southWest, false, (Class<Point>) Point.class);
        this.northEast = (Point) archive.add(this.northEast, false, (Class<Point>) Point.class);
    }
}
