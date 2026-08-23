package androidx.camera.camera2.config;

import androidx.camera.core.concurrent.CameraCoordinator;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraAppConfig_ProvideCameraCoordinatorFactory implements Provider {
    public static CameraCoordinator provideCameraCoordinator(CameraAppConfig cameraAppConfig) {
        return (CameraCoordinator) Preconditions.checkNotNullFromProvides(cameraAppConfig.getCameraCoordinator());
    }
}
