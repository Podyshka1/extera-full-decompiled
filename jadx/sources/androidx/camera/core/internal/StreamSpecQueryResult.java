package androidx.camera.core.internal;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class StreamSpecQueryResult {
    private final int maxSupportedFrameRate;
    private final Map streamSpecs;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreamSpecQueryResult)) {
            return false;
        }
        StreamSpecQueryResult streamSpecQueryResult = (StreamSpecQueryResult) obj;
        return Intrinsics.areEqual(this.streamSpecs, streamSpecQueryResult.streamSpecs) && this.maxSupportedFrameRate == streamSpecQueryResult.maxSupportedFrameRate;
    }

    public int hashCode() {
        return (this.streamSpecs.hashCode() * 31) + this.maxSupportedFrameRate;
    }

    public String toString() {
        return "StreamSpecQueryResult(streamSpecs=" + this.streamSpecs + ", maxSupportedFrameRate=" + this.maxSupportedFrameRate + ')';
    }

    public StreamSpecQueryResult(Map streamSpecs, int i) {
        Intrinsics.checkNotNullParameter(streamSpecs, "streamSpecs");
        this.streamSpecs = streamSpecs;
        this.maxSupportedFrameRate = i;
    }

    public final Map getStreamSpecs() {
        return this.streamSpecs;
    }

    public final int getMaxSupportedFrameRate() {
        return this.maxSupportedFrameRate;
    }
}
