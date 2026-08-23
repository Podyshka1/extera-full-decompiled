package com.yandex.mapkit.map;

import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class CameraPosition implements Serializable {
    private float azimuth;
    private Point target;
    private float tilt;
    private float zoom;

    public CameraPosition(Point point, float f, float f2, float f3) {
        if (point == null) {
            throw new IllegalArgumentException("Required field \"target\" cannot be null");
        }
        this.target = point;
        this.zoom = f;
        this.azimuth = f2;
        this.tilt = f3;
    }

    public CameraPosition() {
    }

    public Point getTarget() {
        return this.target;
    }

    public float getZoom() {
        return this.zoom;
    }

    public float getAzimuth() {
        return this.azimuth;
    }

    public float getTilt() {
        return this.tilt;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.target = (Point) archive.add(this.target, false, (Class<Point>) Point.class);
        this.zoom = archive.add(this.zoom);
        this.azimuth = archive.add(this.azimuth);
        this.tilt = archive.add(this.tilt);
    }
}
