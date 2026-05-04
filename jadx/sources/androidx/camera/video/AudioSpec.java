package androidx.camera.video;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class AudioSpec {
    public static final Companion Companion;
    private static final AudioSpec DEFAULT;
    private final int bitrate;
    private final int channelCount;
    private final String mimeType;
    private final int sampleRate;
    private final int source;
    private final int sourceFormat;

    public AudioSpec(int i, int i2, int i3, int i4, int i5, String mimeType) {
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        this.bitrate = i;
        this.sourceFormat = i2;
        this.source = i3;
        this.sampleRate = i4;
        this.channelCount = i5;
        this.mimeType = mimeType;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioSpec)) {
            return false;
        }
        AudioSpec audioSpec = (AudioSpec) obj;
        return this.sourceFormat == audioSpec.sourceFormat && this.source == audioSpec.source && this.channelCount == audioSpec.channelCount && this.bitrate == audioSpec.bitrate && this.sampleRate == audioSpec.sampleRate && Intrinsics.areEqual(this.mimeType, audioSpec.mimeType);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.bitrate), Integer.valueOf(this.sourceFormat), Integer.valueOf(this.source), Integer.valueOf(this.sampleRate), Integer.valueOf(this.channelCount));
    }

    public String toString() {
        return "AudioSpec{bitrate=" + this.bitrate + ", sourceFormat=" + this.sourceFormat + ", source=" + this.source + ", sampleRate=" + this.sampleRate + ", channelCount=" + this.channelCount + ", mimeType=" + this.mimeType + '}';
    }

    public static final class Builder {
        private int bitrate;
        private int sampleRate;
        private int sourceFormat = -1;
        private int source = -1;
        private int channelCount = -1;
        private String mimeType = "audio/*";

        public final AudioSpec build() {
            return new AudioSpec(this.bitrate, this.sourceFormat, this.source, this.sampleRate, this.channelCount, this.mimeType);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AudioSpec getDEFAULT() {
            return AudioSpec.DEFAULT;
        }

        public final Builder builder() {
            return new Builder();
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        DEFAULT = companion.builder().build();
    }
}
