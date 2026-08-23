package androidx.camera.core.processing.concurrent;

import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_DualSurfaceProcessorNode_In extends DualSurfaceProcessorNode.In {
    private final List<DualOutConfig> outConfigs;
    private final SurfaceEdge primarySurfaceEdge;
    private final SurfaceEdge secondarySurfaceEdge;

    public AutoValue_DualSurfaceProcessorNode_In(SurfaceEdge surfaceEdge, SurfaceEdge surfaceEdge2, List<DualOutConfig> list) {
        if (surfaceEdge == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null primarySurfaceEdge");
            throw null;
        }
        this.primarySurfaceEdge = surfaceEdge;
        if (surfaceEdge2 == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null secondarySurfaceEdge");
            throw null;
        }
        this.secondarySurfaceEdge = surfaceEdge2;
        if (list == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null outConfigs");
            throw null;
        }
        this.outConfigs = list;
    }

    @Override // androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.In
    public SurfaceEdge getPrimarySurfaceEdge() {
        return this.primarySurfaceEdge;
    }

    @Override // androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.In
    public SurfaceEdge getSecondarySurfaceEdge() {
        return this.secondarySurfaceEdge;
    }

    @Override // androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.In
    public List<DualOutConfig> getOutConfigs() {
        return this.outConfigs;
    }

    public String toString() {
        return "In{primarySurfaceEdge=" + this.primarySurfaceEdge + ", secondarySurfaceEdge=" + this.secondarySurfaceEdge + ", outConfigs=" + this.outConfigs + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DualSurfaceProcessorNode.In) {
            DualSurfaceProcessorNode.In in = (DualSurfaceProcessorNode.In) obj;
            if (this.primarySurfaceEdge.equals(in.getPrimarySurfaceEdge()) && this.secondarySurfaceEdge.equals(in.getSecondarySurfaceEdge()) && this.outConfigs.equals(in.getOutConfigs())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.outConfigs.hashCode() ^ ((((this.primarySurfaceEdge.hashCode() ^ 1000003) * 1000003) ^ this.secondarySurfaceEdge.hashCode()) * 1000003);
    }
}
