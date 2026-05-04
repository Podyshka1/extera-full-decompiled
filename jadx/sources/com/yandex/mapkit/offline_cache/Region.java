package com.yandex.mapkit.offline_cache;

import com.yandex.mapkit.LocalizedValue;
import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class Region implements Serializable {
    private Point center;
    private String country;

    /* JADX INFO: renamed from: id */
    private int f621id;
    private String name;
    private Integer parentId;
    private long releaseTime;
    private LocalizedValue size;

    public Region(int i, String str, String str2, Point point, LocalizedValue localizedValue, long j, Integer num) {
        if (str == null) {
            throw new IllegalArgumentException("Required field \"name\" cannot be null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("Required field \"country\" cannot be null");
        }
        if (point == null) {
            throw new IllegalArgumentException("Required field \"center\" cannot be null");
        }
        if (localizedValue == null) {
            throw new IllegalArgumentException("Required field \"size\" cannot be null");
        }
        this.f621id = i;
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
        return this.f621id;
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
        this.f621id = archive.add(this.f621id);
        this.name = archive.add(this.name, false);
        this.country = archive.add(this.country, false);
        this.center = (Point) archive.add(this.center, false, (Class<Point>) Point.class);
        this.size = (LocalizedValue) archive.add(this.size, false, (Class<LocalizedValue>) LocalizedValue.class);
        this.releaseTime = archive.add(this.releaseTime);
        this.parentId = archive.add(this.parentId, true);
    }
}
