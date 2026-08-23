package com.yandex.runtime.view;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.graphics.GLDebugBinding;
import com.yandex.runtime.view.internal.GLTextureView;
import com.yandex.runtime.view.internal.MemoryPressureListener;
import com.yandex.runtime.view.internal.PlatformGLRenderer;
import com.yandex.runtime.view.internal.PlatformViewBinding;

/* JADX INFO: loaded from: classes5.dex */
public class PlatformGLSurfaceTextureView extends GLTextureView implements PlatformView, PlatformGLRenderer.GLContextListener {
    protected Context context;
    protected boolean glDebugEnabled;
    protected int height;
    protected MemoryPressureListener memoryPressureListener;
    protected PlatformViewBinding platformViewBinding;
    protected PlatformGLRenderer renderer;
    protected int width;

    @Override // com.yandex.runtime.view.PlatformView
    public View getView() {
        return null;
    }

    @Override // com.yandex.runtime.view.PlatformView
    public boolean isDebugModeEnabled() {
        return false;
    }

    public PlatformGLSurfaceTextureView(Context context, boolean z) {
        super(z);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        init(context, displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    public PlatformGLSurfaceTextureView(Context context, int i, int i2, boolean z) {
        super(z);
        init(context, i, i2);
    }

    private void init(Context context, int i, int i2) {
        this.context = context;
        this.width = i;
        this.height = i2;
        PlatformGLRenderer platformGLRendererCreateRenderer = createRenderer();
        this.renderer = platformGLRendererCreateRenderer;
        this.platformViewBinding = new PlatformViewBinding(platformGLRendererCreateRenderer, i, i2);
    }

    public PlatformGLRenderer createRenderer() {
        return new PlatformGLRenderer(this, this);
    }

    public void setTexture(SurfaceTexture surfaceTexture, int i, int i2) {
        this.width = i;
        this.height = i2;
        setRenderer(surfaceTexture, i, i2, this.renderer);
    }

    public void setTexture(SurfaceTexture surfaceTexture) {
        setTexture(surfaceTexture, this.width, this.height);
    }

    @Override // com.yandex.runtime.view.internal.GLTextureView
    public void onSizeChanged(int i, int i2) {
        super.onSizeChanged(i, i2);
        this.width = i;
        this.height = i2;
        this.platformViewBinding.onSizeChanged(i, i2);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.platformViewBinding.onTouchEvent(motionEvent);
    }

    @Override // com.yandex.runtime.view.PlatformView
    public NativeObject getNativePlatformView() {
        return this.platformViewBinding.getNative();
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void destroyNativePlatformView() {
        this.platformViewBinding.destroyNative();
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void pause() {
        this.platformViewBinding.onPause();
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void resume() {
        this.platformViewBinding.onResume();
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void stop() {
        MemoryPressureListener memoryPressureListener = this.memoryPressureListener;
        if (memoryPressureListener != null) {
            this.context.unregisterComponentCallbacks(memoryPressureListener);
            this.memoryPressureListener = null;
        }
        this.platformViewBinding.onStop();
        onPause();
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void start() {
        if (this.memoryPressureListener == null) {
            MemoryPressureListener memoryPressureListener = new MemoryPressureListener(this);
            this.memoryPressureListener = memoryPressureListener;
            this.context.registerComponentCallbacks(memoryPressureListener);
        }
        onResume();
        this.platformViewBinding.onStart(this.width, this.height);
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void setNoninteractive(boolean z) {
        this.platformViewBinding.setNoninteractive(z);
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void setOffscreenBufferEnabled(boolean z) {
        this.platformViewBinding.setOffscreenBufferEnabled(z);
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void onMemoryWarning() {
        this.platformViewBinding.onMemoryWarning();
    }

    @Override // com.yandex.runtime.view.internal.PlatformGLRenderer.GLContextListener
    public void onContextCreated() {
        if (this.glDebugEnabled) {
            GLDebugBinding.enable();
        }
        this.platformViewBinding.onContextCreated();
    }
}
