package androidx.camera.video.internal.encoder;

import android.util.Size;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_VideoEncoderConfig extends VideoEncoderConfig {
    private final int IFrameInterval;
    private final int bitrate;
    private final int captureFrameRate;
    private final int colorFormat;
    private final VideoEncoderDataSpace dataSpace;
    private final int encodeFrameRate;
    private final Timebase inputTimebase;
    private final String mimeType;
    private final int profile;
    private final Size resolution;

    private AutoValue_VideoEncoderConfig(String str, int i, Timebase timebase, Size size, int i2, VideoEncoderDataSpace videoEncoderDataSpace, int i3, int i4, int i5, int i6) {
        this.mimeType = str;
        this.profile = i;
        this.inputTimebase = timebase;
        this.resolution = size;
        this.colorFormat = i2;
        this.dataSpace = videoEncoderDataSpace;
        this.captureFrameRate = i3;
        this.encodeFrameRate = i4;
        this.IFrameInterval = i5;
        this.bitrate = i6;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig, androidx.camera.video.internal.encoder.EncoderConfig
    public String getMimeType() {
        return this.mimeType;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getProfile() {
        return this.profile;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig, androidx.camera.video.internal.encoder.EncoderConfig
    public Timebase getInputTimebase() {
        return this.inputTimebase;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public Size getResolution() {
        return this.resolution;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getColorFormat() {
        return this.colorFormat;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public VideoEncoderDataSpace getDataSpace() {
        return this.dataSpace;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getCaptureFrameRate() {
        return this.captureFrameRate;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getEncodeFrameRate() {
        return this.encodeFrameRate;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getIFrameInterval() {
        return this.IFrameInterval;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getBitrate() {
        return this.bitrate;
    }

    public String toString() {
        return "VideoEncoderConfig{mimeType=" + this.mimeType + ", profile=" + this.profile + ", inputTimebase=" + this.inputTimebase + ", resolution=" + this.resolution + ", colorFormat=" + this.colorFormat + ", dataSpace=" + this.dataSpace + ", captureFrameRate=" + this.captureFrameRate + ", encodeFrameRate=" + this.encodeFrameRate + ", IFrameInterval=" + this.IFrameInterval + ", bitrate=" + this.bitrate + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof VideoEncoderConfig) {
            VideoEncoderConfig videoEncoderConfig = (VideoEncoderConfig) obj;
            if (this.mimeType.equals(videoEncoderConfig.getMimeType()) && this.profile == videoEncoderConfig.getProfile() && this.inputTimebase.equals(videoEncoderConfig.getInputTimebase()) && this.resolution.equals(videoEncoderConfig.getResolution()) && this.colorFormat == videoEncoderConfig.getColorFormat() && this.dataSpace.equals(videoEncoderConfig.getDataSpace()) && this.captureFrameRate == videoEncoderConfig.getCaptureFrameRate() && this.encodeFrameRate == videoEncoderConfig.getEncodeFrameRate() && this.IFrameInterval == videoEncoderConfig.getIFrameInterval() && this.bitrate == videoEncoderConfig.getBitrate()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((((((this.mimeType.hashCode() ^ 1000003) * 1000003) ^ this.profile) * 1000003) ^ this.inputTimebase.hashCode()) * 1000003) ^ this.resolution.hashCode()) * 1000003) ^ this.colorFormat) * 1000003) ^ this.dataSpace.hashCode()) * 1000003) ^ this.captureFrameRate) * 1000003) ^ this.encodeFrameRate) * 1000003) ^ this.IFrameInterval) * 1000003) ^ this.bitrate;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public VideoEncoderConfig.Builder toBuilder() {
        return new Builder(this);
    }

    static final class Builder extends VideoEncoderConfig.Builder {
        private Integer IFrameInterval;
        private Integer bitrate;
        private Integer captureFrameRate;
        private Integer colorFormat;
        private VideoEncoderDataSpace dataSpace;
        private Integer encodeFrameRate;
        private Timebase inputTimebase;
        private String mimeType;
        private Integer profile;
        private Size resolution;

        Builder() {
        }

        private Builder(VideoEncoderConfig videoEncoderConfig) {
            this.mimeType = videoEncoderConfig.getMimeType();
            this.profile = Integer.valueOf(videoEncoderConfig.getProfile());
            this.inputTimebase = videoEncoderConfig.getInputTimebase();
            this.resolution = videoEncoderConfig.getResolution();
            this.colorFormat = Integer.valueOf(videoEncoderConfig.getColorFormat());
            this.dataSpace = videoEncoderConfig.getDataSpace();
            this.captureFrameRate = Integer.valueOf(videoEncoderConfig.getCaptureFrameRate());
            this.encodeFrameRate = Integer.valueOf(videoEncoderConfig.getEncodeFrameRate());
            this.IFrameInterval = Integer.valueOf(videoEncoderConfig.getIFrameInterval());
            this.bitrate = Integer.valueOf(videoEncoderConfig.getBitrate());
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setMimeType(String str) {
            if (str == null) {
                throw new NullPointerException("Null mimeType");
            }
            this.mimeType = str;
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setProfile(int i) {
            this.profile = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setInputTimebase(Timebase timebase) {
            if (timebase == null) {
                throw new NullPointerException("Null inputTimebase");
            }
            this.inputTimebase = timebase;
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setResolution(Size size) {
            if (size == null) {
                throw new NullPointerException("Null resolution");
            }
            this.resolution = size;
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setColorFormat(int i) {
            this.colorFormat = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setDataSpace(VideoEncoderDataSpace videoEncoderDataSpace) {
            if (videoEncoderDataSpace == null) {
                throw new NullPointerException("Null dataSpace");
            }
            this.dataSpace = videoEncoderDataSpace;
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setCaptureFrameRate(int i) {
            this.captureFrameRate = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setEncodeFrameRate(int i) {
            this.encodeFrameRate = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setIFrameInterval(int i) {
            this.IFrameInterval = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setBitrate(int i) {
            this.bitrate = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig build() {
            String str = this.mimeType;
            String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            if (str == null) {
                str2 = _UrlKt.FRAGMENT_ENCODE_SET + " mimeType";
            }
            if (this.profile == null) {
                str2 = str2 + " profile";
            }
            if (this.inputTimebase == null) {
                str2 = str2 + " inputTimebase";
            }
            if (this.resolution == null) {
                str2 = str2 + " resolution";
            }
            if (this.colorFormat == null) {
                str2 = str2 + " colorFormat";
            }
            if (this.dataSpace == null) {
                str2 = str2 + " dataSpace";
            }
            if (this.captureFrameRate == null) {
                str2 = str2 + " captureFrameRate";
            }
            if (this.encodeFrameRate == null) {
                str2 = str2 + " encodeFrameRate";
            }
            if (this.IFrameInterval == null) {
                str2 = str2 + " IFrameInterval";
            }
            if (this.bitrate == null) {
                str2 = str2 + " bitrate";
            }
            if (!str2.isEmpty()) {
                throw new IllegalStateException("Missing required properties:" + str2);
            }
            return new AutoValue_VideoEncoderConfig(this.mimeType, this.profile.intValue(), this.inputTimebase, this.resolution, this.colorFormat.intValue(), this.dataSpace, this.captureFrameRate.intValue(), this.encodeFrameRate.intValue(), this.IFrameInterval.intValue(), this.bitrate.intValue());
        }
    }
}
