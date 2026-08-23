package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.Quirk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class ConfigureSurfaceToSecondarySessionFailQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
            return CameraMetadata.Companion.isHardwareLevelLegacy(cameraMetadata);
        }
    }
}
