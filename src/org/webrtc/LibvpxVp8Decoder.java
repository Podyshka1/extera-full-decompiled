package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
public class LibvpxVp8Decoder extends WrappedNativeVideoDecoder {
    static native long nativeCreateDecoder(long j);

    @Override // org.webrtc.WrappedNativeVideoDecoder, org.webrtc.VideoDecoder
    public long createNative(long j) {
        return nativeCreateDecoder(j);
    }
}
