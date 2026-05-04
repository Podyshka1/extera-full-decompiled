package androidx.camera.camera2.compat.workaround;

import android.graphics.PointF;
import androidx.camera.camera2.compat.quirk.AfRegionFlipHorizontallyQuirk;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.core.MeteringPoint;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface MeteringRegionCorrection {
    PointF getCorrectedPoint(MeteringPoint meteringPoint, int i);

    public static abstract class Bindings {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final MeteringRegionCorrection provideMeteringRegionCorrection(CameraQuirks cameraQuirks) {
                Intrinsics.checkNotNullParameter(cameraQuirks, "cameraQuirks");
                if (cameraQuirks.getQuirks().contains(AfRegionFlipHorizontallyQuirk.class)) {
                    return MeteringRegionQuirkCorrection.INSTANCE;
                }
                return NoOpMeteringRegionCorrection.INSTANCE;
            }
        }
    }
}
