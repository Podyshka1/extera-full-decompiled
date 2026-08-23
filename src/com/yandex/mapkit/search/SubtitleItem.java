package com.yandex.mapkit.search;

import com.yandex.runtime.KeyValuePair;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class SubtitleItem implements Serializable {
    private NativeObject nativeObject;
    private List<KeyValuePair> properties;
    private boolean properties__is_initialized;
    private String text;
    private boolean text__is_initialized;
    private String type;
    private boolean type__is_initialized;

    private native List<KeyValuePair> getProperties__Native();

    private native String getText__Native();

    private native String getType__Native();

    private native NativeObject init(String str, String str2, List<KeyValuePair> list);

    public SubtitleItem() {
        this.type__is_initialized = false;
        this.text__is_initialized = false;
        this.properties__is_initialized = false;
    }

    public SubtitleItem(String str, String str2, List<KeyValuePair> list) {
        this.type__is_initialized = false;
        this.text__is_initialized = false;
        this.properties__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"type\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"properties\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, str2, list);
        this.type = str;
        this.type__is_initialized = true;
        this.text = str2;
        this.text__is_initialized = true;
        this.properties = list;
        this.properties__is_initialized = true;
    }

    private SubtitleItem(NativeObject nativeObject) {
        this.type__is_initialized = false;
        this.text__is_initialized = false;
        this.properties__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized String getType() {
        try {
            if (!this.type__is_initialized) {
                this.type = getType__Native();
                this.type__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.type;
    }

    public synchronized String getText() {
        try {
            if (!this.text__is_initialized) {
                this.text = getText__Native();
                this.text__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.text;
    }

    public synchronized List<KeyValuePair> getProperties() {
        try {
            if (!this.properties__is_initialized) {
                this.properties = getProperties__Native();
                this.properties__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.properties;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.type = archive.add(this.type, false);
            this.type__is_initialized = true;
            this.text = archive.add(this.text, true);
            this.text__is_initialized = true;
            List<KeyValuePair> listAdd = archive.add((List) this.properties, false, (ArchivingHandler) new ClassHandler(KeyValuePair.class));
            this.properties = listAdd;
            this.properties__is_initialized = true;
            this.nativeObject = init(this.type, this.text, listAdd);
            return;
        }
        archive.add(getType(), false);
        archive.add(getText(), true);
        archive.add((List) getProperties(), false, (ArchivingHandler) new ClassHandler(KeyValuePair.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::SubtitleItem";
    }
}
