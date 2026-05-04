package androidx.camera.camera2.compat;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Range;
import android.util.Size;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.core.Logger;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class StreamConfigurationMapCompatBaseImpl implements StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl {
    private final StreamConfigurationMap streamConfigurationMap;

    public StreamConfigurationMapCompatBaseImpl(StreamConfigurationMap streamConfigurationMap) {
        this.streamConfigurationMap = streamConfigurationMap;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Integer[] getOutputFormats() {
        StreamConfigurationMap streamConfigurationMap;
        try {
            streamConfigurationMap = this.streamConfigurationMap;
        } catch (IllegalArgumentException e) {
            Logger.m82w("StreamConfigurationMapCompatBaseImpl", "Failed to get output formats from StreamConfigurationMap", e);
        } catch (NullPointerException e2) {
            Logger.m82w("StreamConfigurationMapCompatBaseImpl", "Failed to get output formats from StreamConfigurationMap", e2);
        }
        int[] outputFormats = streamConfigurationMap != null ? streamConfigurationMap.getOutputFormats() : null;
        if (outputFormats != null) {
            return ArraysKt.toTypedArray(outputFormats);
        }
        return null;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Size[] getOutputSizes(int i) {
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getOutputSizes(i);
        }
        return null;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Size[] getHighResolutionOutputSizes(int i) {
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getHighResolutionOutputSizes(i);
        }
        return null;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Range[] getHighSpeedVideoFpsRangesFor(Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getHighSpeedVideoFpsRangesFor(size);
        }
        return null;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Size[] getHighSpeedVideoSizes() {
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getHighSpeedVideoSizes();
        }
        return null;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Size[] getHighSpeedVideoSizesFor(Range fpsRange) {
        Intrinsics.checkNotNullParameter(fpsRange, "fpsRange");
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getHighSpeedVideoSizesFor(fpsRange);
        }
        return null;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public long getOutputMinFrameDuration(int i, Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getOutputMinFrameDuration(i, size);
        }
        return 0L;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public StreamConfigurationMap unwrap() {
        return this.streamConfigurationMap;
    }
}
