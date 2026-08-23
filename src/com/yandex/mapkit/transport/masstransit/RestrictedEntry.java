package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class RestrictedEntry implements Serializable {
    private NativeObject nativeObject;
    private int position;
    private boolean position__is_initialized;

    private native int getPosition__Native();

    private native NativeObject init(int i);

    public RestrictedEntry() {
        this.position__is_initialized = false;
    }

    public RestrictedEntry(int i) {
        this.position__is_initialized = false;
        this.nativeObject = init(i);
        this.position = i;
        this.position__is_initialized = true;
    }

    private RestrictedEntry(NativeObject nativeObject) {
        this.position__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized int getPosition() {
        try {
            if (!this.position__is_initialized) {
                this.position = getPosition__Native();
                this.position__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.position;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            int iAdd = archive.add(this.position);
            this.position = iAdd;
            this.position__is_initialized = true;
            this.nativeObject = init(iAdd);
            return;
        }
        archive.add(getPosition());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::RestrictedEntry";
    }
}
