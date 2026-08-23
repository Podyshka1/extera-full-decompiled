package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
public interface VideoDecoder {

    public interface Callback {
        void onDecodedFrame(VideoFrame videoFrame, Integer num, Integer num2);
    }

    @CalledByNative
    long createNative(long j);

    @CalledByNative
    VideoCodecStatus decode(EncodedImage encodedImage, DecodeInfo decodeInfo);

    @CalledByNative
    String getImplementationName();

    @CalledByNative
    VideoCodecStatus initDecode(Settings settings, Callback callback);

    @CalledByNative
    VideoCodecStatus release();

    public static class Settings {
        public final int height;
        public final int numberOfCores;
        public final int width;

        @CalledByNative("Settings")
        public Settings(int i, int i2, int i3) {
            this.numberOfCores = i;
            this.width = i2;
            this.height = i3;
        }
    }

    public static class DecodeInfo {
        public final boolean isMissingFrames;
        public final long renderTimeMs;

        public DecodeInfo(boolean z, long j) {
            this.isMissingFrames = z;
            this.renderTimeMs = j;
        }
    }

    /* JADX INFO: renamed from: org.webrtc.VideoDecoder$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static long $default$createNative(VideoDecoder videoDecoder, long j) {
            return 0L;
        }
    }
}
