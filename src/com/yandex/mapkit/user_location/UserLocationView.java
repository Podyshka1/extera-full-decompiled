package com.yandex.mapkit.user_location;

import com.yandex.mapkit.map.CircleMapObject;
import com.yandex.mapkit.map.PlacemarkMapObject;

/* JADX INFO: loaded from: classes5.dex */
public interface UserLocationView {
    CircleMapObject getAccuracyCircle();

    PlacemarkMapObject getArrow();

    PlacemarkMapObject getPin();

    boolean isValid();
}
