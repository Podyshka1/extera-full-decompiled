package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Annotation implements Serializable {
    private ActionID action;
    private boolean action__is_initialized;
    private LandmarkID landmark;
    private boolean landmark__is_initialized;
    private NativeObject nativeObject;
    private PolylinePosition position;
    private boolean position__is_initialized;
    private Toponym toponym;
    private boolean toponym__is_initialized;

    private native ActionID getAction__Native();

    private native LandmarkID getLandmark__Native();

    private native PolylinePosition getPosition__Native();

    private native Toponym getToponym__Native();

    private native NativeObject init(PolylinePosition polylinePosition, ActionID actionID, LandmarkID landmarkID, Toponym toponym);

    public Annotation() {
        this.position__is_initialized = false;
        this.action__is_initialized = false;
        this.landmark__is_initialized = false;
        this.toponym__is_initialized = false;
    }

    public Annotation(PolylinePosition polylinePosition, ActionID actionID, LandmarkID landmarkID, Toponym toponym) {
        this.position__is_initialized = false;
        this.action__is_initialized = false;
        this.landmark__is_initialized = false;
        this.toponym__is_initialized = false;
        if (polylinePosition == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"position\" cannot be null");
            throw null;
        }
        this.nativeObject = init(polylinePosition, actionID, landmarkID, toponym);
        this.position = polylinePosition;
        this.position__is_initialized = true;
        this.action = actionID;
        this.action__is_initialized = true;
        this.landmark = landmarkID;
        this.landmark__is_initialized = true;
        this.toponym = toponym;
        this.toponym__is_initialized = true;
    }

    private Annotation(NativeObject nativeObject) {
        this.position__is_initialized = false;
        this.action__is_initialized = false;
        this.landmark__is_initialized = false;
        this.toponym__is_initialized = false;
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

    public synchronized ActionID getAction() {
        try {
            if (!this.action__is_initialized) {
                this.action = getAction__Native();
                this.action__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.action;
    }

    public synchronized LandmarkID getLandmark() {
        try {
            if (!this.landmark__is_initialized) {
                this.landmark = getLandmark__Native();
                this.landmark__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.landmark;
    }

    public synchronized Toponym getToponym() {
        try {
            if (!this.toponym__is_initialized) {
                this.toponym = getToponym__Native();
                this.toponym__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.toponym;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.position = (PolylinePosition) archive.add(this.position, false, (Class<PolylinePosition>) PolylinePosition.class);
            this.position__is_initialized = true;
            this.action = (ActionID) archive.add(this.action, true, (Class<ActionID>) ActionID.class);
            this.action__is_initialized = true;
            this.landmark = (LandmarkID) archive.add(this.landmark, true, (Class<LandmarkID>) LandmarkID.class);
            this.landmark__is_initialized = true;
            Toponym toponym = (Toponym) archive.add(this.toponym, true, (Class<Toponym>) Toponym.class);
            this.toponym = toponym;
            this.toponym__is_initialized = true;
            this.nativeObject = init(this.position, this.action, this.landmark, toponym);
            return;
        }
        archive.add(getPosition(), false, (Class<PolylinePosition>) PolylinePosition.class);
        archive.add(getAction(), true, (Class<ActionID>) ActionID.class);
        archive.add(getLandmark(), true, (Class<LandmarkID>) LandmarkID.class);
        archive.add(getToponym(), true, (Class<Toponym>) Toponym.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::Annotation";
    }
}
