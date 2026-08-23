package com.yandex.mapkit.places.mrc.internal;

import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.mapkit.places.mrc.MrcPhotoTrackPlayer;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class MrcPhotoTrackPlayerBinding implements MrcPhotoTrackPlayer {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoTrackPlayer
    public native void disableMove();

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoTrackPlayer
    public native void enableMove();

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoTrackPlayer
    public native String getPhotoId();

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoTrackPlayer
    public native PolylinePosition getPosition();

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoTrackPlayer
    public native boolean isIsPlaying();

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoTrackPlayer
    public native boolean isValid();

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoTrackPlayer
    public native void openPhotoAt(PolylinePosition polylinePosition);

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoTrackPlayer
    public native void play();

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoTrackPlayer
    public native void reset();

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoTrackPlayer
    public native void stop();

    public MrcPhotoTrackPlayerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
