package com.yandex.mapkit.search;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.Serializable;
import com.yandex.runtime.bindings.StringHandler;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class FeatureSet implements Serializable {
    private List<String> ids;
    private boolean ids__is_initialized;
    private NativeObject nativeObject;

    private native List<String> getIds__Native();

    private native NativeObject init(List<String> list);

    public FeatureSet() {
        this.ids__is_initialized = false;
    }

    public FeatureSet(List<String> list) {
        this.ids__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"ids\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list);
        this.ids = list;
        this.ids__is_initialized = true;
    }

    private FeatureSet(NativeObject nativeObject) {
        this.ids__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<String> getIds() {
        try {
            if (!this.ids__is_initialized) {
                this.ids = getIds__Native();
                this.ids__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.ids;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            List<String> listAdd = archive.add((List) this.ids, false, (ArchivingHandler) new StringHandler());
            this.ids = listAdd;
            this.ids__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getIds(), false, (ArchivingHandler) new StringHandler());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::FeatureSet";
    }
}
