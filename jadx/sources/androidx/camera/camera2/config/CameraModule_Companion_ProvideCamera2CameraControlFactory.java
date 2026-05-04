package androidx.camera.camera2.config;

import androidx.camera.camera2.compat.Camera2CameraControlCompat;
import androidx.camera.camera2.impl.ComboRequestListener;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.interop.Camera2CameraControl;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraModule_Companion_ProvideCamera2CameraControlFactory implements Provider {
    public static Camera2CameraControl provideCamera2CameraControl(Camera2CameraControlCompat camera2CameraControlCompat, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener) {
        return (Camera2CameraControl) Preconditions.checkNotNullFromProvides(CameraModule.Companion.provideCamera2CameraControl(camera2CameraControlCompat, useCaseThreads, comboRequestListener));
    }
}
