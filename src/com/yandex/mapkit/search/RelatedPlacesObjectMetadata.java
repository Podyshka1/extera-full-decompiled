package com.yandex.mapkit.search;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class RelatedPlacesObjectMetadata implements BaseMetadata, Serializable {
    private NativeObject nativeObject;
    private List<PlaceInfo> similarPlaces;
    private boolean similarPlaces__is_initialized;

    private native List<PlaceInfo> getSimilarPlaces__Native();

    private native NativeObject init(List<PlaceInfo> list);

    public RelatedPlacesObjectMetadata() {
        this.similarPlaces__is_initialized = false;
    }

    public RelatedPlacesObjectMetadata(List<PlaceInfo> list) {
        this.similarPlaces__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"similarPlaces\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list);
        this.similarPlaces = list;
        this.similarPlaces__is_initialized = true;
    }

    private RelatedPlacesObjectMetadata(NativeObject nativeObject) {
        this.similarPlaces__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<PlaceInfo> getSimilarPlaces() {
        try {
            if (!this.similarPlaces__is_initialized) {
                this.similarPlaces = getSimilarPlaces__Native();
                this.similarPlaces__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.similarPlaces;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            List<PlaceInfo> listAdd = archive.add((List) this.similarPlaces, false, (ArchivingHandler) new ClassHandler(PlaceInfo.class));
            this.similarPlaces = listAdd;
            this.similarPlaces__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getSimilarPlaces(), false, (ArchivingHandler) new ClassHandler(PlaceInfo.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::RelatedPlacesObjectMetadata";
    }
}
