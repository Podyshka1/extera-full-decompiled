package com.yandex.mapkit.navigation.automotive.layer.styling;

import com.yandex.mapkit.navigation.automotive.layer.NavigationLayerMode;
import com.yandex.mapkit.styling.PlacemarkStyle;

/* JADX INFO: loaded from: classes5.dex */
public interface RoutePinsStyleProvider {
    void provideCheckpointStyle(float f, boolean z, NavigationLayerMode navigationLayerMode, PlacemarkStyle placemarkStyle);

    void provideRailwayCrossingStyle(float f, boolean z, NavigationLayerMode navigationLayerMode, PlacemarkStyle placemarkStyle);

    void provideRestrictedEntryStyle(float f, boolean z, NavigationLayerMode navigationLayerMode, PlacemarkStyle placemarkStyle);

    void provideRoadInPoorConditionStyle(float f, boolean z, NavigationLayerMode navigationLayerMode, PlacemarkStyle placemarkStyle, PlacemarkStyle placemarkStyle2);

    void provideSpeedBumpStyle(float f, boolean z, NavigationLayerMode navigationLayerMode, PlacemarkStyle placemarkStyle);

    void provideTollRoadStyle(float f, boolean z, NavigationLayerMode navigationLayerMode, PlacemarkStyle placemarkStyle, PlacemarkStyle placemarkStyle2);

    void provideTrafficLightStyle(float f, boolean z, NavigationLayerMode navigationLayerMode, PlacemarkStyle placemarkStyle);
}
