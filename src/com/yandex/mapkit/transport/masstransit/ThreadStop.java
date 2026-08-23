package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ThreadStop implements Serializable {
    private NativeObject nativeObject;
    private Point position;
    private boolean position__is_initialized;
    private Stop stop;
    private boolean stop__is_initialized;

    private native Point getPosition__Native();

    private native Stop getStop__Native();

    private native NativeObject init(Stop stop, Point point);

    public ThreadStop() {
        this.stop__is_initialized = false;
        this.position__is_initialized = false;
    }

    public ThreadStop(Stop stop, Point point) {
        this.stop__is_initialized = false;
        this.position__is_initialized = false;
        if (stop == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"stop\" cannot be null");
            throw null;
        }
        if (point == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"position\" cannot be null");
            throw null;
        }
        this.nativeObject = init(stop, point);
        this.stop = stop;
        this.stop__is_initialized = true;
        this.position = point;
        this.position__is_initialized = true;
    }

    private ThreadStop(NativeObject nativeObject) {
        this.stop__is_initialized = false;
        this.position__is_initialized = false;
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

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.stop = (Stop) archive.add(this.stop, false, (Class<Stop>) Stop.class);
            this.stop__is_initialized = true;
            Point point = (Point) archive.add(this.position, false, (Class<Point>) Point.class);
            this.position = point;
            this.position__is_initialized = true;
            this.nativeObject = init(this.stop, point);
            return;
        }
        archive.add(getStop(), false, (Class<Stop>) Stop.class);
        archive.add(getPosition(), false, (Class<Point>) Point.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::ThreadStop";
    }
}
