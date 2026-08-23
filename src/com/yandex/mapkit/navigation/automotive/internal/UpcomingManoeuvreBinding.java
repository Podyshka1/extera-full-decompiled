package com.yandex.mapkit.navigation.automotive.internal;

import com.yandex.mapkit.directions.driving.Annotation;
import com.yandex.mapkit.navigation.RoutePosition;
import com.yandex.mapkit.navigation.automotive.UpcomingManoeuvre;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class UpcomingManoeuvreBinding implements UpcomingManoeuvre {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.navigation.automotive.UpcomingManoeuvre
    public native Annotation getAnnotation();

    @Override // com.yandex.mapkit.navigation.automotive.UpcomingManoeuvre
    public native RoutePosition getPosition();

    public UpcomingManoeuvreBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
