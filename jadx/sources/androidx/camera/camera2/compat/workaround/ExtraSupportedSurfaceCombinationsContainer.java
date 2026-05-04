package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ExtraSupportedSurfaceCombinationsQuirk;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ExtraSupportedSurfaceCombinationsContainer {
    private final ExtraSupportedSurfaceCombinationsQuirk quirk = (ExtraSupportedSurfaceCombinationsQuirk) DeviceQuirks.INSTANCE.get(ExtraSupportedSurfaceCombinationsQuirk.class);

    public final List get(String cameraId) {
        List extraSupportedSurfaceCombinations;
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        ExtraSupportedSurfaceCombinationsQuirk extraSupportedSurfaceCombinationsQuirk = this.quirk;
        return (extraSupportedSurfaceCombinationsQuirk == null || (extraSupportedSurfaceCombinations = extraSupportedSurfaceCombinationsQuirk.getExtraSupportedSurfaceCombinations(cameraId)) == null) ? CollectionsKt.emptyList() : extraSupportedSurfaceCombinations;
    }
}
