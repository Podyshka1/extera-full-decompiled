package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.geometry.Circle;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.geometry.Polygon;
import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.map.CircleMapObject;
import com.yandex.mapkit.map.ClusterListener;
import com.yandex.mapkit.map.ClusterizedPlacemarkCollection;
import com.yandex.mapkit.map.IconStyle;
import com.yandex.mapkit.map.MapObjectCollection;
import com.yandex.mapkit.map.PlacemarkCreatedCallback;
import com.yandex.mapkit.map.PlacemarkMapObject;
import com.yandex.mapkit.map.PlacemarksStyler;
import com.yandex.mapkit.map.PolygonMapObject;
import com.yandex.mapkit.map.PolylineMapObject;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.image.AnimatedImageProvider;
import com.yandex.runtime.image.ImageProvider;
import com.yandex.runtime.subscription.Subscription;
import com.yandex.runtime.ui_view.ViewProvider;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class MapObjectCollectionBinding extends BaseMapObjectCollectionBinding implements MapObjectCollection {
    protected Subscription<ClusterListener> clusterListenerSubscription;

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createClusterListener(ClusterListener clusterListener);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    public native CircleMapObject addCircle(Circle circle);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    public native ClusterizedPlacemarkCollection addClusterizedPlacemarkCollection(ClusterListener clusterListener);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    public native MapObjectCollection addCollection();

    @Override // com.yandex.mapkit.map.MapObjectCollection
    @Deprecated
    public native PlacemarkMapObject addEmptyPlacemark(Point point);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    @Deprecated
    public native List<PlacemarkMapObject> addEmptyPlacemarks(List<Point> list);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    public native PlacemarkMapObject addPlacemark();

    @Override // com.yandex.mapkit.map.MapObjectCollection
    @Deprecated
    public native PlacemarkMapObject addPlacemark(Point point);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    @Deprecated
    public native PlacemarkMapObject addPlacemark(Point point, AnimatedImageProvider animatedImageProvider, IconStyle iconStyle);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    @Deprecated
    public native PlacemarkMapObject addPlacemark(Point point, ImageProvider imageProvider);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    @Deprecated
    public native PlacemarkMapObject addPlacemark(Point point, ImageProvider imageProvider, IconStyle iconStyle);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    @Deprecated
    public native PlacemarkMapObject addPlacemark(Point point, ViewProvider viewProvider);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    @Deprecated
    public native PlacemarkMapObject addPlacemark(Point point, ViewProvider viewProvider, IconStyle iconStyle);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    public native PlacemarkMapObject addPlacemark(PlacemarkCreatedCallback placemarkCreatedCallback);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    @Deprecated
    public native List<PlacemarkMapObject> addPlacemarks(List<Point> list, ImageProvider imageProvider, IconStyle iconStyle);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    public native PolygonMapObject addPolygon(Polygon polygon);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    public native PolylineMapObject addPolyline();

    @Override // com.yandex.mapkit.map.MapObjectCollection
    public native PolylineMapObject addPolyline(Polyline polyline);

    @Override // com.yandex.mapkit.map.MapObjectCollection
    public native PlacemarksStyler placemarksStyler();

    public MapObjectCollectionBinding(NativeObject nativeObject) {
        super(nativeObject);
        this.clusterListenerSubscription = new Subscription<ClusterListener>() { // from class: com.yandex.mapkit.map.internal.MapObjectCollectionBinding.1
            @Override // com.yandex.runtime.subscription.Subscription
            public NativeObject createNativeListener(ClusterListener clusterListener) {
                return MapObjectCollectionBinding.createClusterListener(clusterListener);
            }
        };
    }
}
