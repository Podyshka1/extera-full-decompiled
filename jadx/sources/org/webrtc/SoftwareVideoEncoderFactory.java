package org.webrtc;

import java.util.List;
import org.webrtc.VideoEncoderFactory;

/* JADX INFO: loaded from: classes7.dex */
public class SoftwareVideoEncoderFactory implements VideoEncoderFactory {
    private static final String TAG = "SoftwareVideoEncoderFactory";
    private final long nativeFactory = nativeCreateFactory();

    private static native long nativeCreateEncoder(long j, VideoCodecInfo videoCodecInfo);

    private static native long nativeCreateFactory();

    private static native List<VideoCodecInfo> nativeGetSupportedCodecs(long j);

    @Override // org.webrtc.VideoEncoderFactory
    public /* synthetic */ VideoEncoderFactory.VideoEncoderSelector getEncoderSelector() {
        return VideoEncoderFactory.CC.$default$getEncoderSelector(this);
    }

    @Override // org.webrtc.VideoEncoderFactory
    public /* synthetic */ VideoCodecInfo[] getImplementations() {
        return getSupportedCodecs();
    }

    @Override // org.webrtc.VideoEncoderFactory
    public VideoEncoder createEncoder(VideoCodecInfo videoCodecInfo) {
        final long jNativeCreateEncoder = nativeCreateEncoder(this.nativeFactory, videoCodecInfo);
        if (jNativeCreateEncoder == 0) {
            Logging.m1358w(TAG, "Trying to create encoder for unsupported format. " + videoCodecInfo);
            return null;
        }
        return new WrappedNativeVideoEncoder() { // from class: org.webrtc.SoftwareVideoEncoderFactory.1
            @Override // org.webrtc.WrappedNativeVideoEncoder, org.webrtc.VideoEncoder
            public boolean isHardwareEncoder() {
                return false;
            }

            @Override // org.webrtc.WrappedNativeVideoEncoder, org.webrtc.VideoEncoder
            public long createNativeVideoEncoder() {
                return jNativeCreateEncoder;
            }
        };
    }

    @Override // org.webrtc.VideoEncoderFactory
    public VideoCodecInfo[] getSupportedCodecs() {
        return (VideoCodecInfo[]) nativeGetSupportedCodecs(this.nativeFactory).toArray(new VideoCodecInfo[0]);
    }
}
