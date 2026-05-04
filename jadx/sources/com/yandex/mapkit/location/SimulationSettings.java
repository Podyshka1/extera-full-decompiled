package com.yandex.mapkit.location;

import com.yandex.mapkit.geometry.Polyline;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class SimulationSettings implements Serializable {
    private Polyline geometry;
    private boolean geometry__is_initialized;
    private LocationSettings locationSettings;
    private boolean locationSettings__is_initialized;
    private NativeObject nativeObject;

    private native Polyline getGeometry__Native();

    private native LocationSettings getLocationSettings__Native();

    private native NativeObject init(Polyline polyline, LocationSettings locationSettings);

    public SimulationSettings() {
        this.geometry__is_initialized = false;
        this.locationSettings__is_initialized = false;
    }

    public SimulationSettings(Polyline polyline, LocationSettings locationSettings) {
        this.geometry__is_initialized = false;
        this.locationSettings__is_initialized = false;
        if (polyline == null) {
            throw new IllegalArgumentException("Required field \"geometry\" cannot be null");
        }
        if (locationSettings == null) {
            throw new IllegalArgumentException("Required field \"locationSettings\" cannot be null");
        }
        this.nativeObject = init(polyline, locationSettings);
        this.geometry = polyline;
        this.geometry__is_initialized = true;
        this.locationSettings = locationSettings;
        this.locationSettings__is_initialized = true;
    }

    private SimulationSettings(NativeObject nativeObject) {
        this.geometry__is_initialized = false;
        this.locationSettings__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Polyline getGeometry() {
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

    public synchronized LocationSettings getLocationSettings() {
        try {
            if (!this.locationSettings__is_initialized) {
                this.locationSettings = getLocationSettings__Native();
                this.locationSettings__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.locationSettings;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.geometry = (Polyline) archive.add(this.geometry, false, (Class<Polyline>) Polyline.class);
            this.geometry__is_initialized = true;
            LocationSettings locationSettings = (LocationSettings) archive.add(this.locationSettings, false, (Class<LocationSettings>) LocationSettings.class);
            this.locationSettings = locationSettings;
            this.locationSettings__is_initialized = true;
            this.nativeObject = init(this.geometry, locationSettings);
            return;
        }
        archive.add(getGeometry(), false, (Class<Polyline>) Polyline.class);
        archive.add(getLocationSettings(), false, (Class<LocationSettings>) LocationSettings.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::location::SimulationSettings";
    }
}
