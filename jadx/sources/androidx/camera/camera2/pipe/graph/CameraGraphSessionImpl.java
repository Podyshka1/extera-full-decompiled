package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.internal.CameraGraphParametersImpl;
import androidx.camera.camera2.pipe.internal.CameraGraphRequestListenersImpl;
import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraGraphSessionImpl implements CameraGraph.Session {
    private final Controller3A controller3A;
    private final int debugId;
    private final FrameCaptureQueue frameCaptureQueue;
    private final GraphProcessor graphProcessor;
    private final CameraGraphRequestListenersImpl listeners;
    private final CameraGraphParametersImpl parameters;
    private final Token token;

    public CameraGraphSessionImpl(Token token, GraphProcessor graphProcessor, Controller3A controller3A, FrameCaptureQueue frameCaptureQueue, CameraGraphParametersImpl parameters, CameraGraphRequestListenersImpl listeners) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(graphProcessor, "graphProcessor");
        Intrinsics.checkNotNullParameter(controller3A, "controller3A");
        Intrinsics.checkNotNullParameter(frameCaptureQueue, "frameCaptureQueue");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        this.token = token;
        this.graphProcessor = graphProcessor;
        this.controller3A = controller3A;
        this.frameCaptureQueue = frameCaptureQueue;
        this.parameters = parameters;
        this.listeners = listeners;
        this.debugId = CameraGraphSessionImplKt.getCameraGraphSessionIds().incrementAndGet();
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public void submit(List requests) {
        Intrinsics.checkNotNullParameter(requests, "requests");
        if (this.token.getReleased()) {
            throw new IllegalStateException(("Cannot call submit on " + this + " after close.").toString());
        }
        if (requests.isEmpty()) {
            throw new IllegalStateException("Cannot call submit with an empty list of Requests!");
        }
        this.graphProcessor.submit(requests);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public void startRepeating(Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (this.token.getReleased()) {
            throw new IllegalStateException(("Cannot call startRepeating on " + this + " after close.").toString());
        }
        this.graphProcessor.setRepeatingRequest(request);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public void stopRepeating() {
        if (this.token.getReleased()) {
            throw new IllegalStateException(("Cannot call stopRepeating on " + this + " after close.").toString());
        }
        this.graphProcessor.setRepeatingRequest(null);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.parameters.flush();
        List listFetchUpdatedListeners$camera_camera2_pipe = this.listeners.fetchUpdatedListeners$camera_camera2_pipe();
        if (listFetchUpdatedListeners$camera_camera2_pipe != null) {
            this.graphProcessor.updateRequestListeners(listFetchUpdatedListeners$camera_camera2_pipe);
        }
        this.token.release();
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: update3A-ydBZfZg */
    public Deferred mo1540update3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3) {
        if (this.token.getReleased()) {
            throw new IllegalStateException(("Cannot call update3A on " + this + " after close.").toString());
        }
        return Controller3A.m1899update3A169HPGg$default(this.controller3A, aeMode, afMode, awbMode, null, list, list2, list3, 8, null);
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    public Deferred setTorchOn() {
        if (this.token.getReleased()) {
            throw new IllegalStateException(("Cannot call setTorchOn on " + this + " after close.").toString());
        }
        return this.controller3A.setTorchOn();
    }

    @Override // androidx.camera.camera2.pipe.CameraControls3A
    /* JADX INFO: renamed from: setTorchOff-NqN7i0k */
    public Deferred mo1539setTorchOffNqN7i0k(AeMode aeMode) {
        if (this.token.getReleased()) {
            throw new IllegalStateException(("Cannot call setTorchOff on " + this + " after close.").toString());
        }
        return this.controller3A.m1901setTorchOffNqN7i0k(aeMode);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    /* JADX INFO: renamed from: lock3A--tS25XM */
    public Object mo1599lock3AtS25XM(AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode2, Function1 function1, Function1 function12, int i, long j, long j2, Continuation continuation) {
        if (this.token.getReleased()) {
            throw new IllegalStateException(("Cannot call lock3A on " + this + " after close.").toString());
        }
        return this.controller3A.m1900lock3AQz1gx5w(list, list2, list3, lock3ABehavior, lock3ABehavior2, lock3ABehavior3, aeMode2, function1, function12, i, Boxing.boxLong(j), Boxing.boxLong(j2), continuation);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public Object unlock3A(Boolean bool, Boolean bool2, Boolean bool3, Function1 function1, int i, long j, Continuation continuation) {
        if (this.token.getReleased()) {
            throw new IllegalStateException(("Cannot call unlock3A on " + this + " after close.").toString());
        }
        return this.controller3A.unlock3A(bool, bool2, bool3, function1, i, Boxing.boxLong(j));
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public Object lock3AForCapture(boolean z, boolean z2, int i, long j, Continuation continuation) {
        if (this.token.getReleased()) {
            throw new IllegalStateException(("Cannot call lock3AForCapture on " + this + " after close.").toString());
        }
        return this.controller3A.lock3AForCapture(z, z2, i, j);
    }

    @Override // androidx.camera.camera2.pipe.CameraGraph.Session
    public Object unlock3APostCapture(boolean z, Continuation continuation) {
        if (this.token.getReleased()) {
            throw new IllegalStateException(("Cannot call unlock3APostCapture on " + this + " after close.").toString());
        }
        return this.controller3A.unlock3APostCapture(z);
    }

    public String toString() {
        return "CameraGraph.Session-" + this.debugId;
    }
}
