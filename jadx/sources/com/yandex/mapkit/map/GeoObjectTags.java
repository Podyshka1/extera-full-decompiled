package com.yandex.mapkit.map;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.Serializable;
import com.yandex.runtime.bindings.StringHandler;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class GeoObjectTags implements BaseMetadata, Serializable {
    private NativeObject nativeObject;
    private List<String> tags;
    private boolean tags__is_initialized;

    private native List<String> getTags__Native();

    private native NativeObject init(List<String> list);

    public GeoObjectTags() {
        this.tags__is_initialized = false;
    }

    public GeoObjectTags(List<String> list) {
        this.tags__is_initialized = false;
        if (list == null) {
            throw new IllegalArgumentException("Required field \"tags\" cannot be null");
        }
        this.nativeObject = init(list);
        this.tags = list;
        this.tags__is_initialized = true;
    }

    private GeoObjectTags(NativeObject nativeObject) {
        this.tags__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<String> getTags() {
        try {
            if (!this.tags__is_initialized) {
                this.tags = getTags__Native();
                this.tags__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.tags;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            List<String> listAdd = archive.add((List) this.tags, false, (ArchivingHandler) new StringHandler());
            this.tags = listAdd;
            this.tags__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getTags(), false, (ArchivingHandler) new StringHandler());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::map::GeoObjectTags";
    }
}
