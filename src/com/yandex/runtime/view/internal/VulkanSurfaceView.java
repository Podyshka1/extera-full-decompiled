package com.yandex.runtime.view.internal;

import android.content.Context;
import android.graphics.Rect;
import android.view.SurfaceHolder;
import android.view.SurfaceView;

/* JADX INFO: loaded from: classes5.dex */
public class VulkanSurfaceView extends SurfaceView implements SurfaceHolder.Callback {
    protected PlatformVulkanRenderer renderer;

    public VulkanSurfaceView(Context context, boolean z) {
        super(context);
        getHolder().addCallback(this);
        this.renderer = new PlatformVulkanRenderer(z);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.renderer.surfaceChanged(surfaceHolder.getSurface(), i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
        this.renderer.surfaceCreated(surfaceHolder.getSurface(), surfaceFrame.width(), surfaceFrame.height());
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.renderer.surfaceDestroyed(surfaceHolder.getSurface());
    }

    public boolean isDebugModeEnabled() {
        return this.renderer.isDebugModeEnabled();
    }
}
