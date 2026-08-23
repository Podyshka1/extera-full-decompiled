package com.yandex.mapkit.transport.bicycle;

import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class RestrictedEntry implements Serializable {
    private NativeObject nativeObject;
    private PolylinePosition position;
    private boolean position__is_initialized;

    private native PolylinePosition getPosition__Native();

    private native NativeObject init(PolylinePosition polylinePosition);

    public RestrictedEntry() {
        this.position__is_initialized = false;
    }

    public RestrictedEntry(PolylinePosition polylinePosition) {
        this.position__is_initialized = false;
        if (polylinePosition == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"position\" cannot be null");
            throw null;
        }
        this.nativeObject = init(polylinePosition);
        this.position = polylinePosition;
        this.position__is_initialized = true;
    }

    private RestrictedEntry(NativeObject nativeObject) {
        this.position__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized PolylinePosition getPosition() {
        try {
            if (!this.position__is_initialized) {
                this.position = getPosition__Native();
                this.position__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.position;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            PolylinePosition polylinePosition = (PolylinePosition) archive.add(this.position, false, (Class<PolylinePosition>) PolylinePosition.class);
            this.position = polylinePosition;
            this.position__is_initialized = true;
            this.nativeObject = init(polylinePosition);
            return;
        }
        archive.add(getPosition(), false, (Class<PolylinePosition>) PolylinePosition.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::bicycle::RestrictedEntry";
    }
}
