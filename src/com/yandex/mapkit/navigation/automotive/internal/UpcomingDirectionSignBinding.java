package com.yandex.mapkit.navigation.automotive.internal;

import com.yandex.mapkit.directions.driving.DirectionSign;
import com.yandex.mapkit.navigation.RoutePosition;
import com.yandex.mapkit.navigation.automotive.UpcomingDirectionSign;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class UpcomingDirectionSignBinding implements UpcomingDirectionSign {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.navigation.automotive.UpcomingDirectionSign
    public native DirectionSign getDirectionSign();

    @Override // com.yandex.mapkit.navigation.automotive.UpcomingDirectionSign
    public native RoutePosition getPosition();

    public UpcomingDirectionSignBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
