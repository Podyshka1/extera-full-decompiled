package androidx.camera.camera2.config;

import androidx.camera.camera2.adapter.SessionConfigAdapter;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class UseCaseCameraConfig_ProvideSessionConfigAdapterFactory implements Provider {
    public static SessionConfigAdapter provideSessionConfigAdapter(UseCaseCameraConfig useCaseCameraConfig) {
        return (SessionConfigAdapter) Preconditions.checkNotNullFromProvides(useCaseCameraConfig.provideSessionConfigAdapter());
    }
}
