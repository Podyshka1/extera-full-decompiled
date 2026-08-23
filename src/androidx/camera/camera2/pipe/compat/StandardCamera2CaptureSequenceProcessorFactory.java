package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CaptureSequenceProcessor;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class StandardCamera2CaptureSequenceProcessorFactory implements Camera2CaptureSequenceProcessorFactory {
    private final CameraGraph.Config graphConfig;
    private final Camera2Quirks quirks;
    private final StreamGraphImpl streamGraph;
    private final StrictMode strictMode;
    private final Threads threads;

    public StandardCamera2CaptureSequenceProcessorFactory(Threads threads, CameraGraph.Config graphConfig, StreamGraphImpl streamGraph, Camera2Quirks quirks, StrictMode strictMode) {
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(graphConfig, "graphConfig");
        Intrinsics.checkNotNullParameter(streamGraph, "streamGraph");
        Intrinsics.checkNotNullParameter(quirks, "quirks");
        Intrinsics.checkNotNullParameter(strictMode, "strictMode");
        this.threads = threads;
        this.graphConfig = graphConfig;
        this.streamGraph = streamGraph;
        this.quirks = quirks;
        this.strictMode = strictMode;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureSequenceProcessorFactory
    public CaptureSequenceProcessor create(CameraCaptureSessionWrapper session, Map streamToSurfaceMap, Map outputToSurfaceMap) {
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(streamToSurfaceMap, "streamToSurfaceMap");
        Intrinsics.checkNotNullParameter(outputToSurfaceMap, "outputToSurfaceMap");
        return new Camera2CaptureSequenceProcessor(session, this.threads, this.graphConfig.m1577getDefaultTemplatefGx8uWA(), streamToSurfaceMap, outputToSurfaceMap, this.streamGraph, this.strictMode, this.quirks.m72x94af7f6a(this.graphConfig), null);
    }
}
