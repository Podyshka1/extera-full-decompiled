package com.yandex.mapkit.places.internal;

import com.yandex.mapkit.map.MapWindow;
import com.yandex.mapkit.places.Places;
import com.yandex.mapkit.places.mrc.MrcPhotoPlayer;
import com.yandex.mapkit.places.mrc.MrcPhotoTrackPlayer;
import com.yandex.mapkit.places.panorama.PanoramaLayer;
import com.yandex.mapkit.places.panorama.PanoramaService;
import com.yandex.mapkit.places.panorama.Player;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.view.PlatformView;

/* JADX INFO: loaded from: classes5.dex */
public class PlacesBinding implements Places {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.places.Places
    public native MrcPhotoPlayer createMrcPhotoPlayer(PlatformView platformView);

    @Override // com.yandex.mapkit.places.Places
    public native MrcPhotoTrackPlayer createMrcPhotoTrackPlayer(PlatformView platformView);

    @Override // com.yandex.mapkit.places.Places
    public native PanoramaLayer createPanoramaLayer(MapWindow mapWindow);

    @Override // com.yandex.mapkit.places.Places
    public native Player createPanoramaPlayer(PlatformView platformView);

    @Override // com.yandex.mapkit.places.Places
    public native Player createPanoramaPlayer(PlatformView platformView, float f);

    @Override // com.yandex.mapkit.places.Places
    public native PanoramaService createPanoramaService();

    @Override // com.yandex.mapkit.places.Places
    public native boolean isValid();

    public PlacesBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
