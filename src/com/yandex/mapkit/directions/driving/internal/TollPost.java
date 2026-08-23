package com.yandex.mapkit.directions.driving.internal;

import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class TollPost implements Serializable {
    private Long id;
    private Boolean nonTransactional;
    private PolylinePosition position;
    private Double time_with_traffic;

    public TollPost(PolylinePosition polylinePosition, Long l, Double d, Boolean bool) {
        if (polylinePosition == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"position\" cannot be null");
            throw null;
        }
        this.position = polylinePosition;
        this.id = l;
        this.time_with_traffic = d;
        this.nonTransactional = bool;
    }

    public TollPost() {
    }

    public PolylinePosition getPosition() {
        return this.position;
    }

    public Long getId() {
        return this.id;
    }

    public Double getTime_with_traffic() {
        return this.time_with_traffic;
    }

    public Boolean getNonTransactional() {
        return this.nonTransactional;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.position = (PolylinePosition) archive.add(this.position, false, (Class<PolylinePosition>) PolylinePosition.class);
        this.id = archive.add(this.id, true);
        this.time_with_traffic = archive.add(this.time_with_traffic, true);
        this.nonTransactional = archive.add(this.nonTransactional, true);
    }
}
