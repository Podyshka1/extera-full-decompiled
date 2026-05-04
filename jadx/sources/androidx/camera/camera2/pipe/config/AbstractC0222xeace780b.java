package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraStatusMonitor;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import kotlinx.coroutines.Job;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.config.Camera2ControllerModule_Companion_ProvideCameraStatusMonitorFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0222xeace780b implements Provider {
    public static CameraStatusMonitor provideCameraStatusMonitor(javax.inject.Provider provider, Threads threads, CameraGraph.Config config, Job job) {
        return (CameraStatusMonitor) Preconditions.checkNotNullFromProvides(Camera2ControllerModule.Companion.provideCameraStatusMonitor(provider, threads, config, job));
    }
}
