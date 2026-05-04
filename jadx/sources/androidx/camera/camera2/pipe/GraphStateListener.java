package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.GraphState;

/* JADX INFO: loaded from: classes3.dex */
public interface GraphStateListener {
    void onGraphError(GraphState.GraphStateError graphStateError);

    void onGraphStarted();

    void onGraphStarting();

    void onGraphStopped();

    void onGraphStopping();
}
