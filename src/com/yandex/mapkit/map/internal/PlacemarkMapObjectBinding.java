package com.yandex.mapkit.map.internal;

import android.graphics.PointF;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.map.Callback;
import com.yandex.mapkit.map.CompositeIcon;
import com.yandex.mapkit.map.IconStyle;
import com.yandex.mapkit.map.Model;
import com.yandex.mapkit.map.PlacemarkAnimation;
import com.yandex.mapkit.map.PlacemarkMapObject;
import com.yandex.mapkit.map.TextStyle;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.image.ImageProvider;
import com.yandex.runtime.ui_view.ViewProvider;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class PlacemarkMapObjectBinding extends MapObjectBinding implements PlacemarkMapObject {
    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native float getDirection();

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native Point getGeometry();

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native float getOpacity();

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setDirection(float f);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setGeometry(Point point);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setIcon(ImageProvider imageProvider);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setIcon(ImageProvider imageProvider, Callback callback);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setIcon(ImageProvider imageProvider, IconStyle iconStyle);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setIcon(ImageProvider imageProvider, IconStyle iconStyle, Callback callback);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setIconStyle(IconStyle iconStyle);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setOpacity(float f);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setScaleFunction(List<PointF> list);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setText(String str);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setText(String str, TextStyle textStyle);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setTextStyle(TextStyle textStyle);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setView(ViewProvider viewProvider);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setView(ViewProvider viewProvider, Callback callback);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setView(ViewProvider viewProvider, IconStyle iconStyle);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native void setView(ViewProvider viewProvider, IconStyle iconStyle, Callback callback);

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native PlacemarkAnimation useAnimation();

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native CompositeIcon useCompositeIcon();

    @Override // com.yandex.mapkit.map.PlacemarkMapObject
    public native Model useModel();

    public PlacemarkMapObjectBinding(NativeObject nativeObject) {
        super(nativeObject);
    }
}
