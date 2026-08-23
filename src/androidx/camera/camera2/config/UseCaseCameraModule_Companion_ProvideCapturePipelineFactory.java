package androidx.camera.camera2.config;

import androidx.camera.camera2.impl.CapturePipeline;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class UseCaseCameraModule_Companion_ProvideCapturePipelineFactory implements Provider {
    public static CapturePipeline provideCapturePipeline(javax.inject.Provider provider, javax.inject.Provider provider2) {
        return (CapturePipeline) Preconditions.checkNotNullFromProvides(UseCaseCameraModule.Companion.provideCapturePipeline(provider, provider2));
    }
}
