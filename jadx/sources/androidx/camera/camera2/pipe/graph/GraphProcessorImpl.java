package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.GraphStateListener;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.compat.Camera2Quirks;
import androidx.camera.camera2.pipe.compat.CameraPipeKeys;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes3.dex */
public final class GraphProcessorImpl implements GraphProcessor, GraphListener {
    private final MutableStateFlow _graphState;
    private final CameraGraph.Config cameraGraphConfig;
    private final CameraGraphId cameraGraphId;
    private final List externalStateGraphListeners;
    private final GraphLoop graphLoop;

    public GraphProcessorImpl(Threads threads, CameraGraphId cameraGraphId, CameraGraph.Config cameraGraphConfig, Listener3A graphListener3A, List graphListeners, Camera2Quirks camera2Quirks) {
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(cameraGraphId, "cameraGraphId");
        Intrinsics.checkNotNullParameter(cameraGraphConfig, "cameraGraphConfig");
        Intrinsics.checkNotNullParameter(graphListener3A, "graphListener3A");
        Intrinsics.checkNotNullParameter(graphListeners, "graphListeners");
        Intrinsics.checkNotNullParameter(camera2Quirks, "camera2Quirks");
        this.cameraGraphId = cameraGraphId;
        this.cameraGraphConfig = cameraGraphConfig;
        this.externalStateGraphListeners = cameraGraphConfig.getGraphStateListeners();
        Map defaultParameters = cameraGraphConfig.getDefaultParameters();
        Map requiredParameters = cameraGraphConfig.getRequiredParameters();
        CameraPipeKeys cameraPipeKeys = CameraPipeKeys.INSTANCE;
        Object obj = defaultParameters.get(cameraPipeKeys.getIgnore3ARequiredParameters());
        Boolean bool = Boolean.TRUE;
        if ((Intrinsics.areEqual(obj, bool) || Intrinsics.areEqual(requiredParameters.get(cameraPipeKeys.getIgnore3ARequiredParameters()), bool)) && Log.INSTANCE.getINFO_LOGGABLE()) {
            android.util.Log.i("CXCP", cameraPipeKeys.getIgnore3ARequiredParameters() + " is set to true, ignoring GraphState3A parameters.");
        }
        int repeatingRequestFrameCountForCapture$camera_camera2_pipe = camera2Quirks.getRepeatingRequestFrameCountForCapture$camera_camera2_pipe(cameraGraphConfig.getFlags());
        CaptureLimiter captureLimiter = repeatingRequestFrameCountForCapture$camera_camera2_pipe != 0 ? new CaptureLimiter(repeatingRequestFrameCountForCapture$camera_camera2_pipe) : null;
        GraphLoop graphLoop = new GraphLoop(cameraGraphId, defaultParameters, requiredParameters, CollectionsKt.plus((Collection) graphListeners, (Iterable) CollectionsKt.listOfNotNull(captureLimiter)), CollectionsKt.listOfNotNull(graphListener3A, captureLimiter), threads.getCameraPipeScope(), threads.getLightweightDispatcher());
        this.graphLoop = graphLoop;
        if (captureLimiter != null) {
            captureLimiter.setGraphLoop(graphLoop);
        }
        this._graphState = StateFlowKt.MutableStateFlow(GraphState.GraphStateStopped.INSTANCE);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public Request getRepeatingRequest() {
        return this.graphLoop.getRepeatingRequest();
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void setRepeatingRequest(Request request) {
        this.graphLoop.setRepeatingRequest(request);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphStarting() {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " onGraphStarting");
        }
        this._graphState.setValue(GraphState.GraphStateStarting.INSTANCE);
        Iterator it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            ((GraphStateListener) it.next()).onGraphStarting();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphStarted(GraphRequestProcessor requestProcessor) {
        Intrinsics.checkNotNullParameter(requestProcessor, "requestProcessor");
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " onGraphStarted");
        }
        this._graphState.setValue(GraphState.GraphStateStarted.INSTANCE);
        this.graphLoop.setRequestProcessor(requestProcessor);
        Iterator it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            ((GraphStateListener) it.next()).onGraphStarted();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphStopping() {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " onGraphStopping");
        }
        this._graphState.setValue(GraphState.GraphStateStopping.INSTANCE);
        this.graphLoop.setRequestProcessor(null);
        Iterator it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            ((GraphStateListener) it.next()).onGraphStopping();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphStopped(GraphRequestProcessor graphRequestProcessor) {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " onGraphStopped");
        }
        this._graphState.setValue(GraphState.GraphStateStopped.INSTANCE);
        this.graphLoop.setRequestProcessor(null);
        Iterator it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            ((GraphStateListener) it.next()).onGraphStopped();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphModified(GraphRequestProcessor requestProcessor) {
        Intrinsics.checkNotNullParameter(requestProcessor, "requestProcessor");
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " onGraphModified");
        }
        this.graphLoop.invalidate();
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphError(GraphState.GraphStateError graphStateError) {
        Object value;
        GraphState graphState;
        Intrinsics.checkNotNullParameter(graphStateError, "graphStateError");
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " onGraphError(" + graphStateError + ')');
        }
        MutableStateFlow mutableStateFlow = this._graphState;
        do {
            value = mutableStateFlow.getValue();
            graphState = (GraphState) value;
        } while (!mutableStateFlow.compareAndSet(value, ((graphState instanceof GraphState.GraphStateStopping) || (graphState instanceof GraphState.GraphStateStopped)) ? GraphState.GraphStateStopped.INSTANCE : graphStateError));
        Iterator it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            ((GraphStateListener) it.next()).onGraphError(graphStateError);
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public boolean submit(List requests) {
        Object next;
        Intrinsics.checkNotNullParameter(requests, "requests");
        Iterator it = requests.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((Request) next).getInputRequest() != null) {
                break;
            }
        }
        Request request = (Request) next;
        if (request == null || this.cameraGraphConfig.getInput() != null) {
            return this.graphLoop.submit(requests);
        }
        throw new IllegalStateException(("Cannot submit " + request + " with input request " + request.getInputRequest() + " to " + this + " because CameraGraph was not configured to support reprocessing").toString());
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public boolean trigger(Map parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        return this.graphLoop.trigger(parameters);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void updateGraphParameters(Map parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        this.graphLoop.setGraphParameters(parameters);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void update3AParameters(Map parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        this.graphLoop.setGraph3AParameters(parameters);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void updateRequestListeners(List listeners) {
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        this.graphLoop.setRequestListeners(listeners);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void close() {
        this.graphLoop.close();
    }

    public String toString() {
        return "GraphProcessor(cameraGraph: " + this.cameraGraphId + ')';
    }
}
