package com.yandex.mapkit.map;

import com.yandex.mapkit.geometry.BoundingBox;

/* JADX INFO: loaded from: classes5.dex */
public interface CameraBounds {
    BoundingBox getLatLngBounds();

    float getMaxZoom();

    float getMinZoom();

    boolean isValid();

    void resetMinMaxZoomPreference();

    void setLatLngBounds(BoundingBox boundingBox);

    void setMaxZoomPreference(float f);

    void setMinZoomPreference(float f);
}
