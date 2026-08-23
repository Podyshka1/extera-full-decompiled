package com.yandex.mapkit.directions.driving;

import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class LaneSign implements Serializable {
    private Boolean annotated;
    private boolean annotated__is_initialized;
    private List<Lane> lanes;
    private boolean lanes__is_initialized;
    private NativeObject nativeObject;
    private PolylinePosition position;
    private boolean position__is_initialized;

    private native Boolean getAnnotated__Native();

    private native List<Lane> getLanes__Native();

    private native PolylinePosition getPosition__Native();

    private native NativeObject init(PolylinePosition polylinePosition, Boolean bool, List<Lane> list);

    public LaneSign() {
        this.position__is_initialized = false;
        this.annotated__is_initialized = false;
        this.lanes__is_initialized = false;
    }

    public LaneSign(PolylinePosition polylinePosition, Boolean bool, List<Lane> list) {
        this.position__is_initialized = false;
        this.annotated__is_initialized = false;
        this.lanes__is_initialized = false;
        if (polylinePosition == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"position\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"lanes\" cannot be null");
            throw null;
        }
        this.nativeObject = init(polylinePosition, bool, list);
        this.position = polylinePosition;
        this.position__is_initialized = true;
        this.annotated = bool;
        this.annotated__is_initialized = true;
        this.lanes = list;
        this.lanes__is_initialized = true;
    }

    private LaneSign(NativeObject nativeObject) {
        this.position__is_initialized = false;
        this.annotated__is_initialized = false;
        this.lanes__is_initialized = false;
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

    public synchronized Boolean getAnnotated() {
        try {
            if (!this.annotated__is_initialized) {
                this.annotated = getAnnotated__Native();
                this.annotated__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.annotated;
    }

    public synchronized List<Lane> getLanes() {
        try {
            if (!this.lanes__is_initialized) {
                this.lanes = getLanes__Native();
                this.lanes__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.lanes;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.position = (PolylinePosition) archive.add(this.position, false, (Class<PolylinePosition>) PolylinePosition.class);
            this.position__is_initialized = true;
            this.annotated = archive.add(this.annotated, true);
            this.annotated__is_initialized = true;
            List<Lane> listAdd = archive.add((List) this.lanes, false, (ArchivingHandler) new ClassHandler(Lane.class));
            this.lanes = listAdd;
            this.lanes__is_initialized = true;
            this.nativeObject = init(this.position, this.annotated, listAdd);
            return;
        }
        archive.add(getPosition(), false, (Class<PolylinePosition>) PolylinePosition.class);
        archive.add(getAnnotated(), true);
        archive.add((List) getLanes(), false, (ArchivingHandler) new ClassHandler(Lane.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::directions::driving::LaneSign";
    }
}
