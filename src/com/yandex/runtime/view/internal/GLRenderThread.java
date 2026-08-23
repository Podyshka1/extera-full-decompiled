package com.yandex.runtime.view.internal;

import android.graphics.Rect;
import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes5.dex */
class GLRenderThread extends Thread {
    private EGLConfigChooserImpl configChooser;
    private EGL10 egl;
    private EGLConfig eglConfig;
    private EGLContext eglContext;
    private EGLDisplay eglDisplay;
    private EGLSurface eglSurface;
    private boolean forceRender;

    /* JADX INFO: renamed from: gl */
    private GL10 f626gl;
    private GLContextFactory glContextFactory;
    private Rect newViewport;
    private boolean paused;
    private GLSurfaceView.Renderer renderer;
    private boolean requested;
    private boolean stopped;
    private Object surface;

    GLRenderThread(Object obj, EGLConfigChooserImpl eGLConfigChooserImpl, GLContextFactory gLContextFactory, GLSurfaceView.Renderer renderer) {
        super("YMK_RenderThread");
        this.stopped = false;
        this.requested = false;
        this.paused = false;
        this.forceRender = false;
        this.newViewport = null;
        this.surface = obj;
        this.configChooser = eGLConfigChooserImpl;
        this.glContextFactory = gLContextFactory;
        this.renderer = renderer;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001c A[Catch: all -> 0x0016, TRY_LEAVE, TryCatch #0 {all -> 0x0016, blocks: (B:4:0x000d, B:6:0x0011, B:13:0x001c, B:15:0x0020, B:17:0x0024, B:19:0x0028, B:23:0x002e, B:25:0x0032, B:27:0x0036, B:28:0x004a, B:29:0x004c, B:11:0x0018), top: B:36:0x000d }] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        boolean z;
        boolean z2;
        Rect rect;
        initGL();
        this.renderer.onSurfaceCreated(this.f626gl, this.eglConfig);
        while (true) {
            synchronized (this) {
                while (true) {
                    try {
                        z = this.paused;
                        if (!z || this.forceRender) {
                            if (!this.requested) {
                                if (this.stopped) {
                                    break;
                                } else {
                                    try {
                                        wait();
                                    } catch (InterruptedException unused) {
                                    }
                                }
                            } else {
                                break;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (!this.stopped) {
                    this.requested = false;
                    if (!z && (rect = this.newViewport) != null) {
                        this.renderer.onSurfaceChanged(this.f626gl, rect.width(), this.newViewport.height());
                        this.newViewport = null;
                    }
                    z2 = this.paused;
                } else {
                    finishGL();
                    return;
                }
            }
            this.renderer.onDrawFrame(this.f626gl);
            if (!z2) {
                this.egl.eglSwapBuffers(this.eglDisplay, this.eglSurface);
            }
        }
    }

    public synchronized void requestRender() {
        try {
            if (!this.paused || this.forceRender) {
                this.requested = true;
                notifyAll();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void onPause() {
        this.paused = true;
    }

    public synchronized void onResume() {
        this.paused = false;
        this.requested = true;
        notifyAll();
    }

    public synchronized void setForceRender(boolean z) {
        this.forceRender = z;
    }

    public synchronized void onSizeChanged(int i, int i2) {
        this.newViewport = new Rect(0, 0, i, i2);
        requestRender();
    }

    public synchronized void finish() {
        this.stopped = true;
        notifyAll();
    }

    private void initGL() {
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.egl = egl10;
        EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.eglDisplay = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
            throw new RuntimeException("eglGetDisplay() failed");
        }
        this.egl.eglInitialize(eGLDisplayEglGetDisplay, new int[2]);
        checkEglError("eglInitialize() failed");
        EGLConfig eGLConfigChooseConfig = this.configChooser.chooseConfig(this.egl, this.eglDisplay);
        this.eglConfig = eGLConfigChooseConfig;
        this.eglContext = this.glContextFactory.createContext(this.egl, this.eglDisplay, eGLConfigChooseConfig);
        this.eglSurface = this.egl.eglCreateWindowSurface(this.eglDisplay, this.eglConfig, this.surface, null);
        checkEglError("eglCreateWindowSurface() failed");
        EGL10 egl102 = this.egl;
        EGLDisplay eGLDisplay = this.eglDisplay;
        EGLSurface eGLSurface = this.eglSurface;
        egl102.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext);
        checkEglError("eglMakeCurrent() failed");
        this.f626gl = (GL10) this.eglContext.getGL();
    }

    private void finishGL() {
        EGL10 egl10 = this.egl;
        EGLDisplay eGLDisplay = this.eglDisplay;
        EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
        egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
        checkEglError("eglMakeCurrent() failed");
        this.glContextFactory.destroyContext(this.egl, this.eglDisplay, this.eglContext);
        this.egl.eglDestroySurface(this.eglDisplay, this.eglSurface);
        checkEglError("eglDestroySurface() failed");
    }

    private void checkEglError(String str) {
        int iEglGetError = this.egl.eglGetError();
        if (iEglGetError == 12288) {
            return;
        }
        throw new RuntimeException(str + "; Got EGL error " + iEglGetError);
    }
}
