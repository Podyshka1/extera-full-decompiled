package androidx.camera.camera2.config;

import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.core.impl.CameraThreadConfig;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraModule_Companion_ProvideUseCaseThreadsFactory implements Provider {
    public static UseCaseThreads provideUseCaseThreads(CameraConfig cameraConfig, CameraThreadConfig cameraThreadConfig) {
        return (UseCaseThreads) Preconditions.checkNotNullFromProvides(CameraModule.INSTANCE.provideUseCaseThreads(cameraConfig, cameraThreadConfig));
    }
}
