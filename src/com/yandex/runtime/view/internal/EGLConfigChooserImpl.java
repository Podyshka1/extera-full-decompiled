package com.yandex.runtime.view.internal;

import android.opengl.GLSurfaceView;
import com.yandex.runtime.logging.Logger;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public class EGLConfigChooserImpl implements GLSurfaceView.EGLConfigChooser, GLVersionProvider {
    private static final int EGL_OPENGL_ES3_BIT_KHR = 64;
    private int depthBits = 24;

    @Override // android.opengl.GLSurfaceView.EGLConfigChooser
    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        EGLConfig eGLConfigTryChooseConfig = tryChooseConfig(egl10, eGLDisplay, getAttrs(true));
        if (eGLConfigTryChooseConfig == null) {
            Logger.warn("Could not choose OpenGl ES Version 3 config with 24-bit depth buffer; Got EGL error " + egl10.eglGetError());
            eGLConfigTryChooseConfig = tryChooseConfig(egl10, eGLDisplay, getAttrs(false));
            if (eGLConfigTryChooseConfig == null) {
                GlShader$$ExternalSyntheticBUOutline2.m967m("eglChooseConfig() failed; Got EGL error ", egl10.eglGetError());
                return null;
            }
        }
        this.depthBits = getConfigDepthBits(egl10, eGLDisplay, eGLConfigTryChooseConfig);
        return eGLConfigTryChooseConfig;
    }

    @Override // com.yandex.runtime.view.internal.GLVersionProvider
    public int getDepthBits() {
        return this.depthBits;
    }

    private static EGLConfig tryChooseConfig(EGL10 egl10, EGLDisplay eGLDisplay, int[] iArr) {
        int[] iArr2 = new int[1];
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!egl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr, 1, iArr2) || iArr2[0] <= 0) {
            return null;
        }
        return eGLConfigArr[0];
    }

    private static int[] getAttrs(boolean z) {
        return new int[]{12352, 64, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, z ? 24 : 16, 12326, 8, 12344};
    }

    private static int getConfigDepthBits(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
        int[] iArr = new int[1];
        if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, 12325, iArr)) {
            return iArr[0];
        }
        Logger.warn("Failed to get EGL config depth buffer bits, assuming worst case of 16 bits");
        return 16;
    }
}
