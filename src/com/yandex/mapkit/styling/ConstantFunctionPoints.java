package com.yandex.mapkit.styling;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ConstantFunctionPoints implements Serializable {
    private NativeObject nativeObject;
    private float value;
    private boolean value__is_initialized;

    private native float getValue__Native();

    private native NativeObject init(float f);

    public ConstantFunctionPoints() {
        this.value__is_initialized = false;
    }

    public ConstantFunctionPoints(float f) {
        this.value__is_initialized = false;
        this.nativeObject = init(f);
        this.value = f;
        this.value__is_initialized = true;
    }

    private ConstantFunctionPoints(NativeObject nativeObject) {
        this.value__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized float getValue() {
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
            float fAdd = archive.add(this.value);
            this.value = fAdd;
            this.value__is_initialized = true;
            this.nativeObject = init(fAdd);
            return;
        }
        archive.add(getValue());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::styling::ConstantFunctionPoints";
    }
}
