package androidx.camera.camera2.config;

import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraConfig_ProvideCameraConfigFactory implements Provider {
    public static CameraConfig provideCameraConfig(CameraConfig cameraConfig) {
        return (CameraConfig) Preconditions.checkNotNullFromProvides(cameraConfig.provideCameraConfig());
    }
}
