package androidx.camera.camera2.compat.workaround;

import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ExtraCroppingQuirk;
import androidx.camera.core.impl.SurfaceConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ResolutionCorrector {
    private final ExtraCroppingQuirk extraCroppingQuirk = (ExtraCroppingQuirk) DeviceQuirks.INSTANCE.get(ExtraCroppingQuirk.class);

    public final List insertOrPrioritize(SurfaceConfig.ConfigType configType, List supportedResolutions) {
        Size verifiedResolution;
        Intrinsics.checkNotNullParameter(configType, "configType");
        Intrinsics.checkNotNullParameter(supportedResolutions, "supportedResolutions");
        ExtraCroppingQuirk extraCroppingQuirk = this.extraCroppingQuirk;
        if (extraCroppingQuirk == null || (verifiedResolution = extraCroppingQuirk.getVerifiedResolution(configType)) == null) {
            return supportedResolutions;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(verifiedResolution);
        Iterator it = supportedResolutions.iterator();
        while (it.hasNext()) {
            Size size = (Size) it.next();
            if (!Intrinsics.areEqual(size, verifiedResolution)) {
                arrayList.add(size);
            }
        }
        return arrayList;
    }
}
