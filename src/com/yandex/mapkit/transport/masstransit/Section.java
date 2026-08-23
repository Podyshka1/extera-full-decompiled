package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.geometry.Subpolyline;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Section implements Serializable {
    private Subpolyline geometry;
    private boolean geometry__is_initialized;
    private SectionMetadata metadata;
    private boolean metadata__is_initialized;
    private NativeObject nativeObject;
    private List<Subpolyline> rideLegs;
    private boolean rideLegs__is_initialized;
    private List<RouteStop> stops;
    private boolean stops__is_initialized;

    private native Subpolyline getGeometry__Native();

    private native SectionMetadata getMetadata__Native();

    private native List<Subpolyline> getRideLegs__Native();

    private native List<RouteStop> getStops__Native();

    private native NativeObject init(SectionMetadata sectionMetadata, Subpolyline subpolyline, List<RouteStop> list, List<Subpolyline> list2);

    public Section() {
        this.metadata__is_initialized = false;
        this.geometry__is_initialized = false;
        this.stops__is_initialized = false;
        this.rideLegs__is_initialized = false;
    }

    public Section(SectionMetadata sectionMetadata, Subpolyline subpolyline, List<RouteStop> list, List<Subpolyline> list2) {
        this.metadata__is_initialized = false;
        this.geometry__is_initialized = false;
        this.stops__is_initialized = false;
        this.rideLegs__is_initialized = false;
        if (sectionMetadata == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"metadata\" cannot be null");
            throw null;
        }
        if (subpolyline == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"geometry\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"stops\" cannot be null");
            throw null;
        }
        if (list2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"rideLegs\" cannot be null");
            throw null;
        }
        this.nativeObject = init(sectionMetadata, subpolyline, list, list2);
        this.metadata = sectionMetadata;
        this.metadata__is_initialized = true;
        this.geometry = subpolyline;
        this.geometry__is_initialized = true;
        this.stops = list;
        this.stops__is_initialized = true;
        this.rideLegs = list2;
        this.rideLegs__is_initialized = true;
    }

    private Section(NativeObject nativeObject) {
        this.metadata__is_initialized = false;
        this.geometry__is_initialized = false;
        this.stops__is_initialized = false;
        this.rideLegs__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized SectionMetadata getMetadata() {
        try {
            if (!this.metadata__is_initialized) {
                this.metadata = getMetadata__Native();
                this.metadata__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.metadata;
    }

    public synchronized Subpolyline getGeometry() {
        try {
            if (!this.geometry__is_initialized) {
                this.geometry = getGeometry__Native();
                this.geometry__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.geometry;
    }

    public synchronized List<RouteStop> getStops() {
        try {
            if (!this.stops__is_initialized) {
                this.stops = getStops__Native();
                this.stops__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.stops;
    }

    public synchronized List<Subpolyline> getRideLegs() {
        try {
            if (!this.rideLegs__is_initialized) {
                this.rideLegs = getRideLegs__Native();
                this.rideLegs__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.rideLegs;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.metadata = (SectionMetadata) archive.add(this.metadata, false, (Class<SectionMetadata>) SectionMetadata.class);
            this.metadata__is_initialized = true;
            this.geometry = (Subpolyline) archive.add(this.geometry, false, (Class<Subpolyline>) Subpolyline.class);
            this.geometry__is_initialized = true;
            this.stops = archive.add((List) this.stops, false, (ArchivingHandler) new ClassHandler(RouteStop.class));
            this.stops__is_initialized = true;
            List<Subpolyline> listAdd = archive.add((List) this.rideLegs, false, (ArchivingHandler) new ClassHandler(Subpolyline.class));
            this.rideLegs = listAdd;
            this.rideLegs__is_initialized = true;
            this.nativeObject = init(this.metadata, this.geometry, this.stops, listAdd);
            return;
        }
        archive.add(getMetadata(), false, (Class<SectionMetadata>) SectionMetadata.class);
        archive.add(getGeometry(), false, (Class<Subpolyline>) Subpolyline.class);
        archive.add((List) getStops(), false, (ArchivingHandler) new ClassHandler(RouteStop.class));
        archive.add((List) getRideLegs(), false, (ArchivingHandler) new ClassHandler(Subpolyline.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::Section";
    }
}
