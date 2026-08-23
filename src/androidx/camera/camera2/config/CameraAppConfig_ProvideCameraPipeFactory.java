package androidx.camera.camera2.config;

import androidx.camera.camera2.pipe.CameraPipe;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraAppConfig_ProvideCameraPipeFactory implements Provider {
    public static CameraPipe provideCameraPipe(CameraAppConfig cameraAppConfig) {
        return (CameraPipe) Preconditions.checkNotNullFromProvides(cameraAppConfig.provideCameraPipe());
    }
}
