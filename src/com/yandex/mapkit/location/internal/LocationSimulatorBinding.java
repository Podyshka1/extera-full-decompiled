package com.yandex.mapkit.location.internal;

import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.mapkit.location.LocationSimulator;
import com.yandex.mapkit.location.LocationSimulatorListener;
import com.yandex.mapkit.location.SimulationAccuracy;
import com.yandex.mapkit.location.SimulationSettings;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class LocationSimulatorBinding extends LocationManagerBinding implements LocationSimulator {
    protected Subscription<LocationSimulatorListener> locationSimulatorListenerSubscription;

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createLocationSimulatorListener(LocationSimulatorListener locationSimulatorListener);

    @Override // com.yandex.mapkit.location.LocationSimulator
    @Deprecated
    public native Polyline getGeometry();

    @Override // com.yandex.mapkit.location.LocationSimulator
    public native List<SimulationSettings> getSettings();

    @Override // com.yandex.mapkit.location.LocationSimulator
    @Deprecated
    public native double getSpeed();

    @Override // com.yandex.mapkit.location.LocationSimulator
    public native boolean isActive();

    @Override // com.yandex.mapkit.location.LocationSimulator
    public native PolylinePosition polylinePosition();

    @Override // com.yandex.mapkit.location.LocationSimulator
    @Deprecated
    public native void setGeometry(Polyline polyline);

    @Override // com.yandex.mapkit.location.LocationSimulator
    @Deprecated
    public native void setLocationSpeedProviding(boolean z);

    @Override // com.yandex.mapkit.location.LocationSimulator
    public native void setSettings(List<SimulationSettings> list);

    @Override // com.yandex.mapkit.location.LocationSimulator
    @Deprecated
    public native void setSpeed(double d);

    @Override // com.yandex.mapkit.location.LocationSimulator
    public native void startSimulation(SimulationAccuracy simulationAccuracy);

    @Override // com.yandex.mapkit.location.LocationSimulator
    public native void stopSimulation();

    @Override // com.yandex.mapkit.location.LocationSimulator
    public native void subscribeForSimulatorEvents(LocationSimulatorListener locationSimulatorListener);

    @Override // com.yandex.mapkit.location.LocationSimulator
    public native void unsubscribeFromSimulatorEvents(LocationSimulatorListener locationSimulatorListener);

    public LocationSimulatorBinding(NativeObject nativeObject) {
        super(nativeObject);
        this.locationSimulatorListenerSubscription = new Subscription<LocationSimulatorListener>() { // from class: com.yandex.mapkit.location.internal.LocationSimulatorBinding.1
            @Override // com.yandex.runtime.subscription.Subscription
            public NativeObject createNativeListener(LocationSimulatorListener locationSimulatorListener) {
                return LocationSimulatorBinding.createLocationSimulatorListener(locationSimulatorListener);
            }
        };
    }
}
