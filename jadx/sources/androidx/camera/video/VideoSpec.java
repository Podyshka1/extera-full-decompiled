package androidx.camera.video;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class VideoSpec {
    public static final Companion Companion;
    private static final VideoSpec DEFAULT;
    private static final QualitySelector QUALITY_SELECTOR_UNSPECIFIED;
    private final int aspectRatio;
    private final int bitrate;
    private final int encodeFrameRate;
    private final String mimeType;
    private final QualitySelector qualitySelector;

    public static final Builder builder() {
        return Companion.builder();
    }

    public VideoSpec(QualitySelector qualitySelector, int i, int i2, int i3, String mimeType) {
        Intrinsics.checkNotNullParameter(qualitySelector, "qualitySelector");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        this.qualitySelector = qualitySelector;
        this.encodeFrameRate = i;
        this.bitrate = i2;
        this.aspectRatio = i3;
        this.mimeType = mimeType;
    }

    public final QualitySelector getQualitySelector() {
        return this.qualitySelector;
    }

    public final int getEncodeFrameRate() {
        return this.encodeFrameRate;
    }

    public final int getBitrate() {
        return this.bitrate;
    }

    public final int getAspectRatio() {
        return this.aspectRatio;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final Builder toBuilder() {
        return new Builder().setQualitySelector(this.qualitySelector).setEncodeFrameRate(this.encodeFrameRate).setBitrate(this.bitrate).setAspectRatio(this.aspectRatio).setMimeType(this.mimeType);
    }

    public String toString() {
        return "VideoSpec{qualitySelector=" + this.qualitySelector + ", encodeFrameRate=" + this.encodeFrameRate + ", bitrate=" + this.bitrate + ", aspectRatio=" + this.aspectRatio + ", mimeType=" + this.mimeType + '}';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoSpec)) {
            return false;
        }
        VideoSpec videoSpec = (VideoSpec) obj;
        return Intrinsics.areEqual(this.qualitySelector, videoSpec.qualitySelector) && this.encodeFrameRate == videoSpec.encodeFrameRate && this.bitrate == videoSpec.bitrate && this.aspectRatio == videoSpec.aspectRatio && Intrinsics.areEqual(this.mimeType, videoSpec.mimeType);
    }

    public int hashCode() {
        return Objects.hash(this.qualitySelector, Integer.valueOf(this.encodeFrameRate), Integer.valueOf(this.bitrate), Integer.valueOf(this.aspectRatio), this.mimeType);
    }

    public static final class Builder {
        private int bitrate;
        private int encodeFrameRate;
        private QualitySelector qualitySelector = VideoSpec.Companion.getQUALITY_SELECTOR_UNSPECIFIED();
        private int aspectRatio = -1;
        private String mimeType = "video/*";

        public final Builder setQualitySelector(QualitySelector qualitySelector) {
            Intrinsics.checkNotNullParameter(qualitySelector, "qualitySelector");
            this.qualitySelector = qualitySelector;
            return this;
        }

        public final Builder setEncodeFrameRate(int i) {
            this.encodeFrameRate = i;
            return this;
        }

        public final Builder setBitrate(int i) {
            this.bitrate = i;
            return this;
        }

        public final Builder setAspectRatio(int i) {
            this.aspectRatio = i;
            return this;
        }

        public final Builder setMimeType(String mimeType) {
            Intrinsics.checkNotNullParameter(mimeType, "mimeType");
            this.mimeType = mimeType;
            return this;
        }

        public final VideoSpec build() {
            return new VideoSpec(this.qualitySelector, this.encodeFrameRate, this.bitrate, this.aspectRatio, this.mimeType);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final QualitySelector getQUALITY_SELECTOR_UNSPECIFIED() {
            return VideoSpec.QUALITY_SELECTOR_UNSPECIFIED;
        }

        public final VideoSpec getDEFAULT() {
            return VideoSpec.DEFAULT;
        }

        public final Builder builder() {
            return new Builder();
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        QualitySelector NONE = QualitySelector.NONE;
        Intrinsics.checkNotNullExpressionValue(NONE, "NONE");
        QUALITY_SELECTOR_UNSPECIFIED = NONE;
        DEFAULT = companion.builder().build();
    }
}
