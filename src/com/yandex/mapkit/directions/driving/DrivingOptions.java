package com.yandex.mapkit.directions.driving;

import com.yandex.mapkit.annotations.AnnotationLanguage;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class DrivingOptions implements Serializable {
    private AnnotationLanguage annotationLanguage;
    private AvoidanceFlags avoidanceFlags;
    private Long departureTime;
    private Double initialAzimuth;
    private Integer routesCount;

    public DrivingOptions(Double d, Integer num, Long l, AnnotationLanguage annotationLanguage, AvoidanceFlags avoidanceFlags) {
        this.initialAzimuth = d;
        this.routesCount = num;
        this.departureTime = l;
        this.annotationLanguage = annotationLanguage;
        this.avoidanceFlags = avoidanceFlags;
    }

    public DrivingOptions() {
        this.initialAzimuth = null;
        this.routesCount = null;
        this.departureTime = null;
        this.annotationLanguage = null;
        this.avoidanceFlags = null;
    }

    public Double getInitialAzimuth() {
        return this.initialAzimuth;
    }

    public DrivingOptions setInitialAzimuth(Double d) {
        this.initialAzimuth = d;
        return this;
    }

    public Integer getRoutesCount() {
        return this.routesCount;
    }

    public DrivingOptions setRoutesCount(Integer num) {
        this.routesCount = num;
        return this;
    }

    public Long getDepartureTime() {
        return this.departureTime;
    }

    public DrivingOptions setDepartureTime(Long l) {
        this.departureTime = l;
        return this;
    }

    public AnnotationLanguage getAnnotationLanguage() {
        return this.annotationLanguage;
    }

    public DrivingOptions setAnnotationLanguage(AnnotationLanguage annotationLanguage) {
        this.annotationLanguage = annotationLanguage;
        return this;
    }

    public AvoidanceFlags getAvoidanceFlags() {
        return this.avoidanceFlags;
    }

    public DrivingOptions setAvoidanceFlags(AvoidanceFlags avoidanceFlags) {
        this.avoidanceFlags = avoidanceFlags;
        return this;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.initialAzimuth = archive.add(this.initialAzimuth, true);
        this.routesCount = archive.add(this.routesCount, true);
        this.departureTime = archive.add(this.departureTime, true);
        this.annotationLanguage = (AnnotationLanguage) archive.add(this.annotationLanguage, true, (Class<AnnotationLanguage>) AnnotationLanguage.class);
        this.avoidanceFlags = (AvoidanceFlags) archive.add(this.avoidanceFlags, true, (Class<AvoidanceFlags>) AvoidanceFlags.class);
    }
}
