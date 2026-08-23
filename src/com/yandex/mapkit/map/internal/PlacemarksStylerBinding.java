package com.yandex.mapkit.map.internal;

import android.graphics.PointF;
import com.yandex.mapkit.map.PlacemarksStyler;
import com.yandex.runtime.NativeObject;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class PlacemarksStylerBinding implements PlacemarksStyler {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.map.PlacemarksStyler
    public native boolean isValid();

    @Override // com.yandex.mapkit.map.PlacemarksStyler
    public native void setScaleFunction(List<PointF> list);

    public PlacemarksStylerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
