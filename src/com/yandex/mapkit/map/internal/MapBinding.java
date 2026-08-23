package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.Animation;
import com.yandex.mapkit.ScreenRect;
import com.yandex.mapkit.geometry.Geometry;
import com.yandex.mapkit.geometry.geo.Projection;
import com.yandex.mapkit.indoor.IndoorStateListener;
import com.yandex.mapkit.layers.GeoObjectTapListener;
import com.yandex.mapkit.layers.Layer;
import com.yandex.mapkit.layers.LayerOptions;
import com.yandex.mapkit.logo.Logo;
import com.yandex.mapkit.map.CameraBounds;
import com.yandex.mapkit.map.CameraListener;
import com.yandex.mapkit.map.CameraPosition;
import com.yandex.mapkit.map.CreateTileDataSource;
import com.yandex.mapkit.map.GeoObjectSelectionMetadata;
import com.yandex.mapkit.map.InputListener;
import com.yandex.mapkit.map.Map;
import com.yandex.mapkit.map.MapLoadedListener;
import com.yandex.mapkit.map.MapMode;
import com.yandex.mapkit.map.MapType;
import com.yandex.mapkit.map.RootMapObjectCollection;
import com.yandex.mapkit.map.VisibleRegion;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;

/* JADX INFO: loaded from: classes5.dex */
public class MapBinding implements Map {
    private final NativeObject nativeObject;
    protected Subscription<IndoorStateListener> indoorStateListenerSubscription = new Subscription<IndoorStateListener>() { // from class: com.yandex.mapkit.map.internal.MapBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(IndoorStateListener indoorStateListener) {
            return MapBinding.createIndoorStateListener(indoorStateListener);
        }
    };
    protected Subscription<GeoObjectTapListener> geoObjectTapListenerSubscription = new Subscription<GeoObjectTapListener>() { // from class: com.yandex.mapkit.map.internal.MapBinding.2
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(GeoObjectTapListener geoObjectTapListener) {
            return MapBinding.createGeoObjectTapListener(geoObjectTapListener);
        }
    };
    protected Subscription<CameraListener> cameraListenerSubscription = new Subscription<CameraListener>() { // from class: com.yandex.mapkit.map.internal.MapBinding.3
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(CameraListener cameraListener) {
            return MapBinding.createCameraListener(cameraListener);
        }
    };
    protected Subscription<InputListener> inputListenerSubscription = new Subscription<InputListener>() { // from class: com.yandex.mapkit.map.internal.MapBinding.4
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(InputListener inputListener) {
            return MapBinding.createInputListener(inputListener);
        }
    };
    protected Subscription<MapLoadedListener> mapLoadedListenerSubscription = new Subscription<MapLoadedListener>() { // from class: com.yandex.mapkit.map.internal.MapBinding.5
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(MapLoadedListener mapLoadedListener) {
            return MapBinding.createMapLoadedListener(mapLoadedListener);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createCameraListener(CameraListener cameraListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createGeoObjectTapListener(GeoObjectTapListener geoObjectTapListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createIndoorStateListener(IndoorStateListener indoorStateListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createInputListener(InputListener inputListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createMapLoadedListener(MapLoadedListener mapLoadedListener);

    @Override // com.yandex.mapkit.map.Map
    public native void addCameraListener(CameraListener cameraListener);

    @Override // com.yandex.mapkit.map.Map
    public native void addIndoorStateListener(IndoorStateListener indoorStateListener);

    @Override // com.yandex.mapkit.map.Map
    public native void addInputListener(InputListener inputListener);

    @Override // com.yandex.mapkit.map.Map
    public native RootMapObjectCollection addMapObjectLayer(String str);

    @Override // com.yandex.mapkit.map.Map
    public native void addTapListener(GeoObjectTapListener geoObjectTapListener);

    @Override // com.yandex.mapkit.map.Map
    public native Layer addTileLayer(String str, LayerOptions layerOptions, CreateTileDataSource createTileDataSource);

    @Override // com.yandex.mapkit.map.Map
    public native CameraPosition cameraPosition(Geometry geometry);

    @Override // com.yandex.mapkit.map.Map
    public native CameraPosition cameraPosition(Geometry geometry, float f, float f2, ScreenRect screenRect);

    @Override // com.yandex.mapkit.map.Map
    public native CameraPosition cameraPosition(Geometry geometry, ScreenRect screenRect);

    @Override // com.yandex.mapkit.map.Map
    public native void deselectGeoObject();

    @Override // com.yandex.mapkit.map.Map
    public native CameraBounds getCameraBounds();

    @Override // com.yandex.mapkit.map.Map
    public native CameraPosition getCameraPosition();

    @Override // com.yandex.mapkit.map.Map
    public native Logo getLogo();

    @Override // com.yandex.mapkit.map.Map
    public native RootMapObjectCollection getMapObjects();

    @Override // com.yandex.mapkit.map.Map
    public native MapType getMapType();

    @Override // com.yandex.mapkit.map.Map
    public native MapMode getMode();

    @Override // com.yandex.mapkit.map.Map
    public native Integer getPoiLimit();

    @Override // com.yandex.mapkit.map.Map
    public native VisibleRegion getVisibleRegion();

    @Override // com.yandex.mapkit.map.Map
    public native boolean isAwesomeModelsEnabled();

    @Override // com.yandex.mapkit.map.Map
    public native boolean isFastTapEnabled();

    @Override // com.yandex.mapkit.map.Map
    public native boolean isHdModeEnabled();

    @Override // com.yandex.mapkit.map.Map
    public native boolean isIndoorEnabled();

    @Override // com.yandex.mapkit.map.Map
    public native boolean isNightModeEnabled();

    @Override // com.yandex.mapkit.map.Map
    public native boolean isRotateGesturesEnabled();

    @Override // com.yandex.mapkit.map.Map
    public native boolean isScrollGesturesEnabled();

    @Override // com.yandex.mapkit.map.Map
    public native boolean isTiltGesturesEnabled();

    @Override // com.yandex.mapkit.map.Map
    public native boolean isValid();

    @Override // com.yandex.mapkit.map.Map
    public native boolean isZoomGesturesEnabled();

    @Override // com.yandex.mapkit.map.Map
    public native void move(CameraPosition cameraPosition);

    @Override // com.yandex.mapkit.map.Map
    public native void move(CameraPosition cameraPosition, Animation animation, Map.CameraCallback cameraCallback);

    @Override // com.yandex.mapkit.map.Map
    public native Projection projection();

    @Override // com.yandex.mapkit.map.Map
    public native void removeCameraListener(CameraListener cameraListener);

    @Override // com.yandex.mapkit.map.Map
    public native void removeIndoorStateListener(IndoorStateListener indoorStateListener);

    @Override // com.yandex.mapkit.map.Map
    public native void removeInputListener(InputListener inputListener);

    @Override // com.yandex.mapkit.map.Map
    public native void removeTapListener(GeoObjectTapListener geoObjectTapListener);

    @Override // com.yandex.mapkit.map.Map
    public native void resetMapStyles();

    @Override // com.yandex.mapkit.map.Map
    public native void selectGeoObject(GeoObjectSelectionMetadata geoObjectSelectionMetadata);

    @Override // com.yandex.mapkit.map.Map
    public native void set2DMode(boolean z);

    @Override // com.yandex.mapkit.map.Map
    public native void setAwesomeModelsEnabled(boolean z);

    @Override // com.yandex.mapkit.map.Map
    public native void setFastTapEnabled(boolean z);

    @Override // com.yandex.mapkit.map.Map
    public native void setHdModeEnabled(boolean z);

    @Override // com.yandex.mapkit.map.Map
    public native void setIndoorEnabled(boolean z);

    @Override // com.yandex.mapkit.map.Map
    public native void setMapLoadedListener(MapLoadedListener mapLoadedListener);

    @Override // com.yandex.mapkit.map.Map
    public native boolean setMapStyle(int i, String str);

    @Override // com.yandex.mapkit.map.Map
    public native boolean setMapStyle(String str);

    @Override // com.yandex.mapkit.map.Map
    public native void setMapType(MapType mapType);

    @Override // com.yandex.mapkit.map.Map
    public native void setMode(MapMode mapMode);

    @Override // com.yandex.mapkit.map.Map
    public native void setNightModeEnabled(boolean z);

    @Override // com.yandex.mapkit.map.Map
    public native void setPoiLimit(Integer num);

    @Override // com.yandex.mapkit.map.Map
    public native void setRotateGesturesEnabled(boolean z);

    @Override // com.yandex.mapkit.map.Map
    public native void setScrollGesturesEnabled(boolean z);

    @Override // com.yandex.mapkit.map.Map
    public native void setTiltGesturesEnabled(boolean z);

    @Override // com.yandex.mapkit.map.Map
    public native void setZoomGesturesEnabled(boolean z);

    @Override // com.yandex.mapkit.map.Map
    public native void startTileLoadMetricsCapture();

    @Override // com.yandex.mapkit.map.Map
    public native String stopTileLoadMetricsCapture();

    @Override // com.yandex.mapkit.map.Map
    public native VisibleRegion visibleRegion(CameraPosition cameraPosition);

    @Override // com.yandex.mapkit.map.Map
    public native void wipe();

    public MapBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
