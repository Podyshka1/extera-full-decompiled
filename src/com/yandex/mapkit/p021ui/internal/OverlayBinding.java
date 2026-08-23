package com.yandex.mapkit.p021ui.internal;

import com.yandex.mapkit.ScreenRect;
import com.yandex.mapkit.p021ui.Overlay;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.image.ImageProvider;
import com.yandex.runtime.ui_view.ViewProvider;

/* JADX INFO: loaded from: classes5.dex */
public class OverlayBinding implements Overlay {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.p021ui.Overlay
    public native boolean isValid();

    @Override // com.yandex.mapkit.p021ui.Overlay
    public native void remove();

    @Override // com.yandex.mapkit.p021ui.Overlay
    public native void setImage(ImageProvider imageProvider, ScreenRect screenRect);

    @Override // com.yandex.mapkit.p021ui.Overlay
    public native void setView(ViewProvider viewProvider, ScreenRect screenRect);

    protected OverlayBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
