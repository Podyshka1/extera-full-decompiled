package androidx.camera.camera2.compat;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import android.util.Log;
import android.util.Range;
import android.util.Size;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.core.Logger;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class StreamConfigurationMapCompat {
    private final Map cachedClassOutputSizes;
    private final Map cachedFormatHighResolutionOutputSizes;
    private final Map cachedFormatOutputSizes;
    private StreamConfigurationMapCompatImpl impl;
    private final OutputSizesCorrector outputSizesCorrector;
    private final String tag;

    public interface StreamConfigurationMapCompatImpl {
        Size[] getHighResolutionOutputSizes(int i);

        Range[] getHighSpeedVideoFpsRangesFor(Size size);

        Size[] getHighSpeedVideoSizes();

        Size[] getHighSpeedVideoSizesFor(Range range);

        Integer[] getOutputFormats();

        long getOutputMinFrameDuration(int i, Size size);

        Size[] getOutputSizes(int i);

        StreamConfigurationMap unwrap();
    }

    public StreamConfigurationMapCompat(StreamConfigurationMap streamConfigurationMap, OutputSizesCorrector outputSizesCorrector) {
        StreamConfigurationMapCompatImpl streamConfigurationMapCompatBaseImpl;
        Intrinsics.checkNotNullParameter(outputSizesCorrector, "outputSizesCorrector");
        this.outputSizesCorrector = outputSizesCorrector;
        this.tag = "StreamConfigurationMapCompat";
        this.cachedFormatOutputSizes = new LinkedHashMap();
        this.cachedFormatHighResolutionOutputSizes = new LinkedHashMap();
        this.cachedClassOutputSizes = new LinkedHashMap();
        if (Build.VERSION.SDK_INT >= 34) {
            streamConfigurationMapCompatBaseImpl = new StreamConfigurationMapCompatApi34Impl(streamConfigurationMap);
        } else {
            streamConfigurationMapCompatBaseImpl = new StreamConfigurationMapCompatBaseImpl(streamConfigurationMap);
        }
        this.impl = streamConfigurationMapCompatBaseImpl;
    }

    public final Integer[] getOutputFormats() {
        return this.impl.getOutputFormats();
    }

    public final Size[] getOutputSizes(int i) {
        Size[] outputSizes = null;
        if (this.cachedFormatOutputSizes.containsKey(Integer.valueOf(i))) {
            Size[] sizeArr = (Size[]) this.cachedFormatOutputSizes.get(Integer.valueOf(i));
            if (sizeArr != null) {
                return (Size[]) sizeArr.clone();
            }
            return null;
        }
        try {
            outputSizes = this.impl.getOutputSizes(i);
        } catch (Throwable th) {
            Logger.m82w(this.tag, "Failed to get output sizes for " + i, th);
        }
        if (outputSizes == null || outputSizes.length == 0) {
            Logger.m81w(this.tag, "Retrieved output sizes array is null or empty for format " + i);
            return outputSizes;
        }
        Size[] sizeArrApplyQuirks = this.outputSizesCorrector.applyQuirks(outputSizes, i);
        this.cachedFormatOutputSizes.put(Integer.valueOf(i), sizeArrApplyQuirks);
        return (Size[]) sizeArrApplyQuirks.clone();
    }

    public final Size[] getHighResolutionOutputSizes(int i) {
        if (this.cachedFormatHighResolutionOutputSizes.containsKey(Integer.valueOf(i))) {
            Size[] sizeArr = (Size[]) this.cachedFormatHighResolutionOutputSizes.get(Integer.valueOf(i));
            if (sizeArr != null) {
                return (Size[]) sizeArr.clone();
            }
            return null;
        }
        Size[] highResolutionOutputSizes = this.impl.getHighResolutionOutputSizes(i);
        if (highResolutionOutputSizes != null && highResolutionOutputSizes.length != 0) {
            highResolutionOutputSizes = this.outputSizesCorrector.applyQuirks(highResolutionOutputSizes, i);
        }
        this.cachedFormatHighResolutionOutputSizes.put(Integer.valueOf(i), highResolutionOutputSizes);
        if (highResolutionOutputSizes != null) {
            return (Size[]) highResolutionOutputSizes.clone();
        }
        return null;
    }

    public final Range[] getHighSpeedVideoFpsRangesFor(Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        return this.impl.getHighSpeedVideoFpsRangesFor(size);
    }

    public final Size[] getHighSpeedVideoSizes() {
        return this.impl.getHighSpeedVideoSizes();
    }

    public final Size[] getHighSpeedVideoSizesFor(Range fpsRange) {
        Intrinsics.checkNotNullParameter(fpsRange, "fpsRange");
        return this.impl.getHighSpeedVideoSizesFor(fpsRange);
    }

    public final long getOutputMinFrameDuration(int i, Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        try {
            return this.impl.getOutputMinFrameDuration(i, size);
        } catch (RuntimeException e) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (!Logger.isWarnEnabled("CXCP")) {
                return 0L;
            }
            Log.w(Camera2Logger.TRUNCATED_TAG, "Unable to get min frame duration for format = " + i + " and size = " + size, e);
            return 0L;
        }
    }

    public final StreamConfigurationMap toStreamConfigurationMap() {
        return this.impl.unwrap();
    }
}
