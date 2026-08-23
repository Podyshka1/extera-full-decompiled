package com.yandex.mapkit.geometry;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class Geometry implements Serializable {
    private BoundingBox boundingBox;
    private Circle circle;
    private MultiPolygon multiPolygon;
    private Point point;
    private Polygon polygon;
    private Polyline polyline;

    public static Geometry fromPoint(Point point) {
        if (point == null) {
            throw new IllegalArgumentException("Variant value \"point\" cannot be null");
        }
        Geometry geometry = new Geometry();
        geometry.point = point;
        return geometry;
    }

    public static Geometry fromPolyline(Polyline polyline) {
        if (polyline == null) {
            throw new IllegalArgumentException("Variant value \"polyline\" cannot be null");
        }
        Geometry geometry = new Geometry();
        geometry.polyline = polyline;
        return geometry;
    }

    public static Geometry fromPolygon(Polygon polygon) {
        if (polygon == null) {
            throw new IllegalArgumentException("Variant value \"polygon\" cannot be null");
        }
        Geometry geometry = new Geometry();
        geometry.polygon = polygon;
        return geometry;
    }

    public static Geometry fromMultiPolygon(MultiPolygon multiPolygon) {
        if (multiPolygon == null) {
            throw new IllegalArgumentException("Variant value \"multiPolygon\" cannot be null");
        }
        Geometry geometry = new Geometry();
        geometry.multiPolygon = multiPolygon;
        return geometry;
    }

    public static Geometry fromBoundingBox(BoundingBox boundingBox) {
        if (boundingBox == null) {
            throw new IllegalArgumentException("Variant value \"boundingBox\" cannot be null");
        }
        Geometry geometry = new Geometry();
        geometry.boundingBox = boundingBox;
        return geometry;
    }

    public static Geometry fromCircle(Circle circle) {
        if (circle == null) {
            throw new IllegalArgumentException("Variant value \"circle\" cannot be null");
        }
        Geometry geometry = new Geometry();
        geometry.circle = circle;
        return geometry;
    }

    public Point getPoint() {
        return this.point;
    }

    public Polyline getPolyline() {
        return this.polyline;
    }

    public Polygon getPolygon() {
        return this.polygon;
    }

    public MultiPolygon getMultiPolygon() {
        return this.multiPolygon;
    }

    public BoundingBox getBoundingBox() {
        return this.boundingBox;
    }

    public Circle getCircle() {
        return this.circle;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.point = (Point) archive.add(this.point, true, (Class<Point>) Point.class);
        this.polyline = (Polyline) archive.add(this.polyline, true, (Class<Polyline>) Polyline.class);
        this.polygon = (Polygon) archive.add(this.polygon, true, (Class<Polygon>) Polygon.class);
        this.multiPolygon = (MultiPolygon) archive.add(this.multiPolygon, true, (Class<MultiPolygon>) MultiPolygon.class);
        this.boundingBox = (BoundingBox) archive.add(this.boundingBox, true, (Class<BoundingBox>) BoundingBox.class);
        this.circle = (Circle) archive.add(this.circle, true, (Class<Circle>) Circle.class);
    }
}
