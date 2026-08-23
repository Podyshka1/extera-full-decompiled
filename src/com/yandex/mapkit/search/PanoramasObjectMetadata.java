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
public class PanoramasObjectMetadata implements BaseMetadata, Serializable {
    private NativeObject nativeObject;
    private List<Panorama> panoramas;
    private boolean panoramas__is_initialized;

    private native List<Panorama> getPanoramas__Native();

    private native NativeObject init(List<Panorama> list);

    public PanoramasObjectMetadata() {
        this.panoramas__is_initialized = false;
    }

    public PanoramasObjectMetadata(List<Panorama> list) {
        this.panoramas__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"panoramas\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list);
        this.panoramas = list;
        this.panoramas__is_initialized = true;
    }

    private PanoramasObjectMetadata(NativeObject nativeObject) {
        this.panoramas__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<Panorama> getPanoramas() {
        try {
            if (!this.panoramas__is_initialized) {
                this.panoramas = getPanoramas__Native();
                this.panoramas__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.panoramas;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            List<Panorama> listAdd = archive.add((List) this.panoramas, false, (ArchivingHandler) new ClassHandler(Panorama.class));
            this.panoramas = listAdd;
            this.panoramas__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getPanoramas(), false, (ArchivingHandler) new ClassHandler(Panorama.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::PanoramasObjectMetadata";
    }
}
