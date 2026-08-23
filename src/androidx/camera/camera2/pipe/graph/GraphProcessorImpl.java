package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.GraphStateListener;
import androidx.camera.camera2.pipe.InputRequest;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.compat.Camera2Quirks;
import androidx.camera.camera2.pipe.compat.CameraPipeKeys;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002BF\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0013\b\u0001\u0010\u000e\u001a\r\u0012\t\u0012\u00070\f¢\u0006\u0002\b\r0\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u001a\u0010\u0015J\u0019\u0010\u001b\u001a\u00020\u00132\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u001b\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001c\u0010\u0019J\u0017\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010$\u001a\u00020#2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\u000bH\u0016¢\u0006\u0004\b$\u0010%J#\u0010)\u001a\u00020#2\u0012\u0010(\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010'0&H\u0016¢\u0006\u0004\b)\u0010*J#\u0010+\u001a\u00020\u00132\u0012\u0010(\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010'0&H\u0016¢\u0006\u0004\b+\u0010,J#\u0010-\u001a\u00020\u00132\u0012\u0010(\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010'0&H\u0016¢\u0006\u0004\b-\u0010,J\u001d\u0010/\u001a\u00020\u00132\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u0013H\u0016¢\u0006\u0004\b1\u0010\u0015J\u000f\u00103\u001a\u000202H\u0016¢\u0006\u0004\b3\u00104R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u00105R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u00106R\u0014\u00108\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u001a\u0010;\u001a\b\u0012\u0004\u0012\u00020:0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u001a\u0010?\u001a\b\u0012\u0004\u0012\u00020>0=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R(\u0010F\u001a\u0004\u0018\u00010!2\b\u0010A\u001a\u0004\u0018\u00010!8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bB\u0010C\"\u0004\bD\u0010E¨\u0006G"}, d2 = {"Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;", "Landroidx/camera/camera2/pipe/graph/GraphProcessor;", "Landroidx/camera/camera2/pipe/graph/GraphListener;", "Landroidx/camera/camera2/pipe/core/Threads;", "threads", "Landroidx/camera/camera2/pipe/CameraGraphId;", "cameraGraphId", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "cameraGraphConfig", "Landroidx/camera/camera2/pipe/graph/Listener3A;", "graphListener3A", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/Request$Listener;", "Lkotlin/jvm/JvmSuppressWildcards;", "graphListeners", "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;", "camera2Quirks", "<init>", "(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/Listener3A;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;)V", _UrlKt.FRAGMENT_ENCODE_SET, "onGraphStarting", "()V", "Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;", "requestProcessor", "onGraphStarted", "(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V", "onGraphStopping", "onGraphStopped", "onGraphModified", "Landroidx/camera/camera2/pipe/GraphState$GraphStateError;", "graphStateError", "onGraphError", "(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V", "Landroidx/camera/camera2/pipe/Request;", "requests", _UrlKt.FRAGMENT_ENCODE_SET, "submit", "(Ljava/util/List;)Z", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "parameters", "trigger", "(Ljava/util/Map;)Z", "updateGraphParameters", "(Ljava/util/Map;)V", "update3AParameters", "listeners", "updateRequestListeners", "(Ljava/util/List;)V", "close", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroidx/camera/camera2/pipe/CameraGraphId;", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "Landroidx/camera/camera2/pipe/graph/GraphLoop;", "graphLoop", "Landroidx/camera/camera2/pipe/graph/GraphLoop;", "Landroidx/camera/camera2/pipe/GraphStateListener;", "externalStateGraphListeners", "Ljava/util/List;", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Landroidx/camera/camera2/pipe/GraphState;", "_graphState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "value", "getRepeatingRequest", "()Landroidx/camera/camera2/pipe/Request;", "setRepeatingRequest", "(Landroidx/camera/camera2/pipe/Request;)V", "repeatingRequest", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGraphProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphProcessor.kt\nandroidx/camera/camera2/pipe/graph/GraphProcessorImpl\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,275:1\n59#2,2:276\n50#2,2:278\n50#2,2:280\n50#2,2:282\n50#2,2:284\n50#2,2:286\n50#2,2:288\n230#3,5:290\n295#4,2:295\n*S KotlinDebug\n*F\n+ 1 GraphProcessor.kt\nandroidx/camera/camera2/pipe/graph/GraphProcessorImpl\n*L\n133#1:276,2\n174#1:278,2\n182#1:280,2\n191#1:282,2\n200#1:284,2\n209#1:286,2\n214#1:288,2\n215#1:290,5\n230#1:295,2\n*E\n"})
public final class GraphProcessorImpl implements GraphProcessor, GraphListener {
    private final MutableStateFlow<GraphState> _graphState;
    private final CameraGraph.Config cameraGraphConfig;
    private final CameraGraphId cameraGraphId;
    private final List<GraphStateListener> externalStateGraphListeners;
    private final GraphLoop graphLoop;

