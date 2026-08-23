package com.yandex.mapkit.places.mrc;

/* JADX INFO: loaded from: classes5.dex */
public interface MrcPhotoPlayer {
    void disableMove();

    void enableMove();

    String getPhotoId();

    boolean isValid();

    boolean moveEnabled();

    void reset();
}
