package com.yandex.mapkit.map;

import com.yandex.mapkit.geometry.Circle;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.geometry.Polygon;
import com.yandex.mapkit.geometry.Polyline;
import com.yandex.runtime.image.AnimatedImageProvider;
import com.yandex.runtime.image.ImageProvider;
import com.yandex.runtime.ui_view.ViewProvider;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface MapObjectCollection extends BaseMapObjectCollection {
    CircleMapObject addCircle(Circle circle);

    ClusterizedPlacemarkCollection addClusterizedPlacemarkCollection(ClusterListener clusterListener);

    MapObjectCollection addCollection();

    @Deprecated
    PlacemarkMapObject addEmptyPlacemark(Point point);

    @Deprecated
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

    @Deprecated
    List<PlacemarkMapObject> addPlacemarks(List<Point> list, ImageProvider imageProvider, IconStyle iconStyle);

    PolygonMapObject addPolygon(Polygon polygon);

    PolylineMapObject addPolyline();

    PolylineMapObject addPolyline(Polyline polyline);

    PlacemarksStyler placemarksStyler();
}
