package androidx.camera.camera2.config;

import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraPipe;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraAppModule_Companion_ProvideCameraDevicesFactory implements Provider {
    public static CameraDevices provideCameraDevices(CameraPipe cameraPipe) {
        return (CameraDevices) Preconditions.checkNotNullFromProvides(CameraAppModule.INSTANCE.provideCameraDevices(cameraPipe));
    }
}
