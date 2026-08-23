package androidx.camera.core.processing.concurrent;

import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_DualSurfaceProcessorNode_In extends DualSurfaceProcessorNode.AbstractC0300In {
    private final List outConfigs;
    private final SurfaceEdge primarySurfaceEdge;
    private final SurfaceEdge secondarySurfaceEdge;

    AutoValue_DualSurfaceProcessorNode_In(SurfaceEdge surfaceEdge, SurfaceEdge surfaceEdge2, List list) {
        if (surfaceEdge == null) {
            throw new NullPointerException("Null primarySurfaceEdge");
        }
        this.primarySurfaceEdge = surfaceEdge;
        if (surfaceEdge2 == null) {
            throw new NullPointerException("Null secondarySurfaceEdge");
        }
        this.secondarySurfaceEdge = surfaceEdge2;
        if (list == null) {
            throw new NullPointerException("Null outConfigs");
        }
        this.outConfigs = list;
    }

    @Override // androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.AbstractC0300In
    public SurfaceEdge getPrimarySurfaceEdge() {
        return this.primarySurfaceEdge;
    }

    @Override // androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.AbstractC0300In
    public SurfaceEdge getSecondarySurfaceEdge() {
        return this.secondarySurfaceEdge;
    }

    @Override // androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.AbstractC0300In
    public List getOutConfigs() {
        return this.outConfigs;
    }

    public String toString() {
        return "In{primarySurfaceEdge=" + this.primarySurfaceEdge + ", secondarySurfaceEdge=" + this.secondarySurfaceEdge + ", outConfigs=" + this.outConfigs + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DualSurfaceProcessorNode.AbstractC0300In) {
            DualSurfaceProcessorNode.AbstractC0300In abstractC0300In = (DualSurfaceProcessorNode.AbstractC0300In) obj;
            if (this.primarySurfaceEdge.equals(abstractC0300In.getPrimarySurfaceEdge()) && this.secondarySurfaceEdge.equals(abstractC0300In.getSecondarySurfaceEdge()) && this.outConfigs.equals(abstractC0300In.getOutConfigs())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.primarySurfaceEdge.hashCode() ^ 1000003) * 1000003) ^ this.secondarySurfaceEdge.hashCode()) * 1000003) ^ this.outConfigs.hashCode();
    }
}
