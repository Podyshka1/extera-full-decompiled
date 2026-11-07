package org.webrtc;

/* JADX INFO: loaded from: classes8.dex */
class WebRtcClassLoader {
    @CalledByNative
    public static Object getClassLoader() {
        ClassLoader classLoader = WebRtcClassLoader.class.getClassLoader();
        if (classLoader != null) {
            return classLoader;
        }
        GlShader$$ExternalSyntheticBUOutline1.m1109m("Failed to get WebRTC class loader.");
        return null;
    }
}
