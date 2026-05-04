package androidx.camera.camera2.pipe.config;

import android.content.Context;
import android.hardware.camera2.CameraManager;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraPipeModule_Companion_ProvideCameraManagerFactory implements Provider {
    public static CameraManager provideCameraManager(Context context) {
        return (CameraManager) Preconditions.checkNotNullFromProvides(CameraPipeModule.Companion.provideCameraManager(context));
    }
}
