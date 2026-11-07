package androidx.camera.core.processing;

import androidx.camera.core.processing.SurfaceProcessorNode;
import androidx.camera.core.processing.util.OutConfig;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_SurfaceProcessorNode_In extends SurfaceProcessorNode.In {
    private final List<OutConfig> outConfigs;
    private final SurfaceEdge surfaceEdge;

    public AutoValue_SurfaceProcessorNode_In(SurfaceEdge surfaceEdge, List<OutConfig> list) {
        if (surfaceEdge == null) {
            f$$ExternalSyntheticBUOutline2.m213m("Null surfaceEdge");
            throw null;
        }
        this.surfaceEdge = surfaceEdge;
        if (list == null) {
            f$$ExternalSyntheticBUOutline2.m213m("Null outConfigs");
            throw null;
        }
        this.outConfigs = list;
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorNode.In
    public SurfaceEdge getSurfaceEdge() {
        return this.surfaceEdge;
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorNode.In
    public List<OutConfig> getOutConfigs() {
        return this.outConfigs;
    }

    public String toString() {
        return "In{surfaceEdge=" + this.surfaceEdge + ", outConfigs=" + this.outConfigs + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SurfaceProcessorNode.In) {
            SurfaceProcessorNode.In in = (SurfaceProcessorNode.In) obj;
            if (this.surfaceEdge.equals(in.getSurfaceEdge()) && this.outConfigs.equals(in.getOutConfigs())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.outConfigs.hashCode() ^ ((this.surfaceEdge.hashCode() ^ 1000003) * 1000003);
    }
}
