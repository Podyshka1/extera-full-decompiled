package com.yandex.runtime.view;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.graphics.GLDebugBinding;
import com.yandex.runtime.view.internal.EGLConfigChooserImpl;
import com.yandex.runtime.view.internal.GLContextFactory;
import com.yandex.runtime.view.internal.MemoryPressureListener;
import com.yandex.runtime.view.internal.PlatformGLRenderer;
import com.yandex.runtime.view.internal.PlatformViewBinding;
import com.yandex.runtime.view.internal.RenderDelegate;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes5.dex */
public class PlatformGLSurfaceView extends GLSurfaceView implements RenderDelegate, PlatformView, PlatformGLRenderer.GLContextListener {
    private static final String LOG_TAG = "PlatformGLSurfaceView";
    private boolean glDebugEnabled;
    private int height;
    private MemoryPressureListener memoryPressureListener;
    protected PlatformViewBinding platformViewBinding;
    protected PlatformGLRenderer renderer;
    private int width;

    @Override // com.yandex.runtime.view.PlatformView
    public View getView() {
        return this;
    }

    @Override // com.yandex.runtime.view.PlatformView
    public boolean isDebugModeEnabled() {
        return false;
    }

    public PlatformGLSurfaceView(Context context) {
        this(context, null, 0, false);
    }

    public PlatformGLSurfaceView(Context context, boolean z) {
        this(context, null, 0, z);
    }

    public PlatformGLSurfaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, false);
    }

    public PlatformGLSurfaceView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, false);
    }

    public PlatformGLSurfaceView(Context context, AttributeSet attributeSet, int i, boolean z) {
        super(context, attributeSet);
        this.glDebugEnabled = z;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) getContext().getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        this.width = displayMetrics.widthPixels;
        this.height = displayMetrics.heightPixels;
        EGLConfigChooserImpl eGLConfigChooserImpl = new EGLConfigChooserImpl();
        setEGLConfigChooser(eGLConfigChooserImpl);
        setEGLContextFactory(new GLContextFactory(z, eGLConfigChooserImpl));
        PlatformGLRenderer platformGLRendererCreateRenderer = createRenderer();
        this.renderer = platformGLRendererCreateRenderer;
        this.platformViewBinding = new PlatformViewBinding(platformGLRendererCreateRenderer, this.width, this.height);
        setRenderer(this.renderer);
        setRenderMode(0);
    }

    public PlatformGLRenderer createRenderer() {
        return new PlatformGLRenderer(this, this);
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
        if (this.memoryPressureListener != null) {
            getContext().unregisterComponentCallbacks(this.memoryPressureListener);
            this.memoryPressureListener = null;
        }
        this.platformViewBinding.onStop();
        onPause();
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void start() {
        if (this.memoryPressureListener == null) {
            this.memoryPressureListener = new MemoryPressureListener(this);
            getContext().registerComponentCallbacks(this.memoryPressureListener);
        }
        onResume();
        this.platformViewBinding.onStart(this.width, this.height);
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void onMemoryWarning() {
        this.platformViewBinding.onMemoryWarning();
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void setNoninteractive(boolean z) {
        this.platformViewBinding.setNoninteractive(z);
    }

    @Override // com.yandex.runtime.view.PlatformView
    public void setOffscreenBufferEnabled(boolean z) {
        this.platformViewBinding.setOffscreenBufferEnabled(z);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.platformViewBinding.onTouchEvent(motionEvent)) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.width = i;
        this.height = i2;
        super.onSizeChanged(i, i2, i3, i4);
        this.platformViewBinding.onSizeChanged(this.width, this.height);
    }

    @Override // com.yandex.runtime.view.internal.PlatformGLRenderer.GLContextListener
    public void onContextCreated() {
        handlePreserveEGLContextOnPause();
        if (this.glDebugEnabled) {
            GLDebugBinding.enable();
        }
        this.platformViewBinding.onContextCreated();
    }

    @Override // com.yandex.runtime.view.internal.RenderDelegate
    public void setForceRender(boolean z) {
        throw new UnsupportedOperationException("Method PlatformGLSurface.setForceRender is not implemented");
    }

    private void handlePreserveEGLContextOnPause() {
        String strGlGetString = GLES20.glGetString(7936);
        if (strGlGetString == null || !strGlGetString.toUpperCase().contains("NVIDIA")) {
            try {
                GLSurfaceView.class.getMethod("setPreserveEGLContextOnPause", Boolean.TYPE).invoke(this, Boolean.TRUE);
            } catch (IllegalAccessException e) {
                Log.e(LOG_TAG, "error of calling setPreserveEGLContextOnPause", e);
            } catch (IllegalArgumentException e2) {
                Log.e(LOG_TAG, "error of calling setPreserveEGLContextOnPause", e2);
            } catch (NoSuchMethodException e3) {
                Log.e(LOG_TAG, "error of calling setPreserveEGLContextOnPause", e3);
            } catch (SecurityException e4) {
                Log.e(LOG_TAG, "error of calling setPreserveEGLContextOnPause", e4);
            } catch (InvocationTargetException e5) {
                Log.e(LOG_TAG, "error of calling setPreserveEGLContextOnPause", e5);
            }
        }
    }
}
