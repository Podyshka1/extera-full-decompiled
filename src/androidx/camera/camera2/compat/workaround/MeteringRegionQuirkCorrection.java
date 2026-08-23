package androidx.camera.camera2.compat.workaround;

import android.graphics.PointF;
import androidx.camera.core.MeteringPoint;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class MeteringRegionQuirkCorrection implements MeteringRegionCorrection {
    public static final MeteringRegionQuirkCorrection INSTANCE = new MeteringRegionQuirkCorrection();

    private MeteringRegionQuirkCorrection() {
    }

    @Override // androidx.camera.camera2.compat.workaround.MeteringRegionCorrection
    public PointF getCorrectedPoint(MeteringPoint meteringPoint, int i) {
        Intrinsics.checkNotNullParameter(meteringPoint, "meteringPoint");
        if (i == 1) {
            return new PointF(1.0f - meteringPoint.getX(), meteringPoint.getY());
        }
        return new PointF(meteringPoint.getX(), meteringPoint.getY());
    }
}
