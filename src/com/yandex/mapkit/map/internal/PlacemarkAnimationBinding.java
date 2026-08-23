package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.map.Callback;
import com.yandex.mapkit.map.IconStyle;
import com.yandex.mapkit.map.PlacemarkAnimation;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.image.AnimatedImageProvider;

/* JADX INFO: loaded from: classes5.dex */
public class PlacemarkAnimationBinding implements PlacemarkAnimation {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.map.PlacemarkAnimation
    public native boolean isReversed();

    @Override // com.yandex.mapkit.map.PlacemarkAnimation
    public native boolean isValid();

    @Override // com.yandex.mapkit.map.PlacemarkAnimation
    public native void pause();

    @Override // com.yandex.mapkit.map.PlacemarkAnimation
    public native void play();

    @Override // com.yandex.mapkit.map.PlacemarkAnimation
    public native void play(Callback callback);

    @Override // com.yandex.mapkit.map.PlacemarkAnimation
    public native void resume();

    @Override // com.yandex.mapkit.map.PlacemarkAnimation
    public native void setIcon(AnimatedImageProvider animatedImageProvider, IconStyle iconStyle);

    @Override // com.yandex.mapkit.map.PlacemarkAnimation
    public native void setIcon(AnimatedImageProvider animatedImageProvider, IconStyle iconStyle, Callback callback);

    @Override // com.yandex.mapkit.map.PlacemarkAnimation
    public native void setIconStyle(IconStyle iconStyle);

    @Override // com.yandex.mapkit.map.PlacemarkAnimation
    public native void setReversed(boolean z);

    @Override // com.yandex.mapkit.map.PlacemarkAnimation
    public native void stop();

    public PlacemarkAnimationBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
