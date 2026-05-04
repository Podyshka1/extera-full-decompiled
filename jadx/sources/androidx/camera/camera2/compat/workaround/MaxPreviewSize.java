package androidx.camera.camera2.compat.workaround;

import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ExtraCroppingQuirk;
import androidx.camera.core.impl.SurfaceConfig;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class MaxPreviewSize {
    private final ExtraCroppingQuirk extraCroppingQuirk;

    public MaxPreviewSize(ExtraCroppingQuirk extraCroppingQuirk) {
        this.extraCroppingQuirk = extraCroppingQuirk;
    }

    public /* synthetic */ MaxPreviewSize(ExtraCroppingQuirk extraCroppingQuirk, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? (ExtraCroppingQuirk) DeviceQuirks.INSTANCE.get(ExtraCroppingQuirk.class) : extraCroppingQuirk);
    }

    public final Size getMaxPreviewResolution(Size defaultMaxPreviewResolution) {
        Size verifiedResolution;
        Intrinsics.checkNotNullParameter(defaultMaxPreviewResolution, "defaultMaxPreviewResolution");
        ExtraCroppingQuirk extraCroppingQuirk = this.extraCroppingQuirk;
        return (extraCroppingQuirk == null || (verifiedResolution = extraCroppingQuirk.getVerifiedResolution(SurfaceConfig.ConfigType.PRIV)) == null || verifiedResolution.getWidth() * verifiedResolution.getHeight() <= defaultMaxPreviewResolution.getWidth() * defaultMaxPreviewResolution.getHeight()) ? defaultMaxPreviewResolution : verifiedResolution;
    }
}
