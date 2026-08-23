package com.yandex.mapkit;

import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class RequestPoint implements Serializable {
    private String drivingArrivalPointId;
    private boolean drivingArrivalPointId__is_initialized;
    private String indoorLevelId;
    private boolean indoorLevelId__is_initialized;
    private NativeObject nativeObject;
    private Point point;
    private String pointContext;
    private boolean pointContext__is_initialized;
    private boolean point__is_initialized;
    private RequestPointType type;
    private boolean type__is_initialized;

    private native String getDrivingArrivalPointId__Native();

    private native String getIndoorLevelId__Native();

    private native String getPointContext__Native();

    private native Point getPoint__Native();

    private native RequestPointType getType__Native();

    private native NativeObject init(Point point, RequestPointType requestPointType, String str, String str2, String str3);

    public RequestPoint() {
        this.point__is_initialized = false;
        this.type__is_initialized = false;
        this.pointContext__is_initialized = false;
        this.drivingArrivalPointId__is_initialized = false;
        this.indoorLevelId__is_initialized = false;
    }

    public RequestPoint(Point point, RequestPointType requestPointType, String str, String str2, String str3) {
        this.point__is_initialized = false;
        this.type__is_initialized = false;
        this.pointContext__is_initialized = false;
        this.drivingArrivalPointId__is_initialized = false;
        this.indoorLevelId__is_initialized = false;
        if (point == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"point\" cannot be null");
            throw null;
        }
        if (requestPointType == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"type\" cannot be null");
            throw null;
        }
        this.nativeObject = init(point, requestPointType, str, str2, str3);
        this.point = point;
        this.point__is_initialized = true;
        this.type = requestPointType;
        this.type__is_initialized = true;
        this.pointContext = str;
        this.pointContext__is_initialized = true;
        this.drivingArrivalPointId = str2;
        this.drivingArrivalPointId__is_initialized = true;
        this.indoorLevelId = str3;
        this.indoorLevelId__is_initialized = true;
    }

    private RequestPoint(NativeObject nativeObject) {
        this.point__is_initialized = false;
        this.type__is_initialized = false;
        this.pointContext__is_initialized = false;
        this.drivingArrivalPointId__is_initialized = false;
        this.indoorLevelId__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Point getPoint() {
        try {
            if (!this.point__is_initialized) {
                this.point = getPoint__Native();
                this.point__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.point;
    }

    public synchronized RequestPointType getType() {
        try {
            if (!this.type__is_initialized) {
                this.type = getType__Native();
                this.type__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.type;
    }

    public synchronized String getPointContext() {
        try {
            if (!this.pointContext__is_initialized) {
                this.pointContext = getPointContext__Native();
                this.pointContext__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.pointContext;
    }

    public synchronized String getDrivingArrivalPointId() {
        try {
            if (!this.drivingArrivalPointId__is_initialized) {
                this.drivingArrivalPointId = getDrivingArrivalPointId__Native();
                this.drivingArrivalPointId__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.drivingArrivalPointId;
    }

    public synchronized String getIndoorLevelId() {
        try {
            if (!this.indoorLevelId__is_initialized) {
                this.indoorLevelId = getIndoorLevelId__Native();
                this.indoorLevelId__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.indoorLevelId;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.point = (Point) archive.add(this.point, false, (Class<Point>) Point.class);
            this.point__is_initialized = true;
            this.type = (RequestPointType) archive.add(this.type, false, (Class<RequestPointType>) RequestPointType.class);
            this.type__is_initialized = true;
            this.pointContext = archive.add(this.pointContext, true);
            this.pointContext__is_initialized = true;
            this.drivingArrivalPointId = archive.add(this.drivingArrivalPointId, true);
            this.drivingArrivalPointId__is_initialized = true;
            String strAdd = archive.add(this.indoorLevelId, true);
            this.indoorLevelId = strAdd;
            this.indoorLevelId__is_initialized = true;
            this.nativeObject = init(this.point, this.type, this.pointContext, this.drivingArrivalPointId, strAdd);
            return;
        }
        archive.add(getPoint(), false, (Class<Point>) Point.class);
        archive.add(getType(), false, (Class<RequestPointType>) RequestPointType.class);
        archive.add(getPointContext(), true);
        archive.add(getDrivingArrivalPointId(), true);
        archive.add(getIndoorLevelId(), true);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::RequestPoint";
    }
}
