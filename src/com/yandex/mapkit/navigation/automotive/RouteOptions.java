package com.yandex.mapkit.navigation.automotive;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class RouteOptions implements Serializable {
    private Double initialAzimuth;
    private Integer routesCount;

    public RouteOptions(Double d, Integer num) {
        this.initialAzimuth = d;
        this.routesCount = num;
    }

    public RouteOptions() {
        this.initialAzimuth = null;
        this.routesCount = null;
    }

    public Double getInitialAzimuth() {
        return this.initialAzimuth;
    }

    public RouteOptions setInitialAzimuth(Double d) {
        this.initialAzimuth = d;
        return this;
    }

    public Integer getRoutesCount() {
        return this.routesCount;
    }

    public RouteOptions setRoutesCount(Integer num) {
        this.routesCount = num;
        return this;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.initialAzimuth = archive.add(this.initialAzimuth, true);
        this.routesCount = archive.add(this.routesCount, true);
    }
}
