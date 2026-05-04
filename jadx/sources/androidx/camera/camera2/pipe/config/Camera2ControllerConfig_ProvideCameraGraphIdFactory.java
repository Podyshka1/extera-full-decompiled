package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraphId;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Camera2ControllerConfig_ProvideCameraGraphIdFactory implements Provider {
    public static CameraGraphId provideCameraGraphId(Camera2ControllerConfig camera2ControllerConfig) {
        return (CameraGraphId) Preconditions.checkNotNullFromProvides(camera2ControllerConfig.provideCameraGraphId());
    }
}
