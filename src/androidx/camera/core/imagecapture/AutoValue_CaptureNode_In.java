package androidx.camera.core.imagecapture;

import android.util.Size;
import androidx.camera.core.ImageReaderProxyProvider;
import androidx.camera.core.imagecapture.CaptureNode;
import androidx.camera.core.imagecapture.TakePictureManager;
import androidx.camera.core.processing.Edge;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_CaptureNode_In extends CaptureNode.In {
    private final Edge<TakePictureManager.CaptureError> errorEdge;
    private final int inputFormat;
    private final List<Integer> outputFormats;
    private final PostviewSettings postviewSettings;
    private final Edge<ProcessingRequest> requestEdge;
    private final Size size;
    private final boolean virtualCamera;

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    public ImageReaderProxyProvider getImageReaderProxyProvider() {
        return null;
    }

    public AutoValue_CaptureNode_In(Size size, int i, List<Integer> list, boolean z, ImageReaderProxyProvider imageReaderProxyProvider, PostviewSettings postviewSettings, Edge<ProcessingRequest> edge, Edge<TakePictureManager.CaptureError> edge2) {
        if (size == null) {
            f$$ExternalSyntheticBUOutline2.m216m("Null size");
            throw null;
        }
        this.size = size;
        this.inputFormat = i;
        if (list == null) {
            f$$ExternalSyntheticBUOutline2.m216m("Null outputFormats");
            throw null;
        }
        this.outputFormats = list;
        this.virtualCamera = z;
        this.postviewSettings = postviewSettings;
        if (edge == null) {
            f$$ExternalSyntheticBUOutline2.m216m("Null requestEdge");
            throw null;
        }
        this.requestEdge = edge;
        if (edge2 == null) {
            f$$ExternalSyntheticBUOutline2.m216m("Null errorEdge");
            throw null;
        }
        this.errorEdge = edge2;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    public Size getSize() {
        return this.size;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    public int getInputFormat() {
        return this.inputFormat;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    public List<Integer> getOutputFormats() {
        return this.outputFormats;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    public boolean isVirtualCamera() {
        return this.virtualCamera;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    public PostviewSettings getPostviewSettings() {
        return this.postviewSettings;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    public Edge<ProcessingRequest> getRequestEdge() {
        return this.requestEdge;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    public Edge<TakePictureManager.CaptureError> getErrorEdge() {
        return this.errorEdge;
    }

    public String toString() {
        return "In{size=" + this.size + ", inputFormat=" + this.inputFormat + ", outputFormats=" + this.outputFormats + ", virtualCamera=" + this.virtualCamera + ", imageReaderProxyProvider=null, postviewSettings=" + this.postviewSettings + ", requestEdge=" + this.requestEdge + ", errorEdge=" + this.errorEdge + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CaptureNode.In) {
            CaptureNode.In in = (CaptureNode.In) obj;
            if (this.size.equals(in.getSize()) && this.inputFormat == in.getInputFormat() && this.outputFormats.equals(in.getOutputFormats()) && this.virtualCamera == in.isVirtualCamera()) {
                in.getImageReaderProxyProvider();
                in.getPostviewSettings();
                if (this.requestEdge.equals(in.getRequestEdge()) && this.errorEdge.equals(in.getErrorEdge())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        return this.errorEdge.hashCode() ^ ((((((((((((this.size.hashCode() ^ 1000003) * 1000003) ^ this.inputFormat) * 1000003) ^ this.outputFormats.hashCode()) * 1000003) ^ (this.virtualCamera ? 1231 : 1237)) * (-721379959)) ^ 0) * 1000003) ^ this.requestEdge.hashCode()) * 1000003);
    }
}
