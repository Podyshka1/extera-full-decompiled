package androidx.camera.camera2.config;

import androidx.camera.core.impl.CameraThreadConfig;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraAppConfig_ProvideCameraThreadConfigFactory implements Provider {
    public static CameraThreadConfig provideCameraThreadConfig(CameraAppConfig cameraAppConfig) {
        return (CameraThreadConfig) Preconditions.checkNotNullFromProvides(cameraAppConfig.getCameraThreadConfig());
    }
}
