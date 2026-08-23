package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
public interface VideoDecoderFactory {
    @CalledByNative
    VideoDecoder createDecoder(VideoCodecInfo videoCodecInfo);

    @CalledByNative
    VideoCodecInfo[] getSupportedCodecs();

    /* JADX INFO: renamed from: org.webrtc.VideoDecoderFactory$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static VideoCodecInfo[] $default$getSupportedCodecs(VideoDecoderFactory videoDecoderFactory) {
            return new VideoCodecInfo[0];
        }
    }
}
