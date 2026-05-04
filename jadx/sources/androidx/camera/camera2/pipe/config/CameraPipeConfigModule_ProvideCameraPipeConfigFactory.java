package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraPipe;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraPipeConfigModule_ProvideCameraPipeConfigFactory implements Provider {
    public static CameraPipe.Config provideCameraPipeConfig(CameraPipeConfigModule cameraPipeConfigModule) {
        return (CameraPipe.Config) Preconditions.checkNotNullFromProvides(cameraPipeConfigModule.provideCameraPipeConfig());
    }
}
