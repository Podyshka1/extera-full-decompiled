package com.yandex.mapkit.road_events_layer;

import android.graphics.PointF;
import com.yandex.runtime.image.ImageProvider;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface RoadEventStyle {
    TextStyle getCaptionStyle();

    PointF getIconAnchor();

    int getZoomMin();

    List<PointF> getZoomScaleFunction();

    boolean isValid();

    void setCaptionStyle(TextStyle textStyle);

    void setIconAnchor(PointF pointF);

    void setIconImage(ImageProvider imageProvider);

    void setZoomMin(int i);

    void setZoomScaleFunction(List<PointF> list);
}
