package com.yandex.mapkit.search;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class SuggestResponse implements Serializable {
    private List<SuggestItem> items;
    private boolean items__is_initialized;
    private NativeObject nativeObject;

    private native List<SuggestItem> getItems__Native();

    private native NativeObject init(List<SuggestItem> list);

    public SuggestResponse() {
        this.items__is_initialized = false;
    }

    public SuggestResponse(List<SuggestItem> list) {
        this.items__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"items\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list);
        this.items = list;
        this.items__is_initialized = true;
    }

    private SuggestResponse(NativeObject nativeObject) {
        this.items__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<SuggestItem> getItems() {
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
            List<SuggestItem> listAdd = archive.add((List) this.items, false, (ArchivingHandler) new ClassHandler(SuggestItem.class));
            this.items = listAdd;
            this.items__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getItems(), false, (ArchivingHandler) new ClassHandler(SuggestItem.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::SuggestResponse";
    }
}
