package com.yandex.mapkit.mapview;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.MotionEvent;
import com.yandex.mapkit.MapKitFactory;
import com.yandex.mapkit.map.MapWindow;
import com.yandex.mapkit.map.internal.MapWindowBinding;
import com.yandex.runtime.view.PlatformGLSurfaceTextureView;

/* JADX INFO: loaded from: classes5.dex */
public class MapTexture {
    private MapWindowBinding mapWindow;
    private PlatformGLSurfaceTextureView platformGLView;

    public MapTexture(Context context) {
        this(context, false);
    }

    public MapTexture(Context context, int i, int i2) {
        this(context, i, i2, false);
    }

    public MapTexture(Context context, int i, int i2, boolean z) {
        MapKitFactory.initialize(context);
        this.platformGLView = new PlatformGLSurfaceTextureView(context, i, i2, z);
        this.mapWindow = (MapWindowBinding) MapKitFactory.getInstance().createMapWindow(this.platformGLView);
    }

    public MapTexture(Context context, boolean z) {
        MapKitFactory.initialize(context);
        this.platformGLView = new PlatformGLSurfaceTextureView(context, z);
        this.mapWindow = (MapWindowBinding) MapKitFactory.getInstance().createMapWindow(this.platformGLView);
    }

    public MapWindow getMapWindow() {
        return this.mapWindow;
    }

    public void setTexture(SurfaceTexture surfaceTexture, int i, int i2) {
        this.platformGLView.setTexture(surfaceTexture, i, i2);
    }

    public void removeTexture() {
        this.platformGLView.onTextureDestroyed();
    }

    public void onTextureSizeChanged(int i, int i2) {
        this.platformGLView.onSizeChanged(i, i2);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.platformGLView.onTouchEvent(motionEvent);
    }

    public void setNoninteractive(boolean z) {
        this.platformGLView.setNoninteractive(z);
    }

    public void onStop() {
        this.platformGLView.pause();
        this.platformGLView.stop();
    }

    public void onStart() {
        this.platformGLView.start();
        this.platformGLView.resume();
    }
}
