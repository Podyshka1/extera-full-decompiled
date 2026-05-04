package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.graph.GraphProcessor;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraGraphRequestListenersImpl {
    private boolean dirty;
    private final GraphProcessor graphProcessor;
    private final CoroutineScope graphScope;
    private final Set listeners;
    private final Object lock;
    private final GraphSessionLock sessionLock;

    public CameraGraphRequestListenersImpl(GraphSessionLock sessionLock, GraphProcessor graphProcessor, CoroutineScope graphScope) {
        Intrinsics.checkNotNullParameter(sessionLock, "sessionLock");
        Intrinsics.checkNotNullParameter(graphProcessor, "graphProcessor");
        Intrinsics.checkNotNullParameter(graphScope, "graphScope");
        this.sessionLock = sessionLock;
        this.graphProcessor = graphProcessor;
        this.graphScope = graphScope;
        this.lock = new Object();
        this.listeners = new LinkedHashSet();
    }

    public final List fetchUpdatedListeners$camera_camera2_pipe() {
        synchronized (this.lock) {
            if (!this.dirty) {
                return null;
            }
            this.dirty = false;
            return CollectionsKt.toList(this.listeners);
        }
    }
}
