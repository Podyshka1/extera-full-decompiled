package androidx.camera.camera2.pipe.config;

import android.content.Context;
import androidx.camera.camera2.pipe.CameraBackends;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraPipeModule_Companion_ProvideCameraBackendsFactory implements Provider {
    public static CameraBackends provideCameraBackends(CameraPipe.Config config, javax.inject.Provider provider, Context context, Threads threads, CameraPipeLifetime cameraPipeLifetime) {
        return (CameraBackends) Preconditions.checkNotNullFromProvides(CameraPipeModule.Companion.provideCameraBackends(config, provider, context, threads, cameraPipeLifetime));
    }
}
