package com.yandex.mapkit.location;

import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Location implements Serializable {
    private long absoluteTimestamp;
    private Double accuracy;
    private Double altitude;
    private Double altitudeAccuracy;
    private Double heading;
    private String indoorLevelId;
    private Point position;
    private long relativeTimestamp;
    private Double speed;

    public Location(Point point, Double d, Double d2, Double d3, Double d4, Double d5, String str, long j, long j2) {
        if (point == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"position\" cannot be null");
            throw null;
        }
        this.position = point;
        this.accuracy = d;
        this.altitude = d2;
        this.altitudeAccuracy = d3;
        this.heading = d4;
        this.speed = d5;
        this.indoorLevelId = str;
        this.absoluteTimestamp = j;
        this.relativeTimestamp = j2;
    }

    public Location() {
    }

    public Point getPosition() {
        return this.position;
    }

    public Double getAccuracy() {
        return this.accuracy;
    }

    public Double getAltitude() {
        return this.altitude;
    }

    public Double getAltitudeAccuracy() {
        return this.altitudeAccuracy;
    }

    public Double getHeading() {
        return this.heading;
    }

    public Double getSpeed() {
        return this.speed;
    }

    public String getIndoorLevelId() {
        return this.indoorLevelId;
    }

    public long getAbsoluteTimestamp() {
        return this.absoluteTimestamp;
    }

    public long getRelativeTimestamp() {
        return this.relativeTimestamp;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.position = (Point) archive.add(this.position, false, (Class<Point>) Point.class);
        this.accuracy = archive.add(this.accuracy, true);
        this.altitude = archive.add(this.altitude, true);
        this.altitudeAccuracy = archive.add(this.altitudeAccuracy, true);
        this.heading = archive.add(this.heading, true);
        this.speed = archive.add(this.speed, true);
        this.indoorLevelId = archive.add(this.indoorLevelId, true);
        this.absoluteTimestamp = archive.add(this.absoluteTimestamp);
        this.relativeTimestamp = archive.add(this.relativeTimestamp);
    }
}
