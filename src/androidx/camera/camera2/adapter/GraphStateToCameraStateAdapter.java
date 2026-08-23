package androidx.camera.camera2.adapter;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.GraphStateListener;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\rH\u0016J\b\u0010\u0010\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;", "Landroidx/camera/camera2/pipe/GraphStateListener;", "cameraStateAdapter", "Landroidx/camera/camera2/adapter/CameraStateAdapter;", "<init>", "(Landroidx/camera/camera2/adapter/CameraStateAdapter;)V", "cameraGraph", "Landroidx/camera/camera2/pipe/CameraGraph;", "getCameraGraph", "()Landroidx/camera/camera2/pipe/CameraGraph;", "setCameraGraph", "(Landroidx/camera/camera2/pipe/CameraGraph;)V", "onGraphStarting", _UrlKt.FRAGMENT_ENCODE_SET, "onGraphStarted", "onGraphStopping", "onGraphStopped", "onGraphError", "graphStateError", "Landroidx/camera/camera2/pipe/GraphState$GraphStateError;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class GraphStateToCameraStateAdapter implements GraphStateListener {
    public CameraGraph cameraGraph;
    private final CameraStateAdapter cameraStateAdapter;

    public GraphStateToCameraStateAdapter(CameraStateAdapter cameraStateAdapter) {
        this.cameraStateAdapter = cameraStateAdapter;
    }

    public final CameraGraph getCameraGraph() {
        CameraGraph cameraGraph = this.cameraGraph;
        if (cameraGraph != null) {
            return cameraGraph;
        }
        return null;
    }

    public final void setCameraGraph(CameraGraph cameraGraph) {
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
        this.cameraStateAdapter.onGraphStateUpdated(getCameraGraph(), graphStateError);
    }
}
