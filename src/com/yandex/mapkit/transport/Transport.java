package com.yandex.mapkit.transport;

import com.yandex.mapkit.transport.bicycle.BicycleRouter;
import com.yandex.mapkit.transport.masstransit.BicycleRouterV2;
import com.yandex.mapkit.transport.masstransit.MasstransitRouter;
import com.yandex.mapkit.transport.masstransit.PedestrianRouter;
import com.yandex.mapkit.transport.time.AdjustedClock;

/* JADX INFO: loaded from: classes5.dex */
public interface Transport {
    @Deprecated
    BicycleRouter createBicycleRouter();

    BicycleRouterV2 createBicycleRouterV2();

    BicycleRouterV2 createElectricBikeRouter();

    MasstransitRouter createMasstransitRouter();

    PedestrianRouter createPedestrianRouter();

    BicycleRouterV2 createScooterRouter();

    AdjustedClock getAdjustedClock();

    boolean isValid();
}
