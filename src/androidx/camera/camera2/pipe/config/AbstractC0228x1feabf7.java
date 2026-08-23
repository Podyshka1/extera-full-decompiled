package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.core.Threads;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.config.SharedCameraGraphModules_Companion_ProvideCameraGraphCoroutineScopeFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0228x1feabf7 implements Provider {
    public static CoroutineScope provideCameraGraphCoroutineScope(Threads threads, Job job) {
        return (CoroutineScope) Preconditions.checkNotNullFromProvides(SharedCameraGraphModules.Companion.provideCameraGraphCoroutineScope(threads, job));
    }
}
