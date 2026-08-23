package androidx.camera.camera2.config;

import android.content.Context;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraAppConfig_ProvideContextFactory implements Provider {
    public static Context provideContext(CameraAppConfig cameraAppConfig) {
        return (Context) Preconditions.checkNotNullFromProvides(cameraAppConfig.getContext());
    }
}
