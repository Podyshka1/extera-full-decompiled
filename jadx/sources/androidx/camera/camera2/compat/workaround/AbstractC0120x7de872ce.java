package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.MeteringRegionCorrection;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: renamed from: androidx.camera.camera2.compat.workaround.MeteringRegionCorrection_Bindings_Companion_ProvideMeteringRegionCorrectionFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0120x7de872ce implements Provider {
    public static MeteringRegionCorrection provideMeteringRegionCorrection(CameraQuirks cameraQuirks) {
        return (MeteringRegionCorrection) Preconditions.checkNotNullFromProvides(MeteringRegionCorrection.Bindings.Companion.provideMeteringRegionCorrection(cameraQuirks));
    }
}
