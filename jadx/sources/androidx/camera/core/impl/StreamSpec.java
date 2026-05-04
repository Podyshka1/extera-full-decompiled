package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.AutoValue_StreamSpec;

/* JADX INFO: loaded from: classes4.dex */
public abstract class StreamSpec {
    public static final Range FRAME_RATE_RANGE_UNSPECIFIED = new Range(0, 0);

    public abstract DynamicRange getDynamicRange();

    public abstract Range getExpectedFrameRateRange();

    public abstract Config getImplementationOptions();

    public abstract Size getOriginalConfiguredResolution();

    public abstract Size getResolution();

    public abstract int getSessionType();

    public abstract boolean getZslDisabled();

    public abstract Builder toBuilder();

    public static Builder builder(Size size) {
        return new AutoValue_StreamSpec.Builder().setResolution(size).setOriginalConfiguredResolution(size).setSessionType(0).setExpectedFrameRateRange(FRAME_RATE_RANGE_UNSPECIFIED).setDynamicRange(DynamicRange.SDR).setZslDisabled(false);
    }

    public static abstract class Builder {
        public abstract StreamSpec build();

        public abstract Builder setDynamicRange(DynamicRange dynamicRange);

        public abstract Builder setExpectedFrameRateRange(Range range);

        public abstract Builder setImplementationOptions(Config config);

        public abstract Builder setOriginalConfiguredResolution(Size size);

        public abstract Builder setResolution(Size size);

        public abstract Builder setSessionType(int i);

        public abstract Builder setZslDisabled(boolean z);

        Builder() {
        }
    }
}
