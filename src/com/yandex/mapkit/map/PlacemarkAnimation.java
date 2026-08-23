package com.yandex.mapkit.map;

import com.yandex.runtime.image.AnimatedImageProvider;

/* JADX INFO: loaded from: classes5.dex */
public interface PlacemarkAnimation {
    boolean isReversed();

    boolean isValid();

    void pause();

    void play();

    void play(Callback callback);

    void resume();

    void setIcon(AnimatedImageProvider animatedImageProvider, IconStyle iconStyle);

    void setIcon(AnimatedImageProvider animatedImageProvider, IconStyle iconStyle, Callback callback);

    void setIconStyle(IconStyle iconStyle);

    void setReversed(boolean z);

    void stop();
}
