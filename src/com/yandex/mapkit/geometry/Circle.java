package com.yandex.mapkit.geometry;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Circle implements Serializable {
    private Point center;
    private float radius;

    public Circle(Point point, float f) {
        if (point == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"center\" cannot be null");
            throw null;
        }
        this.center = point;
        this.radius = f;
    }

    public Circle() {
    }

    public Point getCenter() {
        return this.center;
    }

    public float getRadius() {
        return this.radius;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.center = (Point) archive.add(this.center, false, (Class<Point>) Point.class);
        this.radius = archive.add(this.radius);
    }
}
