package com.yandex.mapkit.navigation.automotive.internal;

import com.yandex.mapkit.directions.driving.LaneSign;
import com.yandex.mapkit.navigation.RoutePosition;
import com.yandex.mapkit.navigation.automotive.UpcomingLaneSign;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class UpcomingLaneSignBinding implements UpcomingLaneSign {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.navigation.automotive.UpcomingLaneSign
    public native LaneSign getLaneSign();

    @Override // com.yandex.mapkit.navigation.automotive.UpcomingLaneSign
    public native RoutePosition getPosition();

    public UpcomingLaneSignBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
