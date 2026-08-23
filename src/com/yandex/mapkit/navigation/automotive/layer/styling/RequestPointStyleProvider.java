package com.yandex.mapkit.navigation.automotive.layer.styling;

import com.yandex.mapkit.RequestPointType;
import com.yandex.mapkit.navigation.automotive.layer.NavigationLayerMode;
import com.yandex.mapkit.styling.PlacemarkStyle;

/* JADX INFO: loaded from: classes5.dex */
public interface RequestPointStyleProvider {
    void provideStyle(int i, int i2, RequestPointType requestPointType, float f, boolean z, boolean z2, NavigationLayerMode navigationLayerMode, PlacemarkStyle placemarkStyle);
}
