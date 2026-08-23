package com.yandex.mapkit.places.mrc;

import com.yandex.mapkit.geometry.PolylinePosition;

/* JADX INFO: loaded from: classes5.dex */
public interface MrcPhotoTrackPlayer {

    public enum PlaybackSpeed {
        X1,
        X2,
        X4,
        X8
    }

    void disableMove();

    void enableMove();

    String getPhotoId();

    PolylinePosition getPosition();

    boolean isIsPlaying();

    boolean isValid();

    void openPhotoAt(PolylinePosition polylinePosition);

    void play();

    void reset();

    void stop();
}
