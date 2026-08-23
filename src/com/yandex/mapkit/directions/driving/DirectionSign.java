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
public class DirectionSign implements Serializable {
    private DirectionSignDirection direction;
    private boolean direction__is_initialized;
    private List<DirectionSignItem> items;
    private boolean items__is_initialized;
    private NativeObject nativeObject;
    private PolylinePosition position;
    private boolean position__is_initialized;

    private native DirectionSignDirection getDirection__Native();

    private native List<DirectionSignItem> getItems__Native();

    private native PolylinePosition getPosition__Native();

    private native NativeObject init(PolylinePosition polylinePosition, DirectionSignDirection directionSignDirection, List<DirectionSignItem> list);

    public DirectionSign() {
        this.position__is_initialized = false;
        this.direction__is_initialized = false;
        this.items__is_initialized = false;
    }

    public DirectionSign(PolylinePosition polylinePosition, DirectionSignDirection directionSignDirection, List<DirectionSignItem> list) {
        this.position__is_initialized = false;
        this.direction__is_initialized = false;
        this.items__is_initialized = false;
        if (polylinePosition == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"position\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"items\" cannot be null");
            throw null;
        }
        this.nativeObject = init(polylinePosition, directionSignDirection, list);
        this.position = polylinePosition;
        this.position__is_initialized = true;
        this.direction = directionSignDirection;
        this.direction__is_initialized = true;
        this.items = list;
        this.items__is_initialized = true;
    }

    private DirectionSign(NativeObject nativeObject) {
        this.position__is_initialized = false;
        this.direction__is_initialized = false;
        this.items__is_initialized = false;
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

    public synchronized DirectionSignDirection getDirection() {
        try {
            if (!this.direction__is_initialized) {
                this.direction = getDirection__Native();
                this.direction__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.direction;
    }

    public synchronized List<DirectionSignItem> getItems() {
        try {
            if (!this.items__is_initialized) {
                this.items = getItems__Native();
                this.items__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.items;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.position = (PolylinePosition) archive.add(this.position, false, (Class<PolylinePosition>) PolylinePosition.class);
            this.position__is_initialized = true;
            this.direction = (DirectionSignDirection) archive.add(this.direction, true, (Class<DirectionSignDirection>) DirectionSignDirection.class);
            this.direction__is_initialized = true;
            List<DirectionSignItem> listAdd = archive.add((List) this.items, false, (ArchivingHandler) new ClassHandler(DirectionSignItem.class));
            this.items = listAdd;
            this.items__is_initialized = true;
            this.nativeObject = init(this.position, this.direction, listAdd);
            return;
        }
        archive.add(getPosition(), false, (Class<PolylinePosition>) PolylinePosition.class);
        archive.add(getDirection(), true, (Class<DirectionSignDirection>) DirectionSignDirection.class);
        archive.add((List) getItems(), false, (ArchivingHandler) new ClassHandler(DirectionSignItem.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::directions::driving::DirectionSign";
    }
}
