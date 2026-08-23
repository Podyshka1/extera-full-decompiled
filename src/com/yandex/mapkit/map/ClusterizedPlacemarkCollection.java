package com.yandex.mapkit.map;

import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.image.AnimatedImageProvider;
import com.yandex.runtime.image.ImageProvider;
import com.yandex.runtime.ui_view.ViewProvider;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ClusterizedPlacemarkCollection extends BaseMapObjectCollection {
    @Deprecated
    PlacemarkMapObject addEmptyPlacemark(Point point);

    List<PlacemarkMapObject> addEmptyPlacemarks(List<Point> list);

    PlacemarkMapObject addPlacemark();

    @Deprecated
    PlacemarkMapObject addPlacemark(Point point);

    @Deprecated
    PlacemarkMapObject addPlacemark(Point point, AnimatedImageProvider animatedImageProvider, IconStyle iconStyle);

    @Deprecated
    PlacemarkMapObject addPlacemark(Point point, ImageProvider imageProvider);

    @Deprecated
    PlacemarkMapObject addPlacemark(Point point, ImageProvider imageProvider, IconStyle iconStyle);

    @Deprecated
    PlacemarkMapObject addPlacemark(Point point, ViewProvider viewProvider);

    @Deprecated
    PlacemarkMapObject addPlacemark(Point point, ViewProvider viewProvider, IconStyle iconStyle);

    PlacemarkMapObject addPlacemark(PlacemarkCreatedCallback placemarkCreatedCallback);

    List<PlacemarkMapObject> addPlacemarks(List<Point> list, ImageProvider imageProvider, IconStyle iconStyle);

    void clusterPlacemarks(double d, int i);
}
