package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageProxy;
import androidx.camera.core.imagecapture.ProcessingNode;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_ProcessingNode_InputPacket extends ProcessingNode.InputPacket {
    private final ImageProxy imageProxy;
    private final ProcessingRequest processingRequest;

    AutoValue_ProcessingNode_InputPacket(ProcessingRequest processingRequest, ImageProxy imageProxy) {
        throw new NullPointerException("Null processingRequest");
    }

    @Override // androidx.camera.core.imagecapture.ProcessingNode.InputPacket
    ProcessingRequest getProcessingRequest() {
        return this.processingRequest;
    }

    @Override // androidx.camera.core.imagecapture.ProcessingNode.InputPacket
    ImageProxy getImageProxy() {
        return this.imageProxy;
    }

    public String toString() {
        return "InputPacket{processingRequest=" + this.processingRequest + ", imageProxy=" + this.imageProxy + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ProcessingNode.InputPacket) {
            ProcessingNode.InputPacket inputPacket = (ProcessingNode.InputPacket) obj;
            if (this.processingRequest.equals(inputPacket.getProcessingRequest()) && this.imageProxy.equals(inputPacket.getImageProxy())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.processingRequest.hashCode() ^ 1000003) * 1000003) ^ this.imageProxy.hashCode();
    }
}
