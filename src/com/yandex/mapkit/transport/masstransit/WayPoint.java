package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class WayPoint implements Serializable {
    private String context;
    private boolean context__is_initialized;
    private String levelId;
    private boolean levelId__is_initialized;
    private String levelName;
    private boolean levelName__is_initialized;
    private NativeObject nativeObject;
    private Point position;
    private boolean position__is_initialized;
    private Point selectedArrivalPoint;
    private boolean selectedArrivalPoint__is_initialized;
    private Point selectedDeparturePoint;
    private boolean selectedDeparturePoint__is_initialized;

    private native String getContext__Native();

    private native String getLevelId__Native();

    private native String getLevelName__Native();

    private native Point getPosition__Native();

    private native Point getSelectedArrivalPoint__Native();

    private native Point getSelectedDeparturePoint__Native();

    private native NativeObject init(Point point, Point point2, Point point3, String str, String str2, String str3);

    public WayPoint() {
        this.position__is_initialized = false;
        this.selectedArrivalPoint__is_initialized = false;
        this.selectedDeparturePoint__is_initialized = false;
        this.context__is_initialized = false;
        this.levelId__is_initialized = false;
        this.levelName__is_initialized = false;
    }

    public WayPoint(Point point, Point point2, Point point3, String str, String str2, String str3) {
        this.position__is_initialized = false;
        this.selectedArrivalPoint__is_initialized = false;
        this.selectedDeparturePoint__is_initialized = false;
        this.context__is_initialized = false;
        this.levelId__is_initialized = false;
        this.levelName__is_initialized = false;
        if (point == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"position\" cannot be null");
            throw null;
        }
        this.nativeObject = init(point, point2, point3, str, str2, str3);
        this.position = point;
        this.position__is_initialized = true;
        this.selectedArrivalPoint = point2;
        this.selectedArrivalPoint__is_initialized = true;
        this.selectedDeparturePoint = point3;
        this.selectedDeparturePoint__is_initialized = true;
        this.context = str;
        this.context__is_initialized = true;
        this.levelId = str2;
        this.levelId__is_initialized = true;
        this.levelName = str3;
        this.levelName__is_initialized = true;
    }

    private WayPoint(NativeObject nativeObject) {
        this.position__is_initialized = false;
        this.selectedArrivalPoint__is_initialized = false;
        this.selectedDeparturePoint__is_initialized = false;
        this.context__is_initialized = false;
        this.levelId__is_initialized = false;
        this.levelName__is_initialized = false;
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

    public synchronized Point getSelectedDeparturePoint() {
        try {
            if (!this.selectedDeparturePoint__is_initialized) {
                this.selectedDeparturePoint = getSelectedDeparturePoint__Native();
                this.selectedDeparturePoint__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.selectedDeparturePoint;
    }

    public synchronized String getContext() {
        try {
            if (!this.context__is_initialized) {
                this.context = getContext__Native();
                this.context__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.context;
    }

    public synchronized String getLevelId() {
        try {
            if (!this.levelId__is_initialized) {
                this.levelId = getLevelId__Native();
                this.levelId__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.levelId;
    }

    public synchronized String getLevelName() {
        try {
            if (!this.levelName__is_initialized) {
                this.levelName = getLevelName__Native();
                this.levelName__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.levelName;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.position = (Point) archive.add(this.position, false, (Class<Point>) Point.class);
            this.position__is_initialized = true;
            this.selectedArrivalPoint = (Point) archive.add(this.selectedArrivalPoint, true, (Class<Point>) Point.class);
            this.selectedArrivalPoint__is_initialized = true;
            this.selectedDeparturePoint = (Point) archive.add(this.selectedDeparturePoint, true, (Class<Point>) Point.class);
            this.selectedDeparturePoint__is_initialized = true;
            this.context = archive.add(this.context, true);
            this.context__is_initialized = true;
            this.levelId = archive.add(this.levelId, true);
            this.levelId__is_initialized = true;
            String strAdd = archive.add(this.levelName, true);
            this.levelName = strAdd;
            this.levelName__is_initialized = true;
            this.nativeObject = init(this.position, this.selectedArrivalPoint, this.selectedDeparturePoint, this.context, this.levelId, strAdd);
            return;
        }
        archive.add(getPosition(), false, (Class<Point>) Point.class);
        archive.add(getSelectedArrivalPoint(), true, (Class<Point>) Point.class);
        archive.add(getSelectedDeparturePoint(), true, (Class<Point>) Point.class);
        archive.add(getContext(), true);
        archive.add(getLevelId(), true);
        archive.add(getLevelName(), true);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::WayPoint";
    }
}
