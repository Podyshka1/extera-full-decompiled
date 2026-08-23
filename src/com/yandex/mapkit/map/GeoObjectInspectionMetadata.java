package com.yandex.mapkit.map;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class GeoObjectInspectionMetadata implements BaseMetadata, Serializable {
    private String layerId;
    private boolean layerId__is_initialized;
    private NativeObject nativeObject;
    private ObjectType objectType;
    private boolean objectType__is_initialized;

    public enum ObjectType {
        POINT,
        POLYLINE,
        POLYGON,
        CIRCLE
    }

    private native String getLayerId__Native();

    private native ObjectType getObjectType__Native();

    private native NativeObject init(String str, ObjectType objectType);

    public GeoObjectInspectionMetadata() {
        this.layerId__is_initialized = false;
        this.objectType__is_initialized = false;
    }

    public GeoObjectInspectionMetadata(String str, ObjectType objectType) {
        this.layerId__is_initialized = false;
        this.objectType__is_initialized = false;
        if (str == null) {
            throw new IllegalArgumentException("Required field \"layerId\" cannot be null");
        }
        if (objectType == null) {
            throw new IllegalArgumentException("Required field \"objectType\" cannot be null");
        }
        this.nativeObject = init(str, objectType);
        this.layerId = str;
        this.layerId__is_initialized = true;
        this.objectType = objectType;
        this.objectType__is_initialized = true;
    }

    private GeoObjectInspectionMetadata(NativeObject nativeObject) {
        this.layerId__is_initialized = false;
        this.objectType__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized String getLayerId() {
        try {
            if (!this.layerId__is_initialized) {
                this.layerId = getLayerId__Native();
                this.layerId__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.layerId;
    }

    public synchronized ObjectType getObjectType() {
        try {
            if (!this.objectType__is_initialized) {
                this.objectType = getObjectType__Native();
                this.objectType__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.objectType;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.layerId = archive.add(this.layerId, false);
            this.layerId__is_initialized = true;
            ObjectType objectType = (ObjectType) archive.add(this.objectType, false, (Class<ObjectType>) ObjectType.class);
            this.objectType = objectType;
            this.objectType__is_initialized = true;
            this.nativeObject = init(this.layerId, objectType);
            return;
        }
        archive.add(getLayerId(), false);
        archive.add(getObjectType(), false, (Class<ObjectType>) ObjectType.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::map::GeoObjectInspectionMetadata";
    }
}
