package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.ScreenPoint;
import com.yandex.mapkit.ScreenRect;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.map.GestureFocusPointMode;
import com.yandex.mapkit.map.Map;
import com.yandex.mapkit.map.MapWindow;
import com.yandex.mapkit.map.PointOfView;
import com.yandex.mapkit.map.SizeChangedListener;
import com.yandex.mapkit.map.VisibleRegion;
import com.yandex.mapkit.ui.Overlay;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;
import com.yandex.runtime.view.Surface;

/* JADX INFO: loaded from: classes5.dex */
public class MapWindowBinding implements MapWindow {
    private final NativeObject nativeObject;
    protected Subscription<SizeChangedListener> sizeChangedListenerSubscription = new Subscription<SizeChangedListener>() { // from class: com.yandex.mapkit.map.internal.MapWindowBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(SizeChangedListener sizeChangedListener) {
            return MapWindowBinding.createSizeChangedListener(sizeChangedListener);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createSizeChangedListener(SizeChangedListener sizeChangedListener);

    @Override // com.yandex.mapkit.map.MapWindow
    public native Overlay addRasterScreenOverlay();

    @Override // com.yandex.mapkit.map.MapWindow
    public native void addSizeChangedListener(SizeChangedListener sizeChangedListener);

    @Override // com.yandex.mapkit.map.MapWindow
    public native void addSurface(Surface surface);

    @Override // com.yandex.mapkit.map.MapWindow
    public native ScreenPoint getFocusPoint();

    @Override // com.yandex.mapkit.map.MapWindow
    public native ScreenRect getFocusRect();

    @Override // com.yandex.mapkit.map.MapWindow
    public native VisibleRegion getFocusRegion();

    @Override // com.yandex.mapkit.map.MapWindow
    public native ScreenPoint getGestureFocusPoint();

    @Override // com.yandex.mapkit.map.MapWindow
    public native GestureFocusPointMode getGestureFocusPointMode();

    @Override // com.yandex.mapkit.map.MapWindow
    public native Map getMap();

    @Override // com.yandex.mapkit.map.MapWindow
    public native PointOfView getPointOfView();

    @Override // com.yandex.mapkit.map.MapWindow
    public native float getScaleFactor();

    @Override // com.yandex.mapkit.map.MapWindow
    public native int height();

    @Override // com.yandex.mapkit.map.MapWindow
    public native boolean isValid();

    @Override // com.yandex.mapkit.map.MapWindow
    public native void removeSizeChangedListener(SizeChangedListener sizeChangedListener);

    @Override // com.yandex.mapkit.map.MapWindow
    public native void removeSurface(Surface surface);

    @Override // com.yandex.mapkit.map.MapWindow
    public native Point screenToWorld(ScreenPoint screenPoint);

    @Override // com.yandex.mapkit.map.MapWindow
    public native void setFocusPoint(ScreenPoint screenPoint);

    @Override // com.yandex.mapkit.map.MapWindow
    public native void setFocusRect(ScreenRect screenRect);

    @Override // com.yandex.mapkit.map.MapWindow
    public native void setGestureFocusPoint(ScreenPoint screenPoint);

    @Override // com.yandex.mapkit.map.MapWindow
    public native void setGestureFocusPointMode(GestureFocusPointMode gestureFocusPointMode);

    @Override // com.yandex.mapkit.map.MapWindow
    public native void setMaxFps(float f);

    @Override // com.yandex.mapkit.map.MapWindow
    public native void setPointOfView(PointOfView pointOfView);

    @Override // com.yandex.mapkit.map.MapWindow
    public native void setScaleFactor(float f);

    @Override // com.yandex.mapkit.map.MapWindow
    public native void startMemoryMetricsCapture();

    @Override // com.yandex.mapkit.map.MapWindow
    public native void startPerformanceMetricsCapture();

    @Override // com.yandex.mapkit.map.MapWindow
    public native String stopMemoryMetricsCapture();

    @Override // com.yandex.mapkit.map.MapWindow
    public native String stopPerformanceMetricsCapture();

    @Override // com.yandex.mapkit.map.MapWindow
    public native int width();

    @Override // com.yandex.mapkit.map.MapWindow
    public native ScreenPoint worldToScreen(Point point);

    public MapWindowBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
