package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.graph.GraphProcessor;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraGraphParametersImpl {
    private boolean dirty;
    private final GraphProcessor graphProcessor;
    private final CoroutineScope graphScope;
    private final Object lock;
    private final Map parameters;
    private final GraphSessionLock sessionLock;

    public CameraGraphParametersImpl(GraphSessionLock sessionLock, GraphProcessor graphProcessor, CoroutineScope graphScope) {
        Intrinsics.checkNotNullParameter(sessionLock, "sessionLock");
        Intrinsics.checkNotNullParameter(graphProcessor, "graphProcessor");
        Intrinsics.checkNotNullParameter(graphScope, "graphScope");
        this.sessionLock = sessionLock;
        this.graphProcessor = graphProcessor;
        this.graphScope = graphScope;
        this.lock = new Object();
        this.parameters = new LinkedHashMap();
    }

    public final void flush() {
        synchronized (this.lock) {
            if (this.dirty) {
                this.dirty = false;
                this.graphProcessor.updateGraphParameters(new HashMap(this.parameters));
            }
        }
    }
}
