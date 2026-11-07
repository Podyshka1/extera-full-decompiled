package org.webrtc;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.mvel2.ast.Instance$$ExternalSyntheticBUOutline0;
import org.webrtc.EglBase;
import org.webrtc.EglBase10;

/* JADX INFO: loaded from: classes6.dex */
class EglBase10Impl implements EglBase10 {
    private static final int EGL_CONTEXT_CLIENT_VERSION = 12440;
    private static final String TAG = "EglBase10Impl";
    private final EGL10 egl;
    private EGLSurface eglBackgroundSurface;
    private EGLConfig eglConfig;
    private EGLContext eglContext;
    private EGLDisplay eglDisplay;
    private EGLSurface eglSurface;

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeGetCurrentNativeEGLContext();

    public static class Context implements EglBase10.Context {
        private final EGL10 egl;
        private final EGLContext eglContext;
        private final EGLConfig eglContextConfig;

        @Override // org.webrtc.EglBase10.Context
        public EGLContext getRawContext() {
            return this.eglContext;
        }

        @Override // org.webrtc.EglBase.Context
        public long getNativeEglContext() {
            EGLContext eGLContextEglGetCurrentContext = this.egl.eglGetCurrentContext();
            EGLDisplay eGLDisplayEglGetCurrentDisplay = this.egl.eglGetCurrentDisplay();
            EGLSurface eGLSurfaceEglGetCurrentSurface = this.egl.eglGetCurrentSurface(12377);
            EGLSurface eGLSurfaceEglGetCurrentSurface2 = this.egl.eglGetCurrentSurface(12378);
            if (eGLDisplayEglGetCurrentDisplay == EGL10.EGL_NO_DISPLAY) {
                eGLDisplayEglGetCurrentDisplay = this.egl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            }
            EGLSurface eGLSurfaceEglCreatePbufferSurface = null;
            try {
                if (eGLContextEglGetCurrentContext != this.eglContext) {
                    eGLSurfaceEglCreatePbufferSurface = this.egl.eglCreatePbufferSurface(eGLDisplayEglGetCurrentDisplay, this.eglContextConfig, new int[]{12375, 1, 12374, 1, 12344});
                    if (!this.egl.eglMakeCurrent(eGLDisplayEglGetCurrentDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, this.eglContext)) {
                        throw new RuntimeException("Failed to make temporary EGL surface active: " + this.egl.eglGetError());
                    }
                }
                long jNativeGetCurrentNativeEGLContext = EglBase10Impl.nativeGetCurrentNativeEGLContext();
                if (eGLSurfaceEglCreatePbufferSurface != null) {
                    this.egl.eglMakeCurrent(eGLDisplayEglGetCurrentDisplay, eGLSurfaceEglGetCurrentSurface, eGLSurfaceEglGetCurrentSurface2, eGLContextEglGetCurrentContext);
                    this.egl.eglDestroySurface(eGLDisplayEglGetCurrentDisplay, eGLSurfaceEglCreatePbufferSurface);
                }
                return jNativeGetCurrentNativeEGLContext;
            } catch (Throwable th) {
                if (0 != 0) {
                    this.egl.eglMakeCurrent(eGLDisplayEglGetCurrentDisplay, eGLSurfaceEglGetCurrentSurface, eGLSurfaceEglGetCurrentSurface2, eGLContextEglGetCurrentContext);
                    this.egl.eglDestroySurface(eGLDisplayEglGetCurrentDisplay, null);
                }
                throw th;
            }
        }

        public Context(EGL10 egl10, EGLContext eGLContext, EGLConfig eGLConfig) {
            this.egl = egl10;
            this.eglContext = eGLContext;
            this.eglContextConfig = eGLConfig;
        }
    }

