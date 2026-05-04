package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
public class LibvpxVp9Decoder extends WrappedNativeVideoDecoder {
    static native long nativeCreateDecoder();

    static native boolean nativeIsSupported();

    @Override // org.webrtc.WrappedNativeVideoDecoder, org.webrtc.VideoDecoder
    public long createNative(long j) {
        return nativeCreateDecoder();
    }
}
