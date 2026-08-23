package com.yandex.mapkit.places.mrc.internal;

import com.yandex.mapkit.places.mrc.MrcPhotoPlayer;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class MrcPhotoPlayerBinding implements MrcPhotoPlayer {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoPlayer
    public native void disableMove();

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoPlayer
    public native void enableMove();

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoPlayer
    public native String getPhotoId();

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoPlayer
    public native boolean isValid();

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoPlayer
    public native boolean moveEnabled();

    @Override // com.yandex.mapkit.places.mrc.MrcPhotoPlayer
    public native void reset();

    public MrcPhotoPlayerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
