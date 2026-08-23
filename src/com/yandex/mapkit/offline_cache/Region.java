package com.yandex.mapkit.offline_cache;

import com.yandex.mapkit.LocalizedValue;
import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Region implements Serializable {
    private Point center;
    private String country;
    private int id;
    private String name;
    private Integer parentId;
    private long releaseTime;
    private LocalizedValue size;

    public Region(int i, String str, String str2, Point point, LocalizedValue localizedValue, long j, Integer num) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"name\" cannot be null");
            throw null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"country\" cannot be null");
            throw null;
        }
        if (point == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"center\" cannot be null");
            throw null;
        }
        if (localizedValue == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"size\" cannot be null");
            throw null;
        }
        this.id = i;
        this.name = str;
        this.country = str2;
        this.center = point;
        this.size = localizedValue;
        this.releaseTime = j;
        this.parentId = num;
    }

    public Region() {
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getCountry() {
        return this.country;
    }

    public Point getCenter() {
        return this.center;
    }

    public LocalizedValue getSize() {
        return this.size;
    }

    public long getReleaseTime() {
        return this.releaseTime;
    }

    public Integer getParentId() {
        return this.parentId;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.id = archive.add(this.id);
        this.name = archive.add(this.name, false);
        this.country = archive.add(this.country, false);
        this.center = (Point) archive.add(this.center, false, (Class<Point>) Point.class);
        this.size = (LocalizedValue) archive.add(this.size, false, (Class<LocalizedValue>) LocalizedValue.class);
        this.releaseTime = archive.add(this.releaseTime);
        this.parentId = archive.add(this.parentId, true);
    }
}
