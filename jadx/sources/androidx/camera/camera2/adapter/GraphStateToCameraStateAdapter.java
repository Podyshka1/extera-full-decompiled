package androidx.camera.camera2.adapter;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.GraphStateListener;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class GraphStateToCameraStateAdapter implements GraphStateListener {
    public CameraGraph cameraGraph;
    private final CameraStateAdapter cameraStateAdapter;

    public GraphStateToCameraStateAdapter(CameraStateAdapter cameraStateAdapter) {
        Intrinsics.checkNotNullParameter(cameraStateAdapter, "cameraStateAdapter");
        this.cameraStateAdapter = cameraStateAdapter;
    }

    public final CameraGraph getCameraGraph() {
        CameraGraph cameraGraph = this.cameraGraph;
        if (cameraGraph != null) {
            return cameraGraph;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cameraGraph");
        return null;
    }

    public final void setCameraGraph(CameraGraph cameraGraph) {
        Intrinsics.checkNotNullParameter(cameraGraph, "<set-?>");
        this.cameraGraph = cameraGraph;
    }

    @Override // androidx.camera.camera2.pipe.GraphStateListener
    public void onGraphStarting() {
        this.cameraStateAdapter.onGraphStateUpdated(getCameraGraph(), GraphState.GraphStateStarting.INSTANCE);
    }

    @Override // androidx.camera.camera2.pipe.GraphStateListener
    public void onGraphStarted() {
        this.cameraStateAdapter.onGraphStateUpdated(getCameraGraph(), GraphState.GraphStateStarted.INSTANCE);
    }

    @Override // androidx.camera.camera2.pipe.GraphStateListener
    public void onGraphStopping() {
        this.cameraStateAdapter.onGraphStateUpdated(getCameraGraph(), GraphState.GraphStateStopping.INSTANCE);
    }

    @Override // androidx.camera.camera2.pipe.GraphStateListener
    public void onGraphStopped() {
        this.cameraStateAdapter.onGraphStateUpdated(getCameraGraph(), GraphState.GraphStateStopped.INSTANCE);
    }

    @Override // androidx.camera.camera2.pipe.GraphStateListener
    public void onGraphError(GraphState.GraphStateError graphStateError) {
        Intrinsics.checkNotNullParameter(graphStateError, "graphStateError");
        this.cameraStateAdapter.onGraphStateUpdated(getCameraGraph(), graphStateError);
    }
}
