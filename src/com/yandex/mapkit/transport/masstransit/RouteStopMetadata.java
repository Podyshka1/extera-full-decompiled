package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class RouteStopMetadata implements BaseMetadata, Serializable {
    private Point exitPoint;
    private boolean exitPoint__is_initialized;
    private NativeObject nativeObject;
    private Stop stop;
    private Stop stopExit;
    private boolean stopExit__is_initialized;
    private boolean stop__is_initialized;

    private native Point getExitPoint__Native();

    private native Stop getStopExit__Native();

    private native Stop getStop__Native();

    private native NativeObject init(Stop stop, Stop stop2, Point point);

    public RouteStopMetadata() {
        this.stop__is_initialized = false;
        this.stopExit__is_initialized = false;
        this.exitPoint__is_initialized = false;
    }

    public RouteStopMetadata(Stop stop, Stop stop2, Point point) {
        this.stop__is_initialized = false;
        this.stopExit__is_initialized = false;
        this.exitPoint__is_initialized = false;
        if (stop == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"stop\" cannot be null");
            throw null;
        }
        this.nativeObject = init(stop, stop2, point);
        this.stop = stop;
        this.stop__is_initialized = true;
        this.stopExit = stop2;
        this.stopExit__is_initialized = true;
        this.exitPoint = point;
        this.exitPoint__is_initialized = true;
    }

    private RouteStopMetadata(NativeObject nativeObject) {
        this.stop__is_initialized = false;
        this.stopExit__is_initialized = false;
        this.exitPoint__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Stop getStop() {
        try {
            if (!this.stop__is_initialized) {
                this.stop = getStop__Native();
                this.stop__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.stop;
    }

    public synchronized Stop getStopExit() {
        try {
            if (!this.stopExit__is_initialized) {
                this.stopExit = getStopExit__Native();
                this.stopExit__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.stopExit;
    }

    public synchronized Point getExitPoint() {
        try {
            if (!this.exitPoint__is_initialized) {
                this.exitPoint = getExitPoint__Native();
                this.exitPoint__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.exitPoint;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.stop = (Stop) archive.add(this.stop, false, (Class<Stop>) Stop.class);
            this.stop__is_initialized = true;
            this.stopExit = (Stop) archive.add(this.stopExit, true, (Class<Stop>) Stop.class);
            this.stopExit__is_initialized = true;
            Point point = (Point) archive.add(this.exitPoint, true, (Class<Point>) Point.class);
            this.exitPoint = point;
            this.exitPoint__is_initialized = true;
            this.nativeObject = init(this.stop, this.stopExit, point);
            return;
        }
        archive.add(getStop(), false, (Class<Stop>) Stop.class);
        archive.add(getStopExit(), true, (Class<Stop>) Stop.class);
        archive.add(getExitPoint(), true, (Class<Point>) Point.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::RouteStopMetadata";
    }
}
