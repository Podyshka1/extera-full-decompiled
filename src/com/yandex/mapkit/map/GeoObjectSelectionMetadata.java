package com.yandex.mapkit.map;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class GeoObjectSelectionMetadata implements BaseMetadata, Serializable {
    private String dataSourceName;
    private boolean dataSourceName__is_initialized;
    private Long groupId;
    private boolean groupId__is_initialized;
    private String layerId;
    private boolean layerId__is_initialized;
    private NativeObject nativeObject;
    private String objectId;
    private boolean objectId__is_initialized;

    private native String getDataSourceName__Native();

    private native Long getGroupId__Native();

    private native String getLayerId__Native();

    private native String getObjectId__Native();

    private native NativeObject init(String str, String str2, String str3, Long l);

    public GeoObjectSelectionMetadata() {
        this.objectId__is_initialized = false;
        this.dataSourceName__is_initialized = false;
        this.layerId__is_initialized = false;
        this.groupId__is_initialized = false;
    }

    public GeoObjectSelectionMetadata(String str, String str2, String str3, Long l) {
        this.objectId__is_initialized = false;
        this.dataSourceName__is_initialized = false;
        this.layerId__is_initialized = false;
        this.groupId__is_initialized = false;
        if (str == null) {
            throw new IllegalArgumentException("Required field \"objectId\" cannot be null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("Required field \"dataSourceName\" cannot be null");
        }
        if (str3 == null) {
            throw new IllegalArgumentException("Required field \"layerId\" cannot be null");
        }
        this.nativeObject = init(str, str2, str3, l);
        this.objectId = str;
        this.objectId__is_initialized = true;
        this.dataSourceName = str2;
        this.dataSourceName__is_initialized = true;
        this.layerId = str3;
        this.layerId__is_initialized = true;
        this.groupId = l;
        this.groupId__is_initialized = true;
    }

    private GeoObjectSelectionMetadata(NativeObject nativeObject) {
        this.objectId__is_initialized = false;
        this.dataSourceName__is_initialized = false;
        this.layerId__is_initialized = false;
        this.groupId__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized String getObjectId() {
        try {
            if (!this.objectId__is_initialized) {
                this.objectId = getObjectId__Native();
                this.objectId__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.objectId;
    }

    public synchronized String getDataSourceName() {
        try {
            if (!this.dataSourceName__is_initialized) {
                this.dataSourceName = getDataSourceName__Native();
                this.dataSourceName__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.dataSourceName;
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

    public synchronized Long getGroupId() {
        try {
            if (!this.groupId__is_initialized) {
                this.groupId = getGroupId__Native();
                this.groupId__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.groupId;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.objectId = archive.add(this.objectId, false);
            this.objectId__is_initialized = true;
            this.dataSourceName = archive.add(this.dataSourceName, false);
            this.dataSourceName__is_initialized = true;
            this.layerId = archive.add(this.layerId, false);
            this.layerId__is_initialized = true;
            Long lAdd = archive.add(this.groupId, true);
            this.groupId = lAdd;
            this.groupId__is_initialized = true;
            this.nativeObject = init(this.objectId, this.dataSourceName, this.layerId, lAdd);
            return;
        }
        archive.add(getObjectId(), false);
        archive.add(getDataSourceName(), false);
        archive.add(getLayerId(), false);
        archive.add(getGroupId(), true);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::map::GeoObjectSelectionMetadata";
    }
}
