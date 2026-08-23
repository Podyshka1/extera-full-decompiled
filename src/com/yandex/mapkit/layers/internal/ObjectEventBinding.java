package com.yandex.mapkit.layers.internal;

import com.yandex.mapkit.layers.ObjectEvent;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class ObjectEventBinding implements ObjectEvent {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.layers.ObjectEvent
    public native boolean isValid();

    public ObjectEventBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
