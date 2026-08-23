package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraGraph;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Camera2CaptureSessionsModule_ProvideSessionFactoryFactory implements Provider {
    public static CaptureSessionFactory provideSessionFactory(javax.inject.Provider<AndroidMSessionFactory> provider, javax.inject.Provider<AndroidMHighSpeedSessionFactory> provider2, javax.inject.Provider<AndroidNSessionFactory> provider3, javax.inject.Provider<AndroidPSessionFactory> provider4, javax.inject.Provider<AndroidExtensionSessionFactory> provider5, CameraGraph.Config config) {
        return (CaptureSessionFactory) Preconditions.checkNotNullFromProvides(Camera2CaptureSessionsModule.INSTANCE.provideSessionFactory(provider, provider2, provider3, provider4, provider5, config));
    }
}
