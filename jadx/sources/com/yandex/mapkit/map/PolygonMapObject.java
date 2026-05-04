package com.yandex.mapkit.map;

import com.yandex.mapkit.geometry.Polygon;
import com.yandex.runtime.image.AnimatedImageProvider;
import com.yandex.runtime.image.ImageProvider;

/* JADX INFO: loaded from: classes5.dex */
public interface PolygonMapObject extends MapObject {
    int getFillColor();

    Polygon getGeometry();

    int getStrokeColor();

    float getStrokeWidth();

    boolean isGeodesic();

    void resetPattern();

    void setFillColor(int i);

    void setGeodesic(boolean z);

    void setGeometry(Polygon polygon);

    void setPattern(AnimatedImageProvider animatedImageProvider, float f);

    void setPattern(ImageProvider imageProvider, float f);

    void setStrokeColor(int i);

    void setStrokeWidth(float f);
}
