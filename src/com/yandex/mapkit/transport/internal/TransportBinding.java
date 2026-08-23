package com.yandex.mapkit.transport.internal;

import com.yandex.mapkit.transport.Transport;
import com.yandex.mapkit.transport.bicycle.BicycleRouter;
import com.yandex.mapkit.transport.masstransit.BicycleRouterV2;
import com.yandex.mapkit.transport.masstransit.MasstransitRouter;
import com.yandex.mapkit.transport.masstransit.PedestrianRouter;
import com.yandex.mapkit.transport.time.AdjustedClock;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class TransportBinding implements Transport {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.transport.Transport
    @Deprecated
    public native BicycleRouter createBicycleRouter();

    @Override // com.yandex.mapkit.transport.Transport
    public native BicycleRouterV2 createBicycleRouterV2();

    @Override // com.yandex.mapkit.transport.Transport
    public native BicycleRouterV2 createElectricBikeRouter();

    @Override // com.yandex.mapkit.transport.Transport
    public native MasstransitRouter createMasstransitRouter();

    @Override // com.yandex.mapkit.transport.Transport
    public native PedestrianRouter createPedestrianRouter();

    @Override // com.yandex.mapkit.transport.Transport
    public native BicycleRouterV2 createScooterRouter();

    @Override // com.yandex.mapkit.transport.Transport
    public native AdjustedClock getAdjustedClock();

    @Override // com.yandex.mapkit.transport.Transport
    public native boolean isValid();

    public TransportBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
