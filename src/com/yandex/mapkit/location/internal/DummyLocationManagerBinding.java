package com.yandex.mapkit.location.internal;

import com.yandex.mapkit.location.DummyLocationManager;
import com.yandex.mapkit.location.Location;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class DummyLocationManagerBinding extends LocationManagerBinding implements DummyLocationManager {
    @Override // com.yandex.mapkit.location.DummyLocationManager
    public native void setLocation(Location location);

    public DummyLocationManagerBinding(NativeObject nativeObject) {
        super(nativeObject);
    }
}
