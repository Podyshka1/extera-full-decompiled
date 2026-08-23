package com.yandex.runtime.view.internal;

import android.opengl.GLSurfaceView;
import android.view.Surface;

/* JADX INFO: loaded from: classes5.dex */
public class GLSurface {
    private EGLConfigChooserImpl configChooser;
    private GLContextFactory glContextFactory;
    private boolean initialized = false;
    private GLRenderThread renderThread;
    private GLSurfaceView.Renderer renderer;

    public void onSurfaceUpdated(Surface surface) {
    }

    public GLSurface(boolean z) {
        EGLConfigChooserImpl eGLConfigChooserImpl = new EGLConfigChooserImpl();
        this.configChooser = eGLConfigChooserImpl;
        this.glContextFactory = new GLContextFactory(z, eGLConfigChooserImpl);
    }

    public void onSurfaceAvailable(Surface surface, int i, int i2) {
        GLRenderThread gLRenderThread = new GLRenderThread(surface, this.configChooser, this.glContextFactory, this.renderer);
        this.renderThread = gLRenderThread;
        gLRenderThread.onSizeChanged(i, i2);
        this.renderThread.start();
        this.initialized = true;
    }

    public void onSurfaceSizeChanged(Surface surface, int i, int i2) {
        if (this.initialized) {
            this.renderThread.onSizeChanged(i, i2);
        }
    }

    public boolean onSurfaceDestroyed(Surface surface) {
        if (!this.initialized) {
            return true;
        }
        stopRenderThread();
        return true;
    }

    public void onPause() {
        if (this.initialized) {
            this.renderThread.onPause();
        }
    }

    public void onResume() {
        if (this.initialized) {
            this.renderThread.onResume();
        }
    }

    public void requestRender() {
        if (this.initialized) {
            this.renderThread.requestRender();
        }
    }

    public void setRenderer(GLSurfaceView.Renderer renderer) {
        this.renderer = renderer;
    }

    public void stopRenderThread() {
        this.renderThread.finish();
        try {
            this.renderThread.join();
        } catch (InterruptedException unused) {
        }
        this.initialized = false;
    }
}
