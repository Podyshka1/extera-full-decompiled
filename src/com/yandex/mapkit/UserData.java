package com.yandex.mapkit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import com.yandex.runtime.bindings.StringHandler;
import java.util.Map;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class UserData implements BaseMetadata, Serializable {
    private Map<String, String> data;
    private boolean data__is_initialized;
    private NativeObject nativeObject;

    private native Map<String, String> getData__Native();

    private native NativeObject init(Map<String, String> map);

    public UserData() {
        this.data__is_initialized = false;
    }

    public UserData(Map<String, String> map) {
        this.data__is_initialized = false;
        if (map == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"data\" cannot be null");
            throw null;
        }
        this.nativeObject = init(map);
        this.data = map;
        this.data__is_initialized = true;
    }

    private UserData(NativeObject nativeObject) {
        this.data__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Map<String, String> getData() {
        try {
            if (!this.data__is_initialized) {
                this.data = getData__Native();
                this.data__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.data;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            Map<String, String> mapAdd = archive.add(this.data, false, new StringHandler(), new StringHandler());
            this.data = mapAdd;
            this.data__is_initialized = true;
            this.nativeObject = init(mapAdd);
            return;
        }
        archive.add(getData(), false, new StringHandler(), new StringHandler());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::UserData";
    }
}
