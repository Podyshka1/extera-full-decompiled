package com.yandex.mapkit.navigation.automotive.layer.internal;

import com.yandex.mapkit.directions.driving.DrivingRoute;
import com.yandex.mapkit.navigation.automotive.layer.Balloon;
import com.yandex.mapkit.navigation.automotive.layer.BalloonView;
import com.yandex.mapkit.navigation.balloons.BalloonAnchor;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class BalloonViewBinding implements BalloonView {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.navigation.automotive.layer.BalloonView
    public native BalloonAnchor getAnchor();

    @Override // com.yandex.mapkit.navigation.automotive.layer.BalloonView
    public native Balloon getBalloon();

    @Override // com.yandex.mapkit.navigation.automotive.layer.BalloonView
    public native DrivingRoute getHostRoute();

    @Override // com.yandex.mapkit.navigation.automotive.layer.BalloonView
    public native boolean isIsEnabled();

    @Override // com.yandex.mapkit.navigation.automotive.layer.BalloonView
    public native boolean isIsVisible();

    @Override // com.yandex.mapkit.navigation.automotive.layer.BalloonView
    public native boolean isValid();

    @Override // com.yandex.mapkit.navigation.automotive.layer.BalloonView
    public native void setIsEnabled(boolean z);

    public BalloonViewBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
