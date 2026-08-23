package com.yandex.mapkit.map.internal;

import android.graphics.Bitmap;
import com.yandex.mapkit.map.MapWindow;
import com.yandex.mapkit.map.OffscreenMapWindow;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class OffscreenMapWindowBinding implements OffscreenMapWindow {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.map.OffscreenMapWindow
    public native Bitmap captureScreenshot();

    @Override // com.yandex.mapkit.map.OffscreenMapWindow
    public native MapWindow getMapWindow();

    public OffscreenMapWindowBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
