package com.yandex.mapkit.map;

import com.yandex.mapkit.Animation;
import com.yandex.mapkit.ScreenRect;
import com.yandex.mapkit.geometry.Geometry;
import com.yandex.mapkit.geometry.geo.Projection;
import com.yandex.mapkit.indoor.IndoorStateListener;
import com.yandex.mapkit.layers.GeoObjectTapListener;
import com.yandex.mapkit.layers.Layer;
import com.yandex.mapkit.layers.LayerOptions;
import com.yandex.mapkit.logo.Logo;

/* JADX INFO: loaded from: classes5.dex */
public interface Map {

    public interface CameraCallback {
        void onMoveFinished(boolean z);
    }

    void addCameraListener(CameraListener cameraListener);

    void addIndoorStateListener(IndoorStateListener indoorStateListener);

    void addInputListener(InputListener inputListener);

    RootMapObjectCollection addMapObjectLayer(String str);

    void addTapListener(GeoObjectTapListener geoObjectTapListener);

    Layer addTileLayer(String str, LayerOptions layerOptions, CreateTileDataSource createTileDataSource);

    CameraPosition cameraPosition(Geometry geometry);

    CameraPosition cameraPosition(Geometry geometry, float f, float f2, ScreenRect screenRect);

    CameraPosition cameraPosition(Geometry geometry, ScreenRect screenRect);

    void deselectGeoObject();

    CameraBounds getCameraBounds();

    CameraPosition getCameraPosition();

    Logo getLogo();

    RootMapObjectCollection getMapObjects();

    MapType getMapType();

    MapMode getMode();

    Integer getPoiLimit();

    VisibleRegion getVisibleRegion();

    boolean isAwesomeModelsEnabled();

    boolean isFastTapEnabled();

    boolean isHdModeEnabled();

    boolean isIndoorEnabled();

    boolean isNightModeEnabled();

    boolean isRotateGesturesEnabled();

    boolean isScrollGesturesEnabled();

    boolean isTiltGesturesEnabled();

    boolean isValid();

    boolean isZoomGesturesEnabled();

    void move(CameraPosition cameraPosition);

    void move(CameraPosition cameraPosition, Animation animation, CameraCallback cameraCallback);

    Projection projection();

    void removeCameraListener(CameraListener cameraListener);

    void removeIndoorStateListener(IndoorStateListener indoorStateListener);

    void removeInputListener(InputListener inputListener);

    void removeTapListener(GeoObjectTapListener geoObjectTapListener);

    void resetMapStyles();

    void selectGeoObject(GeoObjectSelectionMetadata geoObjectSelectionMetadata);

    void set2DMode(boolean z);

    void setAwesomeModelsEnabled(boolean z);

    void setFastTapEnabled(boolean z);

    void setHdModeEnabled(boolean z);

    void setIndoorEnabled(boolean z);

    void setMapLoadedListener(MapLoadedListener mapLoadedListener);

    boolean setMapStyle(int i, String str);

    boolean setMapStyle(String str);

    void setMapType(MapType mapType);

    void setMode(MapMode mapMode);

    void setNightModeEnabled(boolean z);

    void setPoiLimit(Integer num);

    void setRotateGesturesEnabled(boolean z);

    void setScrollGesturesEnabled(boolean z);

    void setTiltGesturesEnabled(boolean z);

    void setZoomGesturesEnabled(boolean z);

    void startTileLoadMetricsCapture();

    String stopTileLoadMetricsCapture();

    VisibleRegion visibleRegion(CameraPosition cameraPosition);

    void wipe();
}
