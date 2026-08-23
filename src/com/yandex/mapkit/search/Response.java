package com.yandex.mapkit.search;

import com.yandex.mapkit.GeoObjectCollection;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Response implements Serializable {
    private GeoObjectCollection collection;
    private boolean collection__is_initialized;
    private boolean isOffline;
    private boolean isOffline__is_initialized;
    private SearchMetadata metadata;
    private boolean metadata__is_initialized;
    private NativeObject nativeObject;

    private native GeoObjectCollection getCollection__Native();

    private native boolean getIsOffline__Native();

    private native SearchMetadata getMetadata__Native();

    private native NativeObject init(SearchMetadata searchMetadata, GeoObjectCollection geoObjectCollection, boolean z);

    public Response() {
        this.metadata__is_initialized = false;
        this.collection__is_initialized = false;
        this.isOffline__is_initialized = false;
    }

    public Response(SearchMetadata searchMetadata, GeoObjectCollection geoObjectCollection, boolean z) {
        this.metadata__is_initialized = false;
        this.collection__is_initialized = false;
        this.isOffline__is_initialized = false;
        if (searchMetadata == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"metadata\" cannot be null");
            throw null;
        }
        if (geoObjectCollection == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"collection\" cannot be null");
            throw null;
        }
        this.nativeObject = init(searchMetadata, geoObjectCollection, z);
        this.metadata = searchMetadata;
        this.metadata__is_initialized = true;
        this.collection = geoObjectCollection;
        this.collection__is_initialized = true;
        this.isOffline = z;
        this.isOffline__is_initialized = true;
    }

    private Response(NativeObject nativeObject) {
        this.metadata__is_initialized = false;
        this.collection__is_initialized = false;
        this.isOffline__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized SearchMetadata getMetadata() {
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

    public synchronized GeoObjectCollection getCollection() {
        try {
            if (!this.collection__is_initialized) {
                this.collection = getCollection__Native();
                this.collection__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.collection;
    }

    public synchronized boolean getIsOffline() {
        try {
            if (!this.isOffline__is_initialized) {
                this.isOffline = getIsOffline__Native();
                this.isOffline__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.isOffline;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.metadata = (SearchMetadata) archive.add(this.metadata, false, (Class<SearchMetadata>) SearchMetadata.class);
            this.metadata__is_initialized = true;
            this.collection = (GeoObjectCollection) archive.add(this.collection, false, (Class<GeoObjectCollection>) GeoObjectCollection.class);
            this.collection__is_initialized = true;
            boolean zAdd = archive.add(this.isOffline);
            this.isOffline = zAdd;
            this.isOffline__is_initialized = true;
            this.nativeObject = init(this.metadata, this.collection, zAdd);
            return;
        }
        archive.add(getMetadata(), false, (Class<SearchMetadata>) SearchMetadata.class);
        archive.add(getCollection(), false, (Class<GeoObjectCollection>) GeoObjectCollection.class);
        archive.add(getIsOffline());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::Response";
    }
}
