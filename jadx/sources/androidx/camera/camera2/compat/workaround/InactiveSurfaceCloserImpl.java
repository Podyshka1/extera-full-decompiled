package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.impl.DeferrableSurface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class InactiveSurfaceCloserImpl implements InactiveSurfaceCloser {
    private final Object lock = new Object();
    private final List configuredOutputs = new ArrayList();

    @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
    /* JADX INFO: renamed from: configure-hB7JTeY */
    public void mo1414configurehB7JTeY(int i, DeferrableSurface deferrableSurface, CameraGraph graph) {
        Intrinsics.checkNotNullParameter(deferrableSurface, "deferrableSurface");
        Intrinsics.checkNotNullParameter(graph, "graph");
        synchronized (this.lock) {
            this.configuredOutputs.add(new ConfiguredOutput(i, deferrableSurface, graph, null));
        }
    }

    @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
    public void onSurfaceInactive(DeferrableSurface deferrableSurface) {
        Intrinsics.checkNotNullParameter(deferrableSurface, "deferrableSurface");
        synchronized (this.lock) {
            closeIfConfigured(this.configuredOutputs, deferrableSurface);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
    public void closeAll() {
        synchronized (this.lock) {
            try {
                Iterator it = this.configuredOutputs.iterator();
                while (it.hasNext()) {
                    ((ConfiguredOutput) it.next()).close();
                }
                this.configuredOutputs.clear();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final class ConfiguredOutput {
        private final DeferrableSurface deferrableSurface;
        private final CameraGraph graph;
        private final int streamId;

        public /* synthetic */ ConfiguredOutput(int i, DeferrableSurface deferrableSurface, CameraGraph cameraGraph, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, deferrableSurface, cameraGraph);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConfiguredOutput)) {
                return false;
            }
            ConfiguredOutput configuredOutput = (ConfiguredOutput) obj;
            return StreamId.m1789equalsimpl0(this.streamId, configuredOutput.streamId) && Intrinsics.areEqual(this.deferrableSurface, configuredOutput.deferrableSurface) && Intrinsics.areEqual(this.graph, configuredOutput.graph);
        }

        public int hashCode() {
            return (((StreamId.m1790hashCodeimpl(this.streamId) * 31) + this.deferrableSurface.hashCode()) * 31) + this.graph.hashCode();
        }

        public String toString() {
            return "ConfiguredOutput(streamId=" + ((Object) StreamId.m1791toStringimpl(this.streamId)) + ", deferrableSurface=" + this.deferrableSurface + ", graph=" + this.graph + ')';
        }

        private ConfiguredOutput(int i, DeferrableSurface deferrableSurface, CameraGraph graph) {
            Intrinsics.checkNotNullParameter(deferrableSurface, "deferrableSurface");
            Intrinsics.checkNotNullParameter(graph, "graph");
            this.streamId = i;
            this.deferrableSurface = deferrableSurface;
            this.graph = graph;
        }

        public final void close() {
            this.graph.mo1601setSurfaceNYG5g8E(this.streamId, null);
            this.deferrableSurface.close();
        }

        public final boolean contains(DeferrableSurface deferrableSurface) {
            Intrinsics.checkNotNullParameter(deferrableSurface, "deferrableSurface");
            return Intrinsics.areEqual(this.deferrableSurface, deferrableSurface);
        }
    }

    private final void closeIfConfigured(List list, DeferrableSurface deferrableSurface) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((ConfiguredOutput) it.next()).contains(deferrableSurface)) {
                deferrableSurface.close();
            }
        }
    }
}
