package androidx.camera.camera2.pipe;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class GraphState {
    private final String name;

    public GraphState(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
    }

    public static final class GraphStateStarting extends GraphState {
        public static final GraphStateStarting INSTANCE = new GraphStateStarting();

        private GraphStateStarting() {
            super("GRAPH_STARTING");
        }
    }

    public static final class GraphStateStarted extends GraphState {
        public static final GraphStateStarted INSTANCE = new GraphStateStarted();

        private GraphStateStarted() {
            super("GRAPH_STARTED");
        }
    }

    public static final class GraphStateStopping extends GraphState {
        public static final GraphStateStopping INSTANCE = new GraphStateStopping();

        private GraphStateStopping() {
            super("GRAPH_STOPPING");
        }
    }

    public static final class GraphStateStopped extends GraphState {
        public static final GraphStateStopped INSTANCE = new GraphStateStopped();

        private GraphStateStopped() {
            super("GRAPH_STOPPED");
        }
    }

    public static final class GraphStateError extends GraphState {
        private final int cameraError;
        private final boolean willAttemptRetry;

        public /* synthetic */ GraphStateError(int i, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, z);
        }

        /* JADX INFO: renamed from: getCameraError-v7Vf74A, reason: not valid java name */
        public final int m1649getCameraErrorv7Vf74A() {
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
        public String toString() {
            return super.toString() + "(cameraError=" + ((Object) CameraError.m1556toStringimpl(this.cameraError)) + ", willAttemptRetry=" + this.willAttemptRetry + ')';
        }
    }

    public String toString() {
        return this.name;
    }
}
