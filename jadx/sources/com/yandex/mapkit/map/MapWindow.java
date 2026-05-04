package com.yandex.mapkit.map;

import com.yandex.mapkit.ScreenPoint;
import com.yandex.mapkit.ScreenRect;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.p021ui.Overlay;
import com.yandex.runtime.view.Surface;

/* JADX INFO: loaded from: classes5.dex */
public interface MapWindow {
    Overlay addRasterScreenOverlay();

    void addSizeChangedListener(SizeChangedListener sizeChangedListener);

    void addSurface(Surface surface);

    ScreenPoint getFocusPoint();

    ScreenRect getFocusRect();

    VisibleRegion getFocusRegion();

    ScreenPoint getGestureFocusPoint();

    GestureFocusPointMode getGestureFocusPointMode();

    Map getMap();

    PointOfView getPointOfView();

    float getScaleFactor();

    int height();

    boolean isValid();

    void removeSizeChangedListener(SizeChangedListener sizeChangedListener);

    void removeSurface(Surface surface);

    Point screenToWorld(ScreenPoint screenPoint);

    void setFocusPoint(ScreenPoint screenPoint);

    void setFocusRect(ScreenRect screenRect);

    void setGestureFocusPoint(ScreenPoint screenPoint);

    void setGestureFocusPointMode(GestureFocusPointMode gestureFocusPointMode);

    void setMaxFps(float f);

    void setPointOfView(PointOfView pointOfView);

    void setScaleFactor(float f);

    void startMemoryMetricsCapture();

    void startPerformanceMetricsCapture();

    String stopMemoryMetricsCapture();

    String stopPerformanceMetricsCapture();

    int width();

    ScreenPoint worldToScreen(Point point);
}
