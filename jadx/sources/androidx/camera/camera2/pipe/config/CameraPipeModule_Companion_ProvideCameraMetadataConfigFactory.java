package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraPipe;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraPipeModule_Companion_ProvideCameraMetadataConfigFactory implements Provider {
    public static CameraPipe.CameraMetadataConfig provideCameraMetadataConfig(CameraPipe.Config config) {
        return (CameraPipe.CameraMetadataConfig) Preconditions.checkNotNullFromProvides(CameraPipeModule.Companion.provideCameraMetadataConfig(config));
    }
}
