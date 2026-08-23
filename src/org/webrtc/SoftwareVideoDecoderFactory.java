package org.webrtc;

import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class SoftwareVideoDecoderFactory implements VideoDecoderFactory {
    private static final String TAG = "SoftwareVideoDecoderFactory";
    private final long nativeFactory = nativeCreateFactory();

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeCreate(long j, long j2, VideoCodecInfo videoCodecInfo);

    private static native long nativeCreateFactory();

    private static native List<VideoCodecInfo> nativeGetSupportedCodecs(long j);

    private static native boolean nativeIsSupported(long j, VideoCodecInfo videoCodecInfo);

    @Override // org.webrtc.VideoDecoderFactory
    public VideoDecoder createDecoder(final VideoCodecInfo videoCodecInfo) {
        if (!nativeIsSupported(this.nativeFactory, videoCodecInfo)) {
            Logging.m1358w(TAG, "Trying to create decoder for unsupported format. " + videoCodecInfo);
            return null;
        }
        return new WrappedNativeVideoDecoder() { // from class: org.webrtc.SoftwareVideoDecoderFactory.1
            @Override // org.webrtc.WrappedNativeVideoDecoder, org.webrtc.VideoDecoder
            public long createNative(long j) {
                return SoftwareVideoDecoderFactory.nativeCreate(SoftwareVideoDecoderFactory.this.nativeFactory, j, videoCodecInfo);
            }
        };
    }

    @Override // org.webrtc.VideoDecoderFactory
    public VideoCodecInfo[] getSupportedCodecs() {
        return (VideoCodecInfo[]) nativeGetSupportedCodecs(this.nativeFactory).toArray(new VideoCodecInfo[0]);
    }
}
