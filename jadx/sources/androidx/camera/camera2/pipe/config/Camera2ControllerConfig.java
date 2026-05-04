package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.SurfaceTracker;
import androidx.camera.camera2.pipe.compat.Camera2CameraController;
import androidx.camera.camera2.pipe.graph.GraphListener;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2ControllerConfig {
    private final CameraBackend cameraBackend;
    private final CameraGraph.Config graphConfig;
    private final CameraGraphId graphId;
    private final GraphListener graphListener;
    private final Camera2CameraController.ShutdownListener shutdownListener;
    private final StreamGraph streamGraph;
    private final SurfaceTracker surfaceTracker;

    public Camera2ControllerConfig(CameraBackend cameraBackend, CameraGraphId graphId, CameraGraph.Config graphConfig, GraphListener graphListener, StreamGraph streamGraph, SurfaceTracker surfaceTracker, Camera2CameraController.ShutdownListener shutdownListener) {
        Intrinsics.checkNotNullParameter(cameraBackend, "cameraBackend");
        Intrinsics.checkNotNullParameter(graphId, "graphId");
        Intrinsics.checkNotNullParameter(graphConfig, "graphConfig");
        Intrinsics.checkNotNullParameter(graphListener, "graphListener");
        Intrinsics.checkNotNullParameter(streamGraph, "streamGraph");
        Intrinsics.checkNotNullParameter(surfaceTracker, "surfaceTracker");
        Intrinsics.checkNotNullParameter(shutdownListener, "shutdownListener");
        this.cameraBackend = cameraBackend;
        this.graphId = graphId;
        this.graphConfig = graphConfig;
        this.graphListener = graphListener;
        this.streamGraph = streamGraph;
        this.surfaceTracker = surfaceTracker;
        this.shutdownListener = shutdownListener;
    }

    public final CameraGraph.Config provideCameraGraphConfig() {
        return this.graphConfig;
    }

    public final CameraGraphId provideCameraGraphId() {
        return this.graphId;
    }

    public final StreamGraphImpl provideStreamGraph() {
        StreamGraph streamGraph = this.streamGraph;
        Intrinsics.checkNotNull(streamGraph, "null cannot be cast to non-null type androidx.camera.camera2.pipe.graph.StreamGraphImpl");
        return (StreamGraphImpl) streamGraph;
    }

    public final GraphListener provideGraphListener() {
        return this.graphListener;
    }

    public final SurfaceTracker provideSurfaceGraph() {
        return this.surfaceTracker;
    }

    public final Camera2CameraController.ShutdownListener provideShutdownListener() {
        return this.shutdownListener;
    }
}
