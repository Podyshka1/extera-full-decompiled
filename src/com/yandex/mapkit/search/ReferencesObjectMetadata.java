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
public class ReferencesObjectMetadata implements BaseMetadata, Serializable {
    private NativeObject nativeObject;
    private List<ReferenceType> references;
    private boolean references__is_initialized;

    private native List<ReferenceType> getReferences__Native();

    private native NativeObject init(List<ReferenceType> list);

    public ReferencesObjectMetadata() {
        this.references__is_initialized = false;
    }

    public ReferencesObjectMetadata(List<ReferenceType> list) {
        this.references__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"references\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list);
        this.references = list;
        this.references__is_initialized = true;
    }

    private ReferencesObjectMetadata(NativeObject nativeObject) {
        this.references__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<ReferenceType> getReferences() {
        try {
            if (!this.references__is_initialized) {
                this.references = getReferences__Native();
                this.references__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.references;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            List<ReferenceType> listAdd = archive.add((List) this.references, false, (ArchivingHandler) new ClassHandler(ReferenceType.class));
            this.references = listAdd;
            this.references__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getReferences(), false, (ArchivingHandler) new ClassHandler(ReferenceType.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::ReferencesObjectMetadata";
    }
}
