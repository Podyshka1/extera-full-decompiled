package com.yandex.mapkit.map;

import com.yandex.mapkit.geometry.Point;

/* JADX INFO: loaded from: classes5.dex */
public interface MapObjectDragListener {
    void onMapObjectDrag(MapObject mapObject, Point point);

    void onMapObjectDragEnd(MapObject mapObject);

    void onMapObjectDragStart(MapObject mapObject);
}
