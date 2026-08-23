package com.yandex.runtime.view.internal;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import com.yandex.runtime.graphics.GLContextVersionBinding;
import com.yandex.runtime.logging.Logger;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public class GLContextFactory implements GLSurfaceView.EGLContextFactory {
    private static final int EGL_CONTEXT_CLIENT_VERSION = 12440;
    private static final int EGL_CONTEXT_FLAGS_KHR = 12540;
    private static final int EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR = 1;
    private final boolean debugEnabled;
    private final GLVersionProvider glVersionProvider;

    private int[] attributes(int i, boolean z) {
        if (z) {
            return new int[]{EGL_CONTEXT_CLIENT_VERSION, i, EGL_CONTEXT_FLAGS_KHR, 1, 12344};
        }
        return new int[]{EGL_CONTEXT_CLIENT_VERSION, i, 12344};
    }

    public GLContextFactory(boolean z, GLVersionProvider gLVersionProvider) {
        this.debugEnabled = z;
        this.glVersionProvider = gLVersionProvider;
    }

    private EGLContext tryCreateContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, boolean z) {
        Logger.info("Creating OpenGl ES context version 3, depth bits " + String.valueOf(this.glVersionProvider.getDepthBits()));
        return egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, attributes(3, z));
    }

    @Override // android.opengl.GLSurfaceView.EGLContextFactory
    public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
        EGLContext eGLContextTryCreateContext;
        boolean z = this.debugEnabled;
        EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
        if (z) {
            Logger.warn("Trying to create debug gl context");
            eGLContextTryCreateContext = tryCreateContext(egl10, eGLDisplay, eGLConfig, true);
            if (eGLContextTryCreateContext == null || eGLContextTryCreateContext == eGLContext) {
                Logger.warn("Could not create debug gl context; Got EGL error " + egl10.eglGetError());
            }
        } else {
            eGLContextTryCreateContext = null;
        }
        if ((eGLContextTryCreateContext == null || eGLContextTryCreateContext == eGLContext) && ((eGLContextTryCreateContext = tryCreateContext(egl10, eGLDisplay, eGLConfig, false)) == null || eGLContextTryCreateContext == eGLContext)) {
            GlShader$$ExternalSyntheticBUOutline2.m967m("eglCreateContext() failed; Got EGL error ", egl10.eglGetError());
            return null;
        }
        EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
        egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContextTryCreateContext);
        int[] iArr = new int[1];
        GLES20.glGetIntegerv(33308, iArr, 0);
        int i = iArr[0];
        int depthBits = this.glVersionProvider.getDepthBits();
        Logger.info("Created OpenGl ES context version 3." + String.valueOf(i));
        GLContextVersionBinding.setDepthBits(depthBits);
        return eGLContextTryCreateContext;
    }

    @Override // android.opengl.GLSurfaceView.EGLContextFactory
    public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
        if (egl10.eglDestroyContext(eGLDisplay, eGLContext)) {
            return;
        }
        GlShader$$ExternalSyntheticBUOutline2.m967m("eglDestroyContext() failed; Got EGL error ", egl10.eglGetError());
    }
}
