package com.yandex.mapkit.user_location.internal;

import com.yandex.mapkit.map.CircleMapObject;
import com.yandex.mapkit.map.PlacemarkMapObject;
import com.yandex.mapkit.user_location.UserLocationView;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class UserLocationViewBinding implements UserLocationView {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.user_location.UserLocationView
    public native CircleMapObject getAccuracyCircle();

    @Override // com.yandex.mapkit.user_location.UserLocationView
    public native PlacemarkMapObject getArrow();

    @Override // com.yandex.mapkit.user_location.UserLocationView
    public native PlacemarkMapObject getPin();

    @Override // com.yandex.mapkit.user_location.UserLocationView
    public native boolean isValid();

    public UserLocationViewBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
