package androidx.camera.camera2.config;

import androidx.camera.camera2.impl.CameraInteropStateCallbackRepository;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraAppConfig_ProvideCamera2InteropCallbacksFactory implements Provider {
    public static CameraInteropStateCallbackRepository provideCamera2InteropCallbacks(CameraAppConfig cameraAppConfig) {
        return (CameraInteropStateCallbackRepository) Preconditions.checkNotNullFromProvides(cameraAppConfig.provideCamera2InteropCallbacks());
    }
}
