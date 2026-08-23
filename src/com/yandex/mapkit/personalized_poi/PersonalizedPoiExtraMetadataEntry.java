package com.yandex.mapkit.personalized_poi;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class PersonalizedPoiExtraMetadataEntry implements BaseMetadata, Serializable {
    private String key;
    private boolean key__is_initialized;
    private NativeObject nativeObject;
    private String value;
    private boolean value__is_initialized;

    private native String getKey__Native();

    private native String getValue__Native();

    private native NativeObject init(String str, String str2);

    public PersonalizedPoiExtraMetadataEntry() {
        this.key__is_initialized = false;
        this.value__is_initialized = false;
    }

    public PersonalizedPoiExtraMetadataEntry(String str, String str2) {
        this.key__is_initialized = false;
        this.value__is_initialized = false;
        this.nativeObject = init(str, str2);
        this.key = str;
        this.key__is_initialized = true;
        this.value = str2;
        this.value__is_initialized = true;
    }

    private PersonalizedPoiExtraMetadataEntry(NativeObject nativeObject) {
        this.key__is_initialized = false;
        this.value__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized String getKey() {
        try {
            if (!this.key__is_initialized) {
                this.key = getKey__Native();
                this.key__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.key;
    }

    public synchronized String getValue() {
        try {
            if (!this.value__is_initialized) {
                this.value = getValue__Native();
                this.value__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.value;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.key = archive.add(this.key, true);
            this.key__is_initialized = true;
            String strAdd = archive.add(this.value, true);
            this.value = strAdd;
            this.value__is_initialized = true;
            this.nativeObject = init(this.key, strAdd);
            return;
        }
        archive.add(getKey(), true);
        archive.add(getValue(), true);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::personalized_poi::PersonalizedPoiExtraMetadataEntry";
    }
}
