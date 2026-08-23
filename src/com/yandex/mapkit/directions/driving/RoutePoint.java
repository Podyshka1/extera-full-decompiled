package com.yandex.mapkit.directions.driving;

import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class RoutePoint implements Serializable {
    private NativeObject nativeObject;
    private Point position;
    private boolean position__is_initialized;
    private Point selectedArrivalPoint;
    private boolean selectedArrivalPoint__is_initialized;

    private native Point getPosition__Native();

    private native Point getSelectedArrivalPoint__Native();

    private native NativeObject init(Point point, Point point2);

    public RoutePoint() {
        this.position__is_initialized = false;
        this.selectedArrivalPoint__is_initialized = false;
    }

    public RoutePoint(Point point, Point point2) {
        this.position__is_initialized = false;
        this.selectedArrivalPoint__is_initialized = false;
        if (point == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"position\" cannot be null");
            throw null;
        }
        this.nativeObject = init(point, point2);
        this.position = point;
        this.position__is_initialized = true;
        this.selectedArrivalPoint = point2;
        this.selectedArrivalPoint__is_initialized = true;
    }

    private RoutePoint(NativeObject nativeObject) {
        this.position__is_initialized = false;
        this.selectedArrivalPoint__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Point getPosition() {
        try {
            if (!this.position__is_initialized) {
                this.position = getPosition__Native();
                this.position__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.position;
    }

    public synchronized Point getSelectedArrivalPoint() {
        try {
            if (!this.selectedArrivalPoint__is_initialized) {
                this.selectedArrivalPoint = getSelectedArrivalPoint__Native();
                this.selectedArrivalPoint__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.selectedArrivalPoint;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.position = (Point) archive.add(this.position, false, (Class<Point>) Point.class);
            this.position__is_initialized = true;
            Point point = (Point) archive.add(this.selectedArrivalPoint, true, (Class<Point>) Point.class);
            this.selectedArrivalPoint = point;
            this.selectedArrivalPoint__is_initialized = true;
            this.nativeObject = init(this.position, point);
            return;
        }
        archive.add(getPosition(), false, (Class<Point>) Point.class);
        archive.add(getSelectedArrivalPoint(), true, (Class<Point>) Point.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::directions::driving::RoutePoint";
    }
}
