package com.yandex.mapkit.location;

import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.geometry.PolylinePosition;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface LocationSimulator extends LocationManager {
    @Deprecated
    Polyline getGeometry();

    List<SimulationSettings> getSettings();

    @Deprecated
    double getSpeed();

    boolean isActive();

    PolylinePosition polylinePosition();

    @Deprecated
    void setGeometry(Polyline polyline);

    @Deprecated
    void setLocationSpeedProviding(boolean z);

    void setSettings(List<SimulationSettings> list);

    @Deprecated
    void setSpeed(double d);

    void startSimulation(SimulationAccuracy simulationAccuracy);

    void stopSimulation();

    void subscribeForSimulatorEvents(LocationSimulatorListener locationSimulatorListener);

    void unsubscribeFromSimulatorEvents(LocationSimulatorListener locationSimulatorListener);
}
