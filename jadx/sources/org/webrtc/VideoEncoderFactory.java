package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
public interface VideoEncoderFactory {
    @CalledByNative
    VideoEncoder createEncoder(VideoCodecInfo videoCodecInfo);

    @CalledByNative
    VideoEncoderSelector getEncoderSelector();

    @CalledByNative
    VideoCodecInfo[] getImplementations();

    @CalledByNative
    VideoCodecInfo[] getSupportedCodecs();

    public interface VideoEncoderSelector {
        @CalledByNative("VideoEncoderSelector")
        VideoCodecInfo onAvailableBitrate(int i);

        @CalledByNative("VideoEncoderSelector")
        void onCurrentEncoder(VideoCodecInfo videoCodecInfo);

        @CalledByNative("VideoEncoderSelector")
        VideoCodecInfo onEncoderBroken();

        @CalledByNative("VideoEncoderSelector")
        VideoCodecInfo onResolutionChange(int i, int i2);

        /* JADX INFO: renamed from: org.webrtc.VideoEncoderFactory$VideoEncoderSelector$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static VideoCodecInfo $default$onResolutionChange(VideoEncoderSelector videoEncoderSelector, int i, int i2) {
                return null;
            }
        }
    }

    /* JADX INFO: renamed from: org.webrtc.VideoEncoderFactory$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static VideoEncoderSelector $default$getEncoderSelector(VideoEncoderFactory videoEncoderFactory) {
            return null;
        }
    }
}
