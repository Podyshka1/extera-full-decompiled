package com.yandex.mapkit.directions.driving;

import com.yandex.mapkit.geometry.Subpolyline;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class DrivingSection implements Serializable {
    private Subpolyline geometry;
    private boolean geometry__is_initialized;
    private DrivingSectionMetadata metadata;
    private boolean metadata__is_initialized;
    private NativeObject nativeObject;

    private native Subpolyline getGeometry__Native();

    private native DrivingSectionMetadata getMetadata__Native();

    private native NativeObject init(DrivingSectionMetadata drivingSectionMetadata, Subpolyline subpolyline);

    public DrivingSection() {
        this.metadata__is_initialized = false;
        this.geometry__is_initialized = false;
    }

    public DrivingSection(DrivingSectionMetadata drivingSectionMetadata, Subpolyline subpolyline) {
        this.metadata__is_initialized = false;
        this.geometry__is_initialized = false;
        if (drivingSectionMetadata == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"metadata\" cannot be null");
            throw null;
        }
        if (subpolyline == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"geometry\" cannot be null");
            throw null;
        }
        this.nativeObject = init(drivingSectionMetadata, subpolyline);
        this.metadata = drivingSectionMetadata;
        this.metadata__is_initialized = true;
        this.geometry = subpolyline;
        this.geometry__is_initialized = true;
    }

    private DrivingSection(NativeObject nativeObject) {
        this.metadata__is_initialized = false;
        this.geometry__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized DrivingSectionMetadata getMetadata() {
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

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.metadata = (DrivingSectionMetadata) archive.add(this.metadata, false, (Class<DrivingSectionMetadata>) DrivingSectionMetadata.class);
            this.metadata__is_initialized = true;
            Subpolyline subpolyline = (Subpolyline) archive.add(this.geometry, false, (Class<Subpolyline>) Subpolyline.class);
            this.geometry = subpolyline;
            this.geometry__is_initialized = true;
            this.nativeObject = init(this.metadata, subpolyline);
            return;
        }
        archive.add(getMetadata(), false, (Class<DrivingSectionMetadata>) DrivingSectionMetadata.class);
        archive.add(getGeometry(), false, (Class<Subpolyline>) Subpolyline.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::directions::driving::Section";
    }
}
