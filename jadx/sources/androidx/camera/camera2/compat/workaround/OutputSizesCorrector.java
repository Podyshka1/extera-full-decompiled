package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ExcludedSupportedSizesQuirk;
import androidx.camera.camera2.compat.quirk.ExtraSupportedOutputSizeQuirk;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.Logger;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OutputSizesCorrector {
    private final CameraMetadata cameraMetadata;
    private final ExcludedSupportedSizesQuirk excludedSupportedSizesQuirk;
    private final ExtraSupportedOutputSizeQuirk extraSupportedOutputSizeQuirk;
    private final StreamConfigurationMap streamConfigurationMap;
    private final String tag = "OutputSizesCorrector";

    public OutputSizesCorrector(CameraMetadata cameraMetadata, StreamConfigurationMap streamConfigurationMap) {
        this.cameraMetadata = cameraMetadata;
        this.streamConfigurationMap = streamConfigurationMap;
        DeviceQuirks deviceQuirks = DeviceQuirks.INSTANCE;
        this.excludedSupportedSizesQuirk = (ExcludedSupportedSizesQuirk) deviceQuirks.get(ExcludedSupportedSizesQuirk.class);
        this.extraSupportedOutputSizeQuirk = (ExtraSupportedOutputSizeQuirk) deviceQuirks.get(ExtraSupportedOutputSizeQuirk.class);
    }

    public final Size[] applyQuirks(Size[] sizes, int i) {
        Intrinsics.checkNotNullParameter(sizes, "sizes");
        List mutableList = ArraysKt.toMutableList(sizes);
        addExtraSupportedOutputSizesByFormat(mutableList, i);
        excludeProblematicOutputSizesByFormat(mutableList, i);
        if (mutableList.isEmpty()) {
            Logger.m81w(this.tag, "Sizes array becomes empty after excluding problematic output sizes.");
        }
        return (Size[]) mutableList.toArray(new Size[0]);
    }

    private final void addExtraSupportedOutputSizesByFormat(List list, int i) {
        ExtraSupportedOutputSizeQuirk extraSupportedOutputSizeQuirk = this.extraSupportedOutputSizeQuirk;
        if (extraSupportedOutputSizeQuirk == null) {
            return;
        }
        Size[] extraSupportedResolutions = extraSupportedOutputSizeQuirk.getExtraSupportedResolutions(i);
        if (extraSupportedResolutions.length == 0) {
            return;
        }
        CollectionsKt.addAll(list, extraSupportedResolutions);
    }

    private final void excludeProblematicOutputSizesByFormat(List list, int i) {
        ExcludedSupportedSizesQuirk excludedSupportedSizesQuirk;
        CameraMetadata cameraMetadata = this.cameraMetadata;
        if (cameraMetadata == null || (excludedSupportedSizesQuirk = this.excludedSupportedSizesQuirk) == null) {
            return;
        }
        List excludedSizes = excludedSupportedSizesQuirk.getExcludedSizes(cameraMetadata.mo1612getCameraDz_R5H8(), i);
        if (excludedSizes.isEmpty()) {
            return;
        }
        list.removeAll(excludedSizes);
    }
}
