package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.quirk.AspectRatioLegacyApi21Quirk;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.Nexus4AndroidLTargetAspectRatioQuirk;
import androidx.camera.camera2.pipe.CameraMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class TargetAspectRatio {
    public static final Companion Companion = new Companion(null);

    public final int get(CameraMetadata cameraMetadata, StreamConfigurationMapCompat streamConfigurationMapCompat) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        Intrinsics.checkNotNullParameter(streamConfigurationMapCompat, "streamConfigurationMapCompat");
        CameraQuirks cameraQuirks = new CameraQuirks(cameraMetadata, streamConfigurationMapCompat);
        Nexus4AndroidLTargetAspectRatioQuirk nexus4AndroidLTargetAspectRatioQuirk = (Nexus4AndroidLTargetAspectRatioQuirk) DeviceQuirks.INSTANCE.get(Nexus4AndroidLTargetAspectRatioQuirk.class);
        if (nexus4AndroidLTargetAspectRatioQuirk != null) {
            return nexus4AndroidLTargetAspectRatioQuirk.getCorrectedAspectRatio();
        }
        AspectRatioLegacyApi21Quirk aspectRatioLegacyApi21Quirk = (AspectRatioLegacyApi21Quirk) cameraQuirks.getQuirks().get(AspectRatioLegacyApi21Quirk.class);
        if (aspectRatioLegacyApi21Quirk != null) {
            return aspectRatioLegacyApi21Quirk.getCorrectedAspectRatio();
        }
        return 3;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
