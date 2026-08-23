package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.Request;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface GraphCommand {

    public static final class Invalidate implements GraphCommand {
        public static final Invalidate INSTANCE = new Invalidate();

        private Invalidate() {
        }
    }

    public static final class Shutdown implements GraphCommand {
        public static final Shutdown INSTANCE = new Shutdown();

        private Shutdown() {
        }
    }

    public static final class Stop implements GraphCommand {
        public static final Stop INSTANCE = new Stop();

        private Stop() {
        }
    }

    public static final class Abort implements GraphCommand {
        public static final Abort INSTANCE = new Abort();

        private Abort() {
        }
    }

    public static final class RequestProcessor implements GraphCommand {

        /* JADX INFO: renamed from: new, reason: not valid java name */
        private final GraphRequestProcessor f2279new;
        private final GraphRequestProcessor old;

        public RequestProcessor(GraphRequestProcessor graphRequestProcessor, GraphRequestProcessor graphRequestProcessor2) {
            this.old = graphRequestProcessor;
            this.f2279new = graphRequestProcessor2;
        }

        public final GraphRequestProcessor getNew() {
            return this.f2279new;
        }

        public final GraphRequestProcessor getOld() {
            return this.old;
        }
    }

    public static final class Parameters implements GraphCommand {
        private final Map graph3AParameters;
        private final Map graphParameters;

        public Parameters(Map graphParameters, Map graph3AParameters) {
            Intrinsics.checkNotNullParameter(graphParameters, "graphParameters");
            Intrinsics.checkNotNullParameter(graph3AParameters, "graph3AParameters");
            this.graphParameters = graphParameters;
            this.graph3AParameters = graph3AParameters;
        }

        public final Map getGraph3AParameters() {
            return this.graph3AParameters;
        }

        public final Map getGraphParameters() {
            return this.graphParameters;
        }
    }

    public static final class Listeners implements GraphCommand {
        private final List listeners;

        public Listeners(List listeners) {
            Intrinsics.checkNotNullParameter(listeners, "listeners");
            this.listeners = listeners;
        }

        public final List getListeners() {
            return this.listeners;
        }
    }

    public static final class Repeat implements GraphCommand {
        private final Request request;

        public Repeat(Request request) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.request = request;
        }

        public final Request getRequest() {
            return this.request;
        }
    }

    public static final class Capture implements GraphCommand {
        private final List requests;

        public Capture(List requests) {
            Intrinsics.checkNotNullParameter(requests, "requests");
            this.requests = requests;
        }

        public final List getRequests() {
            return this.requests;
        }
    }

    public static final class Trigger implements GraphCommand {
        private final Map triggerParameters;

        public Trigger(Map triggerParameters) {
            Intrinsics.checkNotNullParameter(triggerParameters, "triggerParameters");
            this.triggerParameters = triggerParameters;
        }

        public final Map getTriggerParameters() {
            return this.triggerParameters;
        }
    }
}
