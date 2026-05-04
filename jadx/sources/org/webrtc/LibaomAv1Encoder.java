package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
public class LibaomAv1Encoder extends WrappedNativeVideoEncoder {
    static native long nativeCreateEncoder();

    @Override // org.webrtc.WrappedNativeVideoEncoder, org.webrtc.VideoEncoder
    public boolean isHardwareEncoder() {
        return false;
    }

    @Override // org.webrtc.WrappedNativeVideoEncoder, org.webrtc.VideoEncoder
    public long createNativeVideoEncoder() {
        return nativeCreateEncoder();
    }
}
