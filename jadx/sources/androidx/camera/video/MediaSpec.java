package androidx.camera.video;

import androidx.camera.video.VideoSpec;
import androidx.core.util.Consumer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.MediaController;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class MediaSpec {
    public static final Companion Companion = new Companion(null);
    private final AudioSpec audioSpec;
    private final int outputFormat;
    private final VideoSpec videoSpec;

    public static final Builder builder() {
        return Companion.builder();
    }

    public static final int outputFormatToMuxerFormat(int i) {
        return Companion.outputFormatToMuxerFormat(i);
    }

    public MediaSpec(VideoSpec videoSpec, AudioSpec audioSpec, int i) {
        Intrinsics.checkNotNullParameter(videoSpec, "videoSpec");
        Intrinsics.checkNotNullParameter(audioSpec, "audioSpec");
        this.videoSpec = videoSpec;
        this.audioSpec = audioSpec;
        this.outputFormat = i;
    }

    public final VideoSpec getVideoSpec() {
        return this.videoSpec;
    }

    public final int getOutputFormat() {
        return this.outputFormat;
    }

    public final Builder toBuilder() {
        return new Builder().setVideoSpec(this.videoSpec).setAudioSpec(this.audioSpec).setOutputFormat(this.outputFormat);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSpec)) {
            return false;
        }
        MediaSpec mediaSpec = (MediaSpec) obj;
        return Intrinsics.areEqual(this.videoSpec, mediaSpec.videoSpec) && Intrinsics.areEqual(this.audioSpec, mediaSpec.audioSpec) && this.outputFormat == mediaSpec.outputFormat;
    }

    public int hashCode() {
        return Objects.hash(this.videoSpec, this.audioSpec, Integer.valueOf(this.outputFormat));
    }

    public String toString() {
        return "MediaSpec{videoSpec=" + this.videoSpec + ", audioSpec=" + this.audioSpec + ", outputFormat=" + this.outputFormat + '}';
    }

    public static final class Builder {
        private AudioSpec audioSpec = AudioSpec.Companion.getDEFAULT();
        private VideoSpec videoSpec = VideoSpec.Companion.getDEFAULT();
        private int outputFormat = -1;

        public final Builder setAudioSpec(AudioSpec audioSpec) {
            Intrinsics.checkNotNullParameter(audioSpec, "audioSpec");
            this.audioSpec = audioSpec;
            return this;
        }

        public final Builder setVideoSpec(VideoSpec videoSpec) {
            Intrinsics.checkNotNullParameter(videoSpec, "videoSpec");
            this.videoSpec = videoSpec;
            return this;
        }

        public final Builder setOutputFormat(int i) {
            this.outputFormat = i;
            return this;
        }

        public final Builder configureVideo(Consumer configBlock) {
            Intrinsics.checkNotNullParameter(configBlock, "configBlock");
            VideoSpec.Builder builder = this.videoSpec.toBuilder();
            configBlock.accept(builder);
            this.videoSpec = builder.build();
            return this;
        }

        public final MediaSpec build() {
            return new MediaSpec(this.videoSpec, this.audioSpec, this.outputFormat);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int outputFormatToMuxerFormat(int i) {
            return i == 1 ? 1 : 0;
        }

        private Companion() {
        }

        public final String outputFormatToVideoMime(int i) {
            if (i == 1) {
                return "video/x-vnd.on2.vp8";
            }
            return MediaController.VIDEO_MIME_TYPE;
        }

        public final Builder builder() {
            return new Builder();
        }
    }
}
