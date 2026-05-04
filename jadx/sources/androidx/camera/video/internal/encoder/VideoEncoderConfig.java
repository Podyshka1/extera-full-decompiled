package androidx.camera.video.internal.encoder;

import android.media.MediaFormat;
import android.util.Size;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.internal.encoder.AutoValue_VideoEncoderConfig;

/* JADX INFO: loaded from: classes4.dex */
public abstract class VideoEncoderConfig implements EncoderConfig {
    public abstract int getBitrate();

    public abstract int getCaptureFrameRate();

    public abstract int getColorFormat();

    public abstract VideoEncoderDataSpace getDataSpace();

    public abstract int getEncodeFrameRate();

    public abstract int getIFrameInterval();

    @Override // androidx.camera.video.internal.encoder.EncoderConfig
    public abstract Timebase getInputTimebase();

    @Override // androidx.camera.video.internal.encoder.EncoderConfig
    public abstract String getMimeType();

    public abstract int getProfile();

    public abstract Size getResolution();

    public abstract Builder toBuilder();

    VideoEncoderConfig() {
    }

    public static Builder builder() {
        return new AutoValue_VideoEncoderConfig.Builder().setProfile(-1).setIFrameInterval(1).setColorFormat(2130708361).setDataSpace(VideoEncoderDataSpace.ENCODER_DATA_SPACE_UNSPECIFIED);
    }

    @Override // androidx.camera.video.internal.encoder.EncoderConfig
    public MediaFormat toMediaFormat() {
        Size resolution = getResolution();
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(getMimeType(), resolution.getWidth(), resolution.getHeight());
        mediaFormatCreateVideoFormat.setInteger("color-format", getColorFormat());
        mediaFormatCreateVideoFormat.setInteger("bitrate", getBitrate());
        mediaFormatCreateVideoFormat.setInteger("frame-rate", getEncodeFrameRate());
        if (isSlowMotion()) {
            mediaFormatCreateVideoFormat.setInteger("capture-rate", getCaptureFrameRate());
            mediaFormatCreateVideoFormat.setInteger("operating-rate", getCaptureFrameRate());
            mediaFormatCreateVideoFormat.setInteger("priority", 0);
        }
        mediaFormatCreateVideoFormat.setInteger("i-frame-interval", getIFrameInterval());
        if (getProfile() != -1) {
            mediaFormatCreateVideoFormat.setInteger("profile", getProfile());
        }
        VideoEncoderDataSpace dataSpace = getDataSpace();
        if (dataSpace.getStandard() != 0) {
            mediaFormatCreateVideoFormat.setInteger("color-standard", dataSpace.getStandard());
        }
        if (dataSpace.getTransfer() != 0) {
            mediaFormatCreateVideoFormat.setInteger("color-transfer", dataSpace.getTransfer());
        }
        if (dataSpace.getRange() != 0) {
            mediaFormatCreateVideoFormat.setInteger("color-range", dataSpace.getRange());
        }
        return mediaFormatCreateVideoFormat;
    }

    public boolean isSlowMotion() {
        return getCaptureFrameRate() > getEncodeFrameRate();
    }

    public static abstract class Builder {
        public abstract VideoEncoderConfig build();

        public abstract Builder setBitrate(int i);

        public abstract Builder setCaptureFrameRate(int i);

        public abstract Builder setColorFormat(int i);

        public abstract Builder setDataSpace(VideoEncoderDataSpace videoEncoderDataSpace);

        public abstract Builder setEncodeFrameRate(int i);

        public abstract Builder setIFrameInterval(int i);

        public abstract Builder setInputTimebase(Timebase timebase);

        public abstract Builder setMimeType(String str);

        public abstract Builder setProfile(int i);

        public abstract Builder setResolution(Size size);

        Builder() {
        }
    }
}
