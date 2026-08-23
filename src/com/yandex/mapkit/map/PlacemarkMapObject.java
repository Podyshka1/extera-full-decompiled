package com.yandex.mapkit.map;

import android.graphics.PointF;
import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.image.ImageProvider;
import com.yandex.runtime.ui_view.ViewProvider;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface PlacemarkMapObject extends MapObject {
    float getDirection();

    Point getGeometry();

    float getOpacity();

    void setDirection(float f);

    void setGeometry(Point point);

    void setIcon(ImageProvider imageProvider);

    void setIcon(ImageProvider imageProvider, Callback callback);

    void setIcon(ImageProvider imageProvider, IconStyle iconStyle);

    void setIcon(ImageProvider imageProvider, IconStyle iconStyle, Callback callback);

    void setIconStyle(IconStyle iconStyle);

    void setOpacity(float f);

    void setScaleFunction(List<PointF> list);

    void setText(String str);

    void setText(String str, TextStyle textStyle);

    void setTextStyle(TextStyle textStyle);

    void setView(ViewProvider viewProvider);

    void setView(ViewProvider viewProvider, Callback callback);

    void setView(ViewProvider viewProvider, IconStyle iconStyle);

    void setView(ViewProvider viewProvider, IconStyle iconStyle, Callback callback);

    PlacemarkAnimation useAnimation();

    CompositeIcon useCompositeIcon();

    Model useModel();
}
