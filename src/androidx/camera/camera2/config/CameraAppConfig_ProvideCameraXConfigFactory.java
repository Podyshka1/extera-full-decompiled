package androidx.camera.camera2.config;

import androidx.camera.core.CameraXConfig;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraAppConfig_ProvideCameraXConfigFactory implements Provider {
    public static CameraXConfig provideCameraXConfig(CameraAppConfig cameraAppConfig) {
        return (CameraXConfig) Preconditions.checkNotNullFromProvides(cameraAppConfig.getCameraXConfig());
    }
}
