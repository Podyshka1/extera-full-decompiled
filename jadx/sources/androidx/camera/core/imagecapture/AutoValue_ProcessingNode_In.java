package androidx.camera.core.imagecapture;

import androidx.camera.core.imagecapture.ProcessingNode;
import androidx.camera.core.processing.Edge;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_ProcessingNode_In extends ProcessingNode.AbstractC0265In {
    private final Edge edge;
    private final int inputFormat;
    private final List outputFormats;
    private final Edge postviewEdge;

    AutoValue_ProcessingNode_In(Edge edge, Edge edge2, int i, List list) {
        if (edge == null) {
            throw new NullPointerException("Null edge");
        }
        this.edge = edge;
        if (edge2 == null) {
            throw new NullPointerException("Null postviewEdge");
        }
        this.postviewEdge = edge2;
        this.inputFormat = i;
        if (list == null) {
            throw new NullPointerException("Null outputFormats");
        }
        this.outputFormats = list;
    }

    @Override // androidx.camera.core.imagecapture.ProcessingNode.AbstractC0265In
    Edge getEdge() {
        return this.edge;
    }

    @Override // androidx.camera.core.imagecapture.ProcessingNode.AbstractC0265In
    Edge getPostviewEdge() {
        return this.postviewEdge;
    }

    @Override // androidx.camera.core.imagecapture.ProcessingNode.AbstractC0265In
    int getInputFormat() {
        return this.inputFormat;
    }

    @Override // androidx.camera.core.imagecapture.ProcessingNode.AbstractC0265In
    List getOutputFormats() {
        return this.outputFormats;
    }

    public String toString() {
        return "In{edge=" + this.edge + ", postviewEdge=" + this.postviewEdge + ", inputFormat=" + this.inputFormat + ", outputFormats=" + this.outputFormats + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ProcessingNode.AbstractC0265In) {
            ProcessingNode.AbstractC0265In abstractC0265In = (ProcessingNode.AbstractC0265In) obj;
            if (this.edge.equals(abstractC0265In.getEdge()) && this.postviewEdge.equals(abstractC0265In.getPostviewEdge()) && this.inputFormat == abstractC0265In.getInputFormat() && this.outputFormats.equals(abstractC0265In.getOutputFormats())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.edge.hashCode() ^ 1000003) * 1000003) ^ this.postviewEdge.hashCode()) * 1000003) ^ this.inputFormat) * 1000003) ^ this.outputFormats.hashCode();
    }
}
