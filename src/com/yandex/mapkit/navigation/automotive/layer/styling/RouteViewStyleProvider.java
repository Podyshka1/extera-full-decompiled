package com.yandex.mapkit.navigation.automotive.layer.styling;

import com.yandex.mapkit.directions.driving.Flags;
import com.yandex.mapkit.navigation.automotive.layer.NavigationLayerMode;
import com.yandex.mapkit.styling.ArrowStyle;
import com.yandex.mapkit.styling.PolylineStyle;

/* JADX INFO: loaded from: classes5.dex */
public interface RouteViewStyleProvider {
    void provideJamStyle(Flags flags, boolean z, boolean z2, NavigationLayerMode navigationLayerMode, JamStyle jamStyle);

    void provideManoeuvreStyle(Flags flags, boolean z, boolean z2, NavigationLayerMode navigationLayerMode, ArrowStyle arrowStyle);

    void providePolylineStyle(Flags flags, boolean z, boolean z2, NavigationLayerMode navigationLayerMode, PolylineStyle polylineStyle);

    void provideRouteStyle(Flags flags, boolean z, boolean z2, NavigationLayerMode navigationLayerMode, RouteStyle routeStyle);
}
