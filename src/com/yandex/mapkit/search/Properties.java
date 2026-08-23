package com.yandex.mapkit.search;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Properties implements Serializable {
    private List<Item> items;
    private boolean items__is_initialized;
    private NativeObject nativeObject;

    private native List<Item> getItems__Native();

    private native NativeObject init(List<Item> list);

    public static class Item implements Serializable {
        private String key;
        private String value;

        public Item(String str, String str2) {
            if (str == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Required field \"key\" cannot be null");
                throw null;
            }
            if (str2 == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Required field \"value\" cannot be null");
                throw null;
            }
            this.key = str;
            this.value = str2;
        }

        public Item() {
        }

        public String getKey() {
            return this.key;
        }

        public String getValue() {
            return this.value;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.key = archive.add(this.key, false);
            this.value = archive.add(this.value, false);
        }
    }

    public Properties() {
        this.items__is_initialized = false;
    }

    public Properties(List<Item> list) {
        this.items__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"items\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list);
        this.items = list;
        this.items__is_initialized = true;
    }

    private Properties(NativeObject nativeObject) {
        this.items__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<Item> getItems() {
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
            List<Item> listAdd = archive.add((List) this.items, false, (ArchivingHandler) new ClassHandler(Item.class));
            this.items = listAdd;
            this.items__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getItems(), false, (ArchivingHandler) new ClassHandler(Item.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::Properties";
    }
}
