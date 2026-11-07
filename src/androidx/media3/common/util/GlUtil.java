package androidx.media3.common.util;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLDisplay;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.os.Build;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class GlUtil {
    public static final int[] EGL_CONFIG_ATTRIBUTES_RGBA_8888 = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344};
    public static final int[] EGL_CONFIG_ATTRIBUTES_RGBA_1010102 = {12352, 4, 12324, 10, 12323, 10, 12322, 10, 12321, 2, 12325, 0, 12326, 0, 12344};
    private static final int[] EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ = {12445, 13120, 12344, 12344};
    private static final int[] EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_HLG = {12445, 13632, 12344, 12344};
    private static final int[] EGL_WINDOW_SURFACE_ATTRIBUTES_NONE = {12344};

    public static final class GlException extends Exception {
        public final ImmutableList<Integer> errorCodes;

        public GlException(String str) {
            this(str, ImmutableList.of());
        }

        public GlException(String str, List<Integer> list) {
            super(str);
            this.errorCodes = ImmutableList.copyOf((Collection) list);
        }
    }

    public static boolean isProtectedContentExtensionSupported(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i < 26 && ("samsung".equals(Build.MANUFACTURER) || "XT1650".equals(Build.MODEL))) {
            return false;
        }
        if (i >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
            return isExtensionSupported("EGL_EXT_protected_content");
        }
        return false;
    }

    public static boolean isSurfacelessContextExtensionSupported() {
        return isExtensionSupported("EGL_KHR_surfaceless_context");
    }

    public static boolean isColorTransferSupported(int i) {
        if (i == 6) {
            return isBt2020PqExtensionSupported();
        }
        if (i == 7) {
            return isBt2020HlgExtensionSupported();
        }
        return true;
    }

    public static boolean isBt2020PqExtensionSupported() {
        return Build.VERSION.SDK_INT >= 33 && isExtensionSupported("EGL_EXT_gl_colorspace_bt2020_pq");
    }

    public static boolean isBt2020HlgExtensionSupported() {
        return isExtensionSupported("EGL_EXT_gl_colorspace_bt2020_hlg");
    }

    public static EGLDisplay getDefaultEglDisplay() throws GlException {
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        checkGlException(!eGLDisplayEglGetDisplay.equals(EGL14.EGL_NO_DISPLAY), "No EGL display.");
        checkGlException(EGL14.eglInitialize(eGLDisplayEglGetDisplay, new int[1], 0, new int[1], 0), "Error in eglInitialize.");
        checkEglException("Error in getDefaultEglDisplay");
        return eGLDisplayEglGetDisplay;
    }

    public static void checkGlError() throws GlException {
        StringBuilder sb = new StringBuilder();
        ImmutableList.Builder builder = new ImmutableList.Builder();
        boolean z = false;
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                break;
            }
            if (z) {
                sb.append('\n');
            }
            String strGluErrorString = GLU.gluErrorString(iGlGetError);
            if (strGluErrorString == null) {
                strGluErrorString = "error code: 0x" + Integer.toHexString(iGlGetError);
            }
            sb.append("glError: ");
            sb.append(strGluErrorString);
            builder.add(Integer.valueOf(iGlGetError));
            z = true;
        }
        if (z) {
            throw new GlException(sb.toString(), builder.build());
        }
    }

    public static void checkEglException(String str) throws GlException {
        int iEglGetError = EGL14.eglGetError();
        if (iEglGetError == 12288) {
            return;
        }
        throw new GlException(str + ", error code: 0x" + Integer.toHexString(iEglGetError), ImmutableList.of(Integer.valueOf(iEglGetError)));
    }

    public static void checkGlException(boolean z, String str) throws GlException {
        if (!z) {
            throw new GlException(str);
        }
    }

    private static boolean isExtensionSupported(String str) {
        String strEglQueryString = EGL14.eglQueryString(getDefaultEglDisplay(), 12373);
        return strEglQueryString != null && strEglQueryString.contains(str);
    }
}
