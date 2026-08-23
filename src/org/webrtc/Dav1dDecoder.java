package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
public class Dav1dDecoder extends WrappedNativeVideoDecoder {
    static native long nativeCreateDecoder();

    @Override // org.webrtc.WrappedNativeVideoDecoder, org.webrtc.VideoDecoder
    public long createNative(long j) {
        return nativeCreateDecoder();
    }
}
