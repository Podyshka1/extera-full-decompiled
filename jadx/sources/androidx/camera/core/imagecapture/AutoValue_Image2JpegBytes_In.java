package androidx.camera.core.imagecapture;

import androidx.camera.core.imagecapture.Image2JpegBytes;
import androidx.camera.core.processing.Packet;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_Image2JpegBytes_In extends Image2JpegBytes.AbstractC0263In {
    private final int jpegQuality;
    private final Packet packet;

    AutoValue_Image2JpegBytes_In(Packet packet, int i) {
        if (packet == null) {
            throw new NullPointerException("Null packet");
        }
        this.packet = packet;
        this.jpegQuality = i;
    }

    @Override // androidx.camera.core.imagecapture.Image2JpegBytes.AbstractC0263In
    Packet getPacket() {
        return this.packet;
    }

    @Override // androidx.camera.core.imagecapture.Image2JpegBytes.AbstractC0263In
    int getJpegQuality() {
        return this.jpegQuality;
    }

    public String toString() {
        return "In{packet=" + this.packet + ", jpegQuality=" + this.jpegQuality + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Image2JpegBytes.AbstractC0263In) {
            Image2JpegBytes.AbstractC0263In abstractC0263In = (Image2JpegBytes.AbstractC0263In) obj;
            if (this.packet.equals(abstractC0263In.getPacket()) && this.jpegQuality == abstractC0263In.getJpegQuality()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.packet.hashCode() ^ 1000003) * 1000003) ^ this.jpegQuality;
    }
}
