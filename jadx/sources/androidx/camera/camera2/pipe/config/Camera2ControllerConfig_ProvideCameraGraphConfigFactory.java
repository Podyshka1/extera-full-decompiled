package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraph;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Camera2ControllerConfig_ProvideCameraGraphConfigFactory implements Provider {
    public static CameraGraph.Config provideCameraGraphConfig(Camera2ControllerConfig camera2ControllerConfig) {
        return (CameraGraph.Config) Preconditions.checkNotNullFromProvides(camera2ControllerConfig.provideCameraGraphConfig());
    }
}
