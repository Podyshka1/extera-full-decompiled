package androidx.camera.camera2.pipe;

import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b'\u0018\u00002\u00020\u0001:\u0005\u0007\b\t\n\u000bB\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Landroidx/camera/camera2/pipe/GraphState;", _UrlKt.FRAGMENT_ENCODE_SET, "name", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;)V", "toString", "GraphStateStarting", "GraphStateStarted", "GraphStateStopping", "GraphStateStopped", "GraphStateError", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class GraphState {
    private final String name;

    public GraphState(String str) {
        this.name = str;
    }

    @kotlin.Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;", "Landroidx/camera/camera2/pipe/GraphState;", "<init>", "()V", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class GraphStateStarting extends GraphState {
        public static final GraphStateStarting INSTANCE = new GraphStateStarting();

        private GraphStateStarting() {
            super("GRAPH_STARTING");
        }
    }

    @kotlin.Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;", "Landroidx/camera/camera2/pipe/GraphState;", "<init>", "()V", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class GraphStateStarted extends GraphState {
        public static final GraphStateStarted INSTANCE = new GraphStateStarted();

        private GraphStateStarted() {
            super("GRAPH_STARTED");
        }
    }

    @kotlin.Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;", "Landroidx/camera/camera2/pipe/GraphState;", "<init>", "()V", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class GraphStateStopping extends GraphState {
        public static final GraphStateStopping INSTANCE = new GraphStateStopping();

        private GraphStateStopping() {
            super("GRAPH_STOPPING");
        }
    }

    @kotlin.Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;", "Landroidx/camera/camera2/pipe/GraphState;", "<init>", "()V", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class GraphStateStopped extends GraphState {
        public static final GraphStateStopped INSTANCE = new GraphStateStopped();

        private GraphStateStopped() {
            super("GRAPH_STOPPED");
        }
    }

    @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\r\u001a\u00020\u000eH\u0016R\u0013\u0010\u0002\u001a\u00020\u0003¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Landroidx/camera/camera2/pipe/GraphState$GraphStateError;", "Landroidx/camera/camera2/pipe/GraphState;", "cameraError", "Landroidx/camera/camera2/pipe/CameraError;", "willAttemptRetry", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getCameraError-v7Vf74A", "()I", "I", "getWillAttemptRetry", "()Z", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class GraphStateError extends GraphState {
        private final int cameraError;
        private final boolean willAttemptRetry;

        public /* synthetic */ GraphStateError(int i, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, z);
        }

        /* JADX INFO: renamed from: getCameraError-v7Vf74A, reason: not valid java name and from getter */
        public final int getCameraError() {
            return this.cameraError;
        }

        public final boolean getWillAttemptRetry() {
            return this.willAttemptRetry;
        }

        private GraphStateError(int i, boolean z) {
            super("GRAPH_ERROR");
            this.cameraError = i;
            this.willAttemptRetry = z;
        }

        @Override // androidx.camera.camera2.pipe.GraphState
        /* JADX INFO: renamed from: toString */
        public String getName() {
            return super.getName() + "(cameraError=" + ((Object) CameraError.m1162toStringimpl(this.cameraError)) + ", willAttemptRetry=" + this.willAttemptRetry + ')';
        }
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public String getName() {
        return this.name;
    }
}
