package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraphId;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraGraphConfigModule_ProvideCameraGraphIdFactory implements Provider {
    public static CameraGraphId provideCameraGraphId(CameraGraphConfigModule cameraGraphConfigModule) {
        return (CameraGraphId) Preconditions.checkNotNullFromProvides(cameraGraphConfigModule.provideCameraGraphId());
    }
}
