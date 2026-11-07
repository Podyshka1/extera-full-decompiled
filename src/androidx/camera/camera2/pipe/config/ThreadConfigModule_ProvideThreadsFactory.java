package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ThreadConfigModule_ProvideThreadsFactory implements Provider {
    public static Threads provideThreads(ThreadConfigModule threadConfigModule, CameraPipeLifetime cameraPipeLifetime, Job job) {
        return (Threads) Preconditions.checkNotNullFromProvides(threadConfigModule.provideThreads(cameraPipeLifetime, job));
    }
}
