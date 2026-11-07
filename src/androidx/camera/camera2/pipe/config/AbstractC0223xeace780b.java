package androidx.camera.camera2.pipe.config;

import android.hardware.camera2.CameraManager;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraStatusMonitor;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import kotlinx.coroutines.Job;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.config.Camera2ControllerModule_Companion_ProvideCameraStatusMonitorFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0223xeace780b implements Provider {
    public static CameraStatusMonitor provideCameraStatusMonitor(javax.inject.Provider<CameraManager> provider, Threads threads, CameraGraph.Config config, Job job) {
        return (CameraStatusMonitor) Preconditions.checkNotNullFromProvides(Camera2ControllerModule.INSTANCE.provideCameraStatusMonitor(provider, threads, config, job));
    }
}
