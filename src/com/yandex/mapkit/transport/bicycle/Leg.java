package com.yandex.mapkit.transport.bicycle;

import com.yandex.mapkit.geometry.Subpolyline;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Leg implements Serializable {
    private Subpolyline geometry;
    private boolean geometry__is_initialized;
    private NativeObject nativeObject;
    private Weight weight;
    private boolean weight__is_initialized;

    private native Subpolyline getGeometry__Native();

    private native Weight getWeight__Native();

    private native NativeObject init(Weight weight, Subpolyline subpolyline);

    public Leg() {
        this.weight__is_initialized = false;
        this.geometry__is_initialized = false;
    }

    public Leg(Weight weight, Subpolyline subpolyline) {
        this.weight__is_initialized = false;
        this.geometry__is_initialized = false;
        if (weight == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"weight\" cannot be null");
            throw null;
        }
        if (subpolyline == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"geometry\" cannot be null");
            throw null;
        }
        this.nativeObject = init(weight, subpolyline);
        this.weight = weight;
        this.weight__is_initialized = true;
        this.geometry = subpolyline;
        this.geometry__is_initialized = true;
    }

    private Leg(NativeObject nativeObject) {
        this.weight__is_initialized = false;
        this.geometry__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Weight getWeight() {
        try {
            if (!this.weight__is_initialized) {
                this.weight = getWeight__Native();
                this.weight__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.weight;
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
            this.weight = (Weight) archive.add(this.weight, false, (Class<Weight>) Weight.class);
            this.weight__is_initialized = true;
            Subpolyline subpolyline = (Subpolyline) archive.add(this.geometry, false, (Class<Subpolyline>) Subpolyline.class);
            this.geometry = subpolyline;
            this.geometry__is_initialized = true;
            this.nativeObject = init(this.weight, subpolyline);
            return;
        }
        archive.add(getWeight(), false, (Class<Weight>) Weight.class);
        archive.add(getGeometry(), false, (Class<Subpolyline>) Subpolyline.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::bicycle::Leg";
    }
}
