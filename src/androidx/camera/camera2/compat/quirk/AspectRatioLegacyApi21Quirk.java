package androidx.camera.camera2.compat.quirk;

import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.Quirk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AspectRatioLegacyApi21Quirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    public final int getCorrectedAspectRatio() {
        return 2;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
            CameraMetadata.Companion.isHardwareLevelLegacy(cameraMetadata);
            return false;
        }
    }
}
