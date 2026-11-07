package androidx.camera.camera2.config;

import androidx.camera.camera2.adapter.CameraStateAdapter;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class UseCaseCameraConfig_ProvideUseCaseGraphContextFactory implements Provider {
    public static UseCaseGraphContext provideUseCaseGraphContext(UseCaseCameraConfig useCaseCameraConfig, CameraStateAdapter cameraStateAdapter) {
        return (UseCaseGraphContext) Preconditions.checkNotNullFromProvides(useCaseCameraConfig.provideUseCaseGraphContext(cameraStateAdapter));
    }
}
