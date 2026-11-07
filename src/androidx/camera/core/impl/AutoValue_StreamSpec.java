package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.StreamSpec;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_StreamSpec extends StreamSpec {
    private final DynamicRange dynamicRange;
    private final Range<Integer> expectedFrameRateRange;
    private final Config implementationOptions;
    private final Size originalConfiguredResolution;
    private final Size resolution;
    private final int sessionType;
    private final boolean zslDisabled;

    private AutoValue_StreamSpec(Size size, Size size2, DynamicRange dynamicRange, int i, Range<Integer> range, Config config, boolean z) {
        this.resolution = size;
        this.originalConfiguredResolution = size2;
        this.dynamicRange = dynamicRange;
        this.sessionType = i;
        this.expectedFrameRateRange = range;
        this.implementationOptions = config;
        this.zslDisabled = z;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public Size getResolution() {
        return this.resolution;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public Size getOriginalConfiguredResolution() {
        return this.originalConfiguredResolution;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public DynamicRange getDynamicRange() {
        return this.dynamicRange;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public int getSessionType() {
        return this.sessionType;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public Range<Integer> getExpectedFrameRateRange() {
        return this.expectedFrameRateRange;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public Config getImplementationOptions() {
        return this.implementationOptions;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public boolean getZslDisabled() {
        return this.zslDisabled;
    }

    public String toString() {
        return "StreamSpec{resolution=" + this.resolution + ", originalConfiguredResolution=" + this.originalConfiguredResolution + ", dynamicRange=" + this.dynamicRange + ", sessionType=" + this.sessionType + ", expectedFrameRateRange=" + this.expectedFrameRateRange + ", implementationOptions=" + this.implementationOptions + ", zslDisabled=" + this.zslDisabled + "}";
    }

    public boolean equals(Object obj) {
        Config config;
        if (obj == this) {
            return true;
        }
        if (obj instanceof StreamSpec) {
            StreamSpec streamSpec = (StreamSpec) obj;
            if (this.resolution.equals(streamSpec.getResolution()) && this.originalConfiguredResolution.equals(streamSpec.getOriginalConfiguredResolution()) && this.dynamicRange.equals(streamSpec.getDynamicRange()) && this.sessionType == streamSpec.getSessionType() && this.expectedFrameRateRange.equals(streamSpec.getExpectedFrameRateRange()) && ((config = this.implementationOptions) != null ? config.equals(streamSpec.getImplementationOptions()) : streamSpec.getImplementationOptions() == null) && this.zslDisabled == streamSpec.getZslDisabled()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (((((((((this.resolution.hashCode() ^ 1000003) * 1000003) ^ this.originalConfiguredResolution.hashCode()) * 1000003) ^ this.dynamicRange.hashCode()) * 1000003) ^ this.sessionType) * 1000003) ^ this.expectedFrameRateRange.hashCode()) * 1000003;
        Config config = this.implementationOptions;
        return (this.zslDisabled ? 1231 : 1237) ^ ((iHashCode ^ (config == null ? 0 : config.hashCode())) * 1000003);
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public StreamSpec.Builder toBuilder() {
        return new Builder(this);
    }

    public static final class Builder extends StreamSpec.Builder {
        private DynamicRange dynamicRange;
        private Range<Integer> expectedFrameRateRange;
        private Config implementationOptions;
        private Size originalConfiguredResolution;
        private Size resolution;
        private Integer sessionType;
        private Boolean zslDisabled;

        public Builder() {
        }

        private Builder(StreamSpec streamSpec) {
            this.resolution = streamSpec.getResolution();
            this.originalConfiguredResolution = streamSpec.getOriginalConfiguredResolution();
            this.dynamicRange = streamSpec.getDynamicRange();
            this.sessionType = Integer.valueOf(streamSpec.getSessionType());
            this.expectedFrameRateRange = streamSpec.getExpectedFrameRateRange();
            this.implementationOptions = streamSpec.getImplementationOptions();
            this.zslDisabled = Boolean.valueOf(streamSpec.getZslDisabled());
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public StreamSpec.Builder setResolution(Size size) {
            if (size == null) {
                f$$ExternalSyntheticBUOutline2.m216m("Null resolution");
                return null;
            }
            this.resolution = size;
            return this;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public StreamSpec.Builder setOriginalConfiguredResolution(Size size) {
            if (size == null) {
                f$$ExternalSyntheticBUOutline2.m216m("Null originalConfiguredResolution");
                return null;
            }
            this.originalConfiguredResolution = size;
            return this;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public StreamSpec.Builder setDynamicRange(DynamicRange dynamicRange) {
            if (dynamicRange == null) {
                f$$ExternalSyntheticBUOutline2.m216m("Null dynamicRange");
                return null;
            }
            this.dynamicRange = dynamicRange;
            return this;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public StreamSpec.Builder setSessionType(int i) {
            this.sessionType = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public StreamSpec.Builder setExpectedFrameRateRange(Range<Integer> range) {
            if (range == null) {
                f$$ExternalSyntheticBUOutline2.m216m("Null expectedFrameRateRange");
                return null;
            }
            this.expectedFrameRateRange = range;
            return this;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public StreamSpec.Builder setImplementationOptions(Config config) {
            this.implementationOptions = config;
            return this;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public StreamSpec.Builder setZslDisabled(boolean z) {
            this.zslDisabled = Boolean.valueOf(z);
            return this;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public StreamSpec build() {
            String strConcat;
            if (this.resolution != null) {
                strConcat = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                strConcat = " resolution";
            }
            if (this.originalConfiguredResolution == null) {
                strConcat = strConcat.concat(" originalConfiguredResolution");
            }
            if (this.dynamicRange == null) {
                strConcat = strConcat.concat(" dynamicRange");
            }
            if (this.sessionType == null) {
                strConcat = strConcat.concat(" sessionType");
            }
            if (this.expectedFrameRateRange == null) {
                strConcat = strConcat.concat(" expectedFrameRateRange");
            }
            if (this.zslDisabled == null) {
                strConcat = strConcat.concat(" zslDisabled");
            }
            if (!strConcat.isEmpty()) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Missing required properties:".concat(strConcat));
                return null;
            }
            return new AutoValue_StreamSpec(this.resolution, this.originalConfiguredResolution, this.dynamicRange, this.sessionType.intValue(), this.expectedFrameRateRange, this.implementationOptions, this.zslDisabled.booleanValue());
        }
    }
}
