package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.config.InternalCameraGraphModules_Companion_ProvideCameraMetadataFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0227xbc9e5a4c implements Provider {
    public static CameraMetadata provideCameraMetadata(CameraGraph.Config config, CameraBackend cameraBackend) {
        return (CameraMetadata) Preconditions.checkNotNullFromProvides(InternalCameraGraphModules.Companion.provideCameraMetadata(config, cameraBackend));
    }
}
