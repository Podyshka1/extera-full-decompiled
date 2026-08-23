package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraph;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraGraphConfigModule_ProvideCameraGraphConfigFactory implements Provider {
    public static CameraGraph.Config provideCameraGraphConfig(CameraGraphConfigModule cameraGraphConfigModule) {
        return (CameraGraph.Config) Preconditions.checkNotNullFromProvides(cameraGraphConfigModule.provideCameraGraphConfig());
    }
}
