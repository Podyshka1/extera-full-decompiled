package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraContext;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.SurfaceTracker;
import androidx.camera.camera2.pipe.graph.GraphProcessorImpl;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.config.InternalCameraGraphModules_Companion_ProvideCameraControllerFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0226x69ca74ff implements Provider {
    public static CameraController provideCameraController(CameraGraphId cameraGraphId, CameraGraph.Config config, CameraBackend cameraBackend, CameraContext cameraContext, GraphProcessorImpl graphProcessorImpl, StreamGraph streamGraph, SurfaceTracker surfaceTracker) {
        return (CameraController) Preconditions.checkNotNullFromProvides(InternalCameraGraphModules.Companion.provideCameraController(cameraGraphId, config, cameraBackend, cameraContext, graphProcessorImpl, streamGraph, surfaceTracker));
    }
}
