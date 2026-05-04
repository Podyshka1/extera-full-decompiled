package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.GraphState;

/* JADX INFO: loaded from: classes3.dex */
public interface GraphListener {
    void onGraphError(GraphState.GraphStateError graphStateError);

    void onGraphModified(GraphRequestProcessor graphRequestProcessor);

    void onGraphStarted(GraphRequestProcessor graphRequestProcessor);

    void onGraphStarting();

    void onGraphStopped(GraphRequestProcessor graphRequestProcessor);

    void onGraphStopping();
}
