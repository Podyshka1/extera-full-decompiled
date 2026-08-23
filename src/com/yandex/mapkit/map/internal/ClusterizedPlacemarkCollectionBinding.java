package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.map.ClusterizedPlacemarkCollection;
import com.yandex.mapkit.map.IconStyle;
import com.yandex.mapkit.map.PlacemarkCreatedCallback;
import com.yandex.mapkit.map.PlacemarkMapObject;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.image.AnimatedImageProvider;
import com.yandex.runtime.image.ImageProvider;
import com.yandex.runtime.ui_view.ViewProvider;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ClusterizedPlacemarkCollectionBinding extends BaseMapObjectCollectionBinding implements ClusterizedPlacemarkCollection {
    @Override // com.yandex.mapkit.map.ClusterizedPlacemarkCollection
    @Deprecated
    public native PlacemarkMapObject addEmptyPlacemark(Point point);

    @Override // com.yandex.mapkit.map.ClusterizedPlacemarkCollection
    public native List<PlacemarkMapObject> addEmptyPlacemarks(List<Point> list);

    @Override // com.yandex.mapkit.map.ClusterizedPlacemarkCollection
    public native PlacemarkMapObject addPlacemark();

    @Override // com.yandex.mapkit.map.ClusterizedPlacemarkCollection
    @Deprecated
    public native PlacemarkMapObject addPlacemark(Point point);

    @Override // com.yandex.mapkit.map.ClusterizedPlacemarkCollection
    @Deprecated
    public native PlacemarkMapObject addPlacemark(Point point, AnimatedImageProvider animatedImageProvider, IconStyle iconStyle);

    @Override // com.yandex.mapkit.map.ClusterizedPlacemarkCollection
    @Deprecated
    public native PlacemarkMapObject addPlacemark(Point point, ImageProvider imageProvider);

    @Override // com.yandex.mapkit.map.ClusterizedPlacemarkCollection
    @Deprecated
    public native PlacemarkMapObject addPlacemark(Point point, ImageProvider imageProvider, IconStyle iconStyle);

    @Override // com.yandex.mapkit.map.ClusterizedPlacemarkCollection
    @Deprecated
    public native PlacemarkMapObject addPlacemark(Point point, ViewProvider viewProvider);

    @Override // com.yandex.mapkit.map.ClusterizedPlacemarkCollection
    @Deprecated
    public native PlacemarkMapObject addPlacemark(Point point, ViewProvider viewProvider, IconStyle iconStyle);

    @Override // com.yandex.mapkit.map.ClusterizedPlacemarkCollection
    public native PlacemarkMapObject addPlacemark(PlacemarkCreatedCallback placemarkCreatedCallback);

    @Override // com.yandex.mapkit.map.ClusterizedPlacemarkCollection
    public native List<PlacemarkMapObject> addPlacemarks(List<Point> list, ImageProvider imageProvider, IconStyle iconStyle);

    @Override // com.yandex.mapkit.map.ClusterizedPlacemarkCollection
    public native void clusterPlacemarks(double d, int i);

    public ClusterizedPlacemarkCollectionBinding(NativeObject nativeObject) {
        super(nativeObject);
    }
}
