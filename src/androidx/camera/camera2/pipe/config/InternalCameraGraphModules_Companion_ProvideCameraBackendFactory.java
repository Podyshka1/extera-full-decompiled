package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackends;
import androidx.camera.camera2.pipe.CameraContext;
import androidx.camera.camera2.pipe.CameraGraph;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class InternalCameraGraphModules_Companion_ProvideCameraBackendFactory implements Provider {
    public static CameraBackend provideCameraBackend(CameraBackends cameraBackends, CameraGraph.Config config, CameraContext cameraContext) {
        return (CameraBackend) Preconditions.checkNotNullFromProvides(InternalCameraGraphModules.Companion.provideCameraBackend(cameraBackends, config, cameraContext));
    }
}
