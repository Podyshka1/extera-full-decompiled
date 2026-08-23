package com.yandex.mapkit.navigation.automotive.layer;

import com.yandex.mapkit.map.MapWindow;
import com.yandex.mapkit.navigation.automotive.Navigation;
import com.yandex.mapkit.navigation.automotive.layer.styling.NavigationStyleProvider;
import com.yandex.mapkit.road_events_layer.StyleProvider;

/* JADX INFO: loaded from: classes5.dex */
public class NavigationLayerFactory {
    public static native NavigationLayer createNavigationLayer(MapWindow mapWindow, StyleProvider styleProvider, NavigationStyleProvider navigationStyleProvider, Navigation navigation);
}
