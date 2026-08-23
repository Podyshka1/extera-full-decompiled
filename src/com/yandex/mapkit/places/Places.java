package com.yandex.mapkit.places;

import com.yandex.mapkit.map.MapWindow;
import com.yandex.mapkit.places.mrc.MrcPhotoPlayer;
import com.yandex.mapkit.places.mrc.MrcPhotoTrackPlayer;
import com.yandex.mapkit.places.panorama.PanoramaLayer;
import com.yandex.mapkit.places.panorama.PanoramaService;
import com.yandex.mapkit.places.panorama.Player;
import com.yandex.runtime.view.PlatformView;

/* JADX INFO: loaded from: classes5.dex */
public interface Places {
    MrcPhotoPlayer createMrcPhotoPlayer(PlatformView platformView);

    MrcPhotoTrackPlayer createMrcPhotoTrackPlayer(PlatformView platformView);

    PanoramaLayer createPanoramaLayer(MapWindow mapWindow);

    Player createPanoramaPlayer(PlatformView platformView);

    Player createPanoramaPlayer(PlatformView platformView, float f);

    PanoramaService createPanoramaService();

    boolean isValid();
}
