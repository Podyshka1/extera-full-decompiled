package com.yandex.mapkit.navigation.automotive;

/* JADX INFO: loaded from: classes5.dex */
public interface GuidanceListener {
    void onAlternativesChanged();

    void onCurrentRouteChanged(RouteChangeReason routeChangeReason);

    void onFastestAlternativeChanged();

    void onLocationChanged();

    void onReturnedToRoute();

    void onRoadNameChanged();

    void onRouteFinished();

    void onRouteLost();

    void onSpeedLimitStatusUpdated();

    void onSpeedLimitUpdated();

    void onStandingStatusChanged();

    void onWayPointReached();
}
