package com.yandex.mapkit.search;

import com.yandex.mapkit.geometry.Direction;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.geometry.Span;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Panorama implements Serializable {
    private Direction direction;
    private String id;
    private Point point;
    private Span span;

    public Panorama(String str, Direction direction, Span span, Point point) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"id\" cannot be null");
            throw null;
        }
        if (direction == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"direction\" cannot be null");
            throw null;
        }
        if (span == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"span\" cannot be null");
            throw null;
        }
        if (point == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"point\" cannot be null");
            throw null;
        }
        this.id = str;
        this.direction = direction;
        this.span = span;
        this.point = point;
    }

    public Panorama() {
    }

    public String getId() {
        return this.id;
    }

    public Direction getDirection() {
        return this.direction;
    }

    public Span getSpan() {
        return this.span;
    }

    public Point getPoint() {
        return this.point;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.id = archive.add(this.id, false);
        this.direction = (Direction) archive.add(this.direction, false, (Class<Direction>) Direction.class);
        this.span = (Span) archive.add(this.span, false, (Class<Span>) Span.class);
        this.point = (Point) archive.add(this.point, false, (Class<Point>) Point.class);
    }
}
