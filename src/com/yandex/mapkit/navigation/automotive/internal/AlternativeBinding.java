package com.yandex.mapkit.navigation.automotive.internal;

import com.yandex.mapkit.directions.driving.DrivingRoute;
import com.yandex.mapkit.navigation.RoutePosition;
import com.yandex.mapkit.navigation.automotive.Alternative;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class AlternativeBinding implements Alternative {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.navigation.automotive.Alternative
    public native DrivingRoute getAlternative();

    @Override // com.yandex.mapkit.navigation.automotive.Alternative
    public native RoutePosition getForkPositionOnAlternative();

    @Override // com.yandex.mapkit.navigation.automotive.Alternative
    public native RoutePosition getForkPositionOnCurrentRoute();

    public AlternativeBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