    public GraphProcessorImpl(Threads threads, CameraGraphId cameraGraphId, CameraGraph.Config config, Listener3A listener3A, List<Request.Listener> list, Camera2Quirks camera2Quirks) {
        this.cameraGraphId = cameraGraphId;
        this.cameraGraphConfig = config;
        this.externalStateGraphListeners = config.getGraphStateListeners();
        Map<?, Object> defaultParameters = config.getDefaultParameters();
        Map<?, Object> requiredParameters = config.getRequiredParameters();
        CameraPipeKeys cameraPipeKeys = CameraPipeKeys.INSTANCE;
        Object obj = defaultParameters.get(cameraPipeKeys.getIgnore3ARequiredParameters());
        Boolean bool = Boolean.TRUE;
        if ((Intrinsics.areEqual(obj, bool) || Intrinsics.areEqual(requiredParameters.get(cameraPipeKeys.getIgnore3ARequiredParameters()), bool)) && Log.INSTANCE.getINFO_LOGGABLE()) {
            android.util.Log.i("CXCP", cameraPipeKeys.getIgnore3ARequiredParameters() + " is set to true, ignoring GraphState3A parameters.");
        }
        int repeatingRequestFrameCountForCapture$camera_camera2_pipe = camera2Quirks.getRepeatingRequestFrameCountForCapture$camera_camera2_pipe(config.getFlags());
        CaptureLimiter captureLimiter = repeatingRequestFrameCountForCapture$camera_camera2_pipe != 0 ? new CaptureLimiter(repeatingRequestFrameCountForCapture$camera_camera2_pipe) : null;
        GraphLoop graphLoop = new GraphLoop(cameraGraphId, defaultParameters, requiredParameters, CollectionsKt.plus((Collection) list, (Iterable) CollectionsKt.listOfNotNull(captureLimiter)), CollectionsKt.listOfNotNull(listener3A, captureLimiter), threads.getCameraPipeScope(), threads.getLightweightDispatcher());
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
        Iterator<GraphStateListener> it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            it.next().onGraphStarting();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphStarted(GraphRequestProcessor requestProcessor) {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " onGraphStarted");
        }
        this._graphState.setValue(GraphState.GraphStateStarted.INSTANCE);
        this.graphLoop.setRequestProcessor(requestProcessor);
        Iterator<GraphStateListener> it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            it.next().onGraphStarted();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphStopping() {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " onGraphStopping");
        }
        this._graphState.setValue(GraphState.GraphStateStopping.INSTANCE);
        this.graphLoop.setRequestProcessor(null);
        Iterator<GraphStateListener> it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            it.next().onGraphStopping();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphStopped(GraphRequestProcessor requestProcessor) {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " onGraphStopped");
        }
        this._graphState.setValue(GraphState.GraphStateStopped.INSTANCE);
        this.graphLoop.setRequestProcessor(null);
        Iterator<GraphStateListener> it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            it.next().onGraphStopped();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphModified(GraphRequestProcessor requestProcessor) {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " onGraphModified");
        }
        this.graphLoop.invalidate();
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphListener
    public void onGraphError(GraphState.GraphStateError graphStateError) {
        GraphState value;
        GraphState graphState;
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", this + " onGraphError(" + graphStateError + ')');
        }
        MutableStateFlow<GraphState> mutableStateFlow = this._graphState;
        do {
            value = mutableStateFlow.getValue();
            graphState = value;
        } while (!mutableStateFlow.compareAndSet(value, ((graphState instanceof GraphState.GraphStateStopping) || (graphState instanceof GraphState.GraphStateStopped)) ? GraphState.GraphStateStopped.INSTANCE : graphStateError));
        Iterator<GraphStateListener> it = this.externalStateGraphListeners.iterator();
        while (it.hasNext()) {
            it.next().onGraphError(graphStateError);
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public boolean submit(List<Request> requests) {
        Object next;
        Iterator<T> it = requests.iterator();
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
        StringBuilder sb = new StringBuilder("Cannot submit ");
        sb.append(request);
        InputRequest inputRequest = request.getInputRequest();
        sb.append(" with input request ");
        sb.append(inputRequest);
        sb.append(" to ");
        sb.append(this);
        sb.append(" because CameraGraph was not configured to support reprocessing");
        throw new IllegalStateException(sb.toString().toString());
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public boolean trigger(Map<?, ? extends Object> parameters) {
        return this.graphLoop.trigger(parameters);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void updateGraphParameters(Map<?, ? extends Object> parameters) {
        this.graphLoop.setGraphParameters(parameters);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void update3AParameters(Map<?, ? extends Object> parameters) {
        this.graphLoop.setGraph3AParameters(parameters);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphProcessor
    public void updateRequestListeners(List<? extends Request.Listener> listeners) {
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
