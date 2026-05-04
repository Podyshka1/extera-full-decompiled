package com.yandex.mapkit.uri;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class UriObjectMetadata implements BaseMetadata, Serializable {
    private NativeObject nativeObject;
    private List<Uri> uris;
    private boolean uris__is_initialized;

    private native List<Uri> getUris__Native();

    private native NativeObject init(List<Uri> list);

    public UriObjectMetadata() {
        this.uris__is_initialized = false;
    }

    public UriObjectMetadata(List<Uri> list) {
        this.uris__is_initialized = false;
        if (list == null) {
            throw new IllegalArgumentException("Required field \"uris\" cannot be null");
        }
        this.nativeObject = init(list);
        this.uris = list;
        this.uris__is_initialized = true;
    }

    private UriObjectMetadata(NativeObject nativeObject) {
        this.uris__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<Uri> getUris() {
        try {
            if (!this.uris__is_initialized) {
                this.uris = getUris__Native();
                this.uris__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.uris;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            List<Uri> listAdd = archive.add((List) this.uris, false, (ArchivingHandler) new ClassHandler(Uri.class));
            this.uris = listAdd;
            this.uris__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getUris(), false, (ArchivingHandler) new ClassHandler(Uri.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::uri::UriObjectMetadata";
    }
}
