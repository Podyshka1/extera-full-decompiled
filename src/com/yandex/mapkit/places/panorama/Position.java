package com.yandex.mapkit.places.panorama;

import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Position implements Serializable {
    private double altitude;
    private Point point;

    public Position(Point point, double d) {
        if (point == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"point\" cannot be null");
            throw null;
        }
        this.point = point;
        this.altitude = d;
    }

    public Position() {
    }

    public Point getPoint() {
        return this.point;
    }

    public double getAltitude() {
        return this.altitude;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.point = (Point) archive.add(this.point, false, (Class<Point>) Point.class);
        this.altitude = archive.add(this.altitude);
    }
}