    public EglBase10Impl(EGLContext eGLContext, int[] iArr) {
        EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
        this.eglSurface = eGLSurface;
        this.eglBackgroundSurface = eGLSurface;
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.egl = egl10;
        EGLDisplay eglDisplay = getEglDisplay();
        this.eglDisplay = eglDisplay;
        this.eglConfig = getEglConfig(egl10, eglDisplay, iArr);
        int openGlesVersionFromConfig = EglBase.getOpenGlesVersionFromConfig(iArr);
        Logging.m1058d(TAG, "Using OpenGL ES version " + openGlesVersionFromConfig);
        this.eglContext = createEglContext(eGLContext, this.eglDisplay, this.eglConfig, openGlesVersionFromConfig);
    }

    @Override // org.webrtc.EglBase
    public void createSurface(Surface surface) {
        createSurfaceInternal(new FakeSurfaceHolder(surface), false);
    }

    @Override // org.webrtc.EglBase
    public void createSurface(SurfaceTexture surfaceTexture) {
        createSurfaceInternal(surfaceTexture, false);
    }

    private void createSurfaceInternal(Object obj, boolean z) {
        if (!(obj instanceof SurfaceHolder) && !(obj instanceof SurfaceTexture)) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Input must be either a SurfaceHolder or SurfaceTexture");
            return;
        }
        checkIsNotReleased();
        EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
        if (z) {
            if (this.eglBackgroundSurface != eGLSurface) {
                GlShader$$ExternalSyntheticBUOutline1.m1056m("Already has an EGLSurface");
                return;
            }
            EGLSurface eGLSurfaceEglCreateWindowSurface = this.egl.eglCreateWindowSurface(this.eglDisplay, this.eglConfig, obj, new int[]{12344});
            this.eglBackgroundSurface = eGLSurfaceEglCreateWindowSurface;
            if (eGLSurfaceEglCreateWindowSurface != eGLSurface) {
                return;
            }
            Instance$$ExternalSyntheticBUOutline0.m961m("Failed to create window surface: 0x", Integer.toHexString(this.egl.eglGetError()));
            return;
        }
        if (this.eglSurface != eGLSurface) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("Already has an EGLSurface");
            return;
        }
        EGLSurface eGLSurfaceEglCreateWindowSurface2 = this.egl.eglCreateWindowSurface(this.eglDisplay, this.eglConfig, obj, new int[]{12344});
        this.eglSurface = eGLSurfaceEglCreateWindowSurface2;
        if (eGLSurfaceEglCreateWindowSurface2 != eGLSurface) {
            return;
        }
        Instance$$ExternalSyntheticBUOutline0.m961m("Failed to create window surface: 0x", Integer.toHexString(this.egl.eglGetError()));
    }

    @Override // org.webrtc.EglBase
    public void createDummyPbufferSurface() {
        createPbufferSurface(1, 1);
    }

    @Override // org.webrtc.EglBase
    public void createPbufferSurface(int i, int i2) {
        checkIsNotReleased();
        EGLSurface eGLSurface = this.eglSurface;
        EGLSurface eGLSurface2 = EGL10.EGL_NO_SURFACE;
        if (eGLSurface != eGLSurface2) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("Already has an EGLSurface");
            return;
        }
        EGLSurface eGLSurfaceEglCreatePbufferSurface = this.egl.eglCreatePbufferSurface(this.eglDisplay, this.eglConfig, new int[]{12375, i, 12374, i2, 12344});
        this.eglSurface = eGLSurfaceEglCreatePbufferSurface;
        if (eGLSurfaceEglCreatePbufferSurface != eGLSurface2) {
            return;
        }
        throw new RuntimeException("Failed to create pixel buffer surface with size " + i + "x" + i2 + ": 0x" + Integer.toHexString(this.egl.eglGetError()));
    }

    @Override // org.webrtc.EglBase
    public EglBase.Context getEglBaseContext() {
        return new Context(this.egl, this.eglContext, this.eglConfig);
    }

    @Override // org.webrtc.EglBase
    public boolean hasSurface() {
        return this.eglSurface != EGL10.EGL_NO_SURFACE;
    }

    @Override // org.webrtc.EglBase
    public int surfaceWidth() {
        int[] iArr = new int[1];
        this.egl.eglQuerySurface(this.eglDisplay, this.eglSurface, 12375, iArr);
        return iArr[0];
    }

    @Override // org.webrtc.EglBase
    public int surfaceHeight() {
        int[] iArr = new int[1];
        this.egl.eglQuerySurface(this.eglDisplay, this.eglSurface, 12374, iArr);
        return iArr[0];
    }

    @Override // org.webrtc.EglBase
    public void releaseSurface(boolean z) {
        EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
        if (z) {
            EGLSurface eGLSurface2 = this.eglBackgroundSurface;
            if (eGLSurface2 != eGLSurface) {
                this.egl.eglDestroySurface(this.eglDisplay, eGLSurface2);
                this.eglBackgroundSurface = eGLSurface;
                return;
            }
            return;
        }
        EGLSurface eGLSurface3 = this.eglSurface;
        if (eGLSurface3 != eGLSurface) {
            this.egl.eglDestroySurface(this.eglDisplay, eGLSurface3);
            this.eglSurface = eGLSurface;
        }
    }

    private void checkIsNotReleased() {
        if (this.eglDisplay == EGL10.EGL_NO_DISPLAY || this.eglContext == EGL10.EGL_NO_CONTEXT || this.eglConfig == null) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("This object has been released");
        }
    }

    @Override // org.webrtc.EglBase
    public void release() {
        checkIsNotReleased();
        releaseSurface(false);
        releaseSurface(true);
        detachCurrent();
        this.egl.eglDestroyContext(this.eglDisplay, this.eglContext);
        this.egl.eglTerminate(this.eglDisplay);
        this.eglContext = EGL10.EGL_NO_CONTEXT;
        this.eglDisplay = EGL10.EGL_NO_DISPLAY;
        this.eglConfig = null;
    }

    @Override // org.webrtc.EglBase
    public void makeCurrent() {
        checkIsNotReleased();
        if (this.eglSurface == EGL10.EGL_NO_SURFACE) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("No EGLSurface - can't make current");
            return;
        }
        synchronized (EglBase.lock) {
            try {
                EGL10 egl10 = this.egl;
                EGLDisplay eGLDisplay = this.eglDisplay;
                EGLSurface eGLSurface = this.eglSurface;
                if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext)) {
                    throw new RuntimeException("eglMakeCurrent failed: 0x" + Integer.toHexString(this.egl.eglGetError()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // org.webrtc.EglBase
    public void detachCurrent() {
        synchronized (EglBase.lock) {
            try {
                EGL10 egl10 = this.egl;
                EGLDisplay eGLDisplay = this.eglDisplay;
                EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
                if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT)) {
                    throw new RuntimeException("eglDetachCurrent failed: 0x" + Integer.toHexString(this.egl.eglGetError()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // org.webrtc.EglBase
    public void swapBuffers(boolean z) {
        EGLSurface eGLSurface = z ? this.eglBackgroundSurface : this.eglSurface;
        checkIsNotReleased();
        if (eGLSurface == EGL10.EGL_NO_SURFACE) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("No EGLSurface - can't swap buffers");
        } else {
            synchronized (EglBase.lock) {
                this.egl.eglSwapBuffers(this.eglDisplay, eGLSurface);
            }
        }
    }

    @Override // org.webrtc.EglBase
    public void swapBuffers(long j, boolean z) {
        swapBuffers(z);
    }

    @Override // org.webrtc.EglBase
    public void createBackgroundSurface(SurfaceTexture surfaceTexture) {
        createSurfaceInternal(surfaceTexture, true);
    }

    @Override // org.webrtc.EglBase
    public void makeBackgroundCurrent() {
        checkIsNotReleased();
        if (this.eglBackgroundSurface == EGL10.EGL_NO_SURFACE) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("No EGLSurface - can't make current");
            return;
        }
        synchronized (EglBase.lock) {
            try {
                EGL10 egl10 = this.egl;
                EGLDisplay eGLDisplay = this.eglDisplay;
                EGLSurface eGLSurface = this.eglBackgroundSurface;
                if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext)) {
                    throw new RuntimeException("eglMakeCurrent failed: 0x" + Integer.toHexString(this.egl.eglGetError()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // org.webrtc.EglBase
    public boolean hasBackgroundSurface() {
        return this.eglBackgroundSurface != EGL10.EGL_NO_SURFACE;
    }

    private EGLDisplay getEglDisplay() {
        EGLDisplay eGLDisplayEglGetDisplay = this.egl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        EGL10 egl10 = this.egl;
        if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
            Instance$$ExternalSyntheticBUOutline0.m961m("Unable to get EGL10 display: 0x", Integer.toHexString(egl10.eglGetError()));
            return null;
        }
        if (egl10.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
            return eGLDisplayEglGetDisplay;
        }
        Instance$$ExternalSyntheticBUOutline0.m961m("Unable to initialize EGL10: 0x", Integer.toHexString(this.egl.eglGetError()));
        return null;
    }

    private static EGLConfig getEglConfig(EGL10 egl10, EGLDisplay eGLDisplay, int[] iArr) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr2 = new int[1];
        if (!egl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr, 1, iArr2)) {
            Instance$$ExternalSyntheticBUOutline0.m961m("eglChooseConfig failed: 0x", Integer.toHexString(egl10.eglGetError()));
            return null;
        }
        if (iArr2[0] <= 0) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("Unable to find any matching EGL config");
            return null;
        }
        EGLConfig eGLConfig = eGLConfigArr[0];
        if (eGLConfig != null) {
            return eGLConfig;
        }
        GlShader$$ExternalSyntheticBUOutline1.m1056m("eglChooseConfig returned null");
        return null;
    }

    private EGLContext createEglContext(EGLContext eGLContext, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i) {
        EGLContext eGLContextEglCreateContext;
        if (eGLContext != null && eGLContext == EGL10.EGL_NO_CONTEXT) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("Invalid sharedContext");
            return null;
        }
        int[] iArr = {EGL_CONTEXT_CLIENT_VERSION, i, 12344};
        if (eGLContext == null) {
            eGLContext = EGL10.EGL_NO_CONTEXT;
        }
        synchronized (EglBase.lock) {
            eGLContextEglCreateContext = this.egl.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
        }
        if (eGLContextEglCreateContext != EGL10.EGL_NO_CONTEXT) {
            return eGLContextEglCreateContext;
        }
        Instance$$ExternalSyntheticBUOutline0.m961m("Failed to create EGL context: 0x", Integer.toHexString(this.egl.eglGetError()));
        return null;
    }

    public class FakeSurfaceHolder implements SurfaceHolder {
        private final Surface surface;

        @Override // android.view.SurfaceHolder
        public void addCallback(SurfaceHolder.Callback callback) {
        }

        @Override // android.view.SurfaceHolder
        public Rect getSurfaceFrame() {
            return null;
        }

        @Override // android.view.SurfaceHolder
        public boolean isCreating() {
            return false;
        }

        @Override // android.view.SurfaceHolder
        public Canvas lockCanvas() {
            return null;
        }

        @Override // android.view.SurfaceHolder
        public Canvas lockCanvas(Rect rect) {
            return null;
        }

        @Override // android.view.SurfaceHolder
        public void removeCallback(SurfaceHolder.Callback callback) {
        }

        @Override // android.view.SurfaceHolder
        public void setFixedSize(int i, int i2) {
        }

        @Override // android.view.SurfaceHolder
        public void setFormat(int i) {
        }

        @Override // android.view.SurfaceHolder
        public void setKeepScreenOn(boolean z) {
        }

        @Override // android.view.SurfaceHolder
        public void setSizeFromLayout() {
        }

        @Override // android.view.SurfaceHolder
        @Deprecated
        public void setType(int i) {
        }

        @Override // android.view.SurfaceHolder
        public void unlockCanvasAndPost(Canvas canvas) {
        }

        public FakeSurfaceHolder(Surface surface) {
            this.surface = surface;
        }

        @Override // android.view.SurfaceHolder
        public Surface getSurface() {
            return this.surface;
        }
    }
}
