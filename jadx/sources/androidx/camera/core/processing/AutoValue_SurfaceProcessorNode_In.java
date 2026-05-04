package androidx.camera.core.processing;

import androidx.camera.core.processing.SurfaceProcessorNode;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_SurfaceProcessorNode_In extends SurfaceProcessorNode.AbstractC0298In {
    private final List outConfigs;
    private final SurfaceEdge surfaceEdge;

    AutoValue_SurfaceProcessorNode_In(SurfaceEdge surfaceEdge, List list) {
        if (surfaceEdge == null) {
            throw new NullPointerException("Null surfaceEdge");
        }
        this.surfaceEdge = surfaceEdge;
        if (list == null) {
            throw new NullPointerException("Null outConfigs");
        }
        this.outConfigs = list;
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorNode.AbstractC0298In
    public SurfaceEdge getSurfaceEdge() {
        return this.surfaceEdge;
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorNode.AbstractC0298In
    public List getOutConfigs() {
        return this.outConfigs;
    }

    public String toString() {
        return "In{surfaceEdge=" + this.surfaceEdge + ", outConfigs=" + this.outConfigs + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SurfaceProcessorNode.AbstractC0298In) {
            SurfaceProcessorNode.AbstractC0298In abstractC0298In = (SurfaceProcessorNode.AbstractC0298In) obj;
            if (this.surfaceEdge.equals(abstractC0298In.getSurfaceEdge()) && this.outConfigs.equals(abstractC0298In.getOutConfigs())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.surfaceEdge.hashCode() ^ 1000003) * 1000003) ^ this.outConfigs.hashCode();
    }
}
