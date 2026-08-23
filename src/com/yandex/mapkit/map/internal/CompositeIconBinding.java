package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.map.Callback;
import com.yandex.mapkit.map.CompositeIcon;
import com.yandex.mapkit.map.IconStyle;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.image.ImageProvider;

/* JADX INFO: loaded from: classes5.dex */
public class CompositeIconBinding implements CompositeIcon {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.map.CompositeIcon
    public native boolean isValid();

    @Override // com.yandex.mapkit.map.CompositeIcon
    public native void removeAll();

    @Override // com.yandex.mapkit.map.CompositeIcon
    public native void removeIcon(String str);

    @Override // com.yandex.mapkit.map.CompositeIcon
    public native void setIcon(String str, ImageProvider imageProvider, IconStyle iconStyle);

    @Override // com.yandex.mapkit.map.CompositeIcon
    public native void setIcon(String str, ImageProvider imageProvider, IconStyle iconStyle, Callback callback);

    @Override // com.yandex.mapkit.map.CompositeIcon
    public native void setIconStyle(String str, IconStyle iconStyle);

    public CompositeIconBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
