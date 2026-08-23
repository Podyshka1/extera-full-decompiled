package com.yandex.mapkit.mapview;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.yandex.mapkit.MapKitFactory;
import com.yandex.mapkit.map.Map;
import com.yandex.mapkit.map.MapWindow;
import com.yandex.mapkit.map.internal.MapWindowBinding;
import com.yandex.runtime.view.GraphicsAPIType;
import com.yandex.runtime.view.PlatformGLTextureView;
import com.yandex.runtime.view.PlatformView;
import com.yandex.runtime.view.PlatformViewFactory;
import com.yandex.runtime.view.PlatformVulkanSurfaceView;

/* JADX INFO: loaded from: classes5.dex */
public class MapView extends RelativeLayout {
    private MapWindowBinding mapWindow;
    private PlatformView platformView;

    public MapView(Context context) {
        this(context, null, 0);
    }

    public MapView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (isInEditMode()) {
            return;
        }
        MapKitFactory.initialize(context);
        this.platformView = PlatformViewFactory.getPlatformView(context, PlatformViewFactory.convertAttributeSet(context, attributeSet));
        this.mapWindow = (MapWindowBinding) MapKitFactory.getInstance().createMapWindow(this.platformView);
        addView(this.platformView.getView(), new RelativeLayout.LayoutParams(-1, -1));
    }

    public MapWindow getMapWindow() {
        return this.mapWindow;
    }

    public Map getMap() {
        return this.mapWindow.getMap();
    }

    public void setNoninteractive(boolean z) {
        this.platformView.setNoninteractive(z);
    }

    public void onStop() {
        this.platformView.pause();
        this.platformView.stop();
    }

    public void onStart() {
        this.platformView.start();
        this.platformView.resume();
    }

    public Bitmap getScreenshot() {
        PlatformView platformView = this.platformView;
        if (platformView instanceof PlatformGLTextureView) {
            return ((PlatformGLTextureView) platformView).getBitmap();
        }
        return null;
    }

    public GraphicsAPIType getGraphicsAPI() {
        if (this.platformView instanceof PlatformVulkanSurfaceView) {
            return GraphicsAPIType.VULKAN;
        }
        return GraphicsAPIType.OPEN_GL;
    }

    public boolean isDebugModeEnabled() {
        return this.platformView.isDebugModeEnabled();
    }
}
