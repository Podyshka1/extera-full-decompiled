package com.yandex.mapkit.navigation.automotive.internal;

import com.yandex.mapkit.LocalizedValue;
import com.yandex.mapkit.directions.driving.DrivingRoute;
import com.yandex.mapkit.location.Location;
import com.yandex.mapkit.navigation.automotive.Alternative;
import com.yandex.mapkit.navigation.automotive.Annotator;
import com.yandex.mapkit.navigation.automotive.Guidance;
import com.yandex.mapkit.navigation.automotive.GuidanceListener;
import com.yandex.mapkit.navigation.automotive.LocationClass;
import com.yandex.mapkit.navigation.automotive.RouteStatus;
import com.yandex.mapkit.navigation.automotive.SpeedLimitStatus;
import com.yandex.mapkit.navigation.automotive.SpeedLimitsPolicy;
import com.yandex.mapkit.navigation.automotive.Windshield;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class GuidanceBinding implements Guidance {
    protected Subscription<GuidanceListener> guidanceListenerSubscription = new Subscription<GuidanceListener>() { // from class: com.yandex.mapkit.navigation.automotive.internal.GuidanceBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(GuidanceListener guidanceListener) {
            return GuidanceBinding.createGuidanceListener(guidanceListener);
        }
    };
    private final NativeObject nativeObject;

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createGuidanceListener(GuidanceListener guidanceListener);

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native void addListener(GuidanceListener guidanceListener);

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native List<Alternative> getAlternatives();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native Annotator getAnnotator();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native DrivingRoute getCurrentRoute();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native Alternative getFastestAlternative();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native Location getLocation();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native LocationClass getLocationClass();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native String getRoadName();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native RouteStatus getRouteStatus();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native LocalizedValue getSpeedLimit();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native SpeedLimitStatus getSpeedLimitStatus();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native double getSpeedLimitTolerance();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native SpeedLimitsPolicy getSpeedLimitsPolicy();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native Windshield getWindshield();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native boolean isEnableAlternatives();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native boolean isEnableReroutes();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native boolean isValid();

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native void removeListener(GuidanceListener guidanceListener);

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native void setEnableAlternatives(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native void setEnableReroutes(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native void setSpeedLimitTolerance(double d);

    @Override // com.yandex.mapkit.navigation.automotive.Guidance
    public native void switchToRoute(DrivingRoute drivingRoute);

    public GuidanceBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
